import * as THREE from 'three';
// Leader endpoints are projected from actual mesh bounds every frame.
export class ModelLabels {
 constructor(viewer){
  this.viewer=viewer;this.items=[];this.root=document.createElement('div');this.root.className='model-labels';this.root.setAttribute('aria-label','3D structure names');
  this.lines=document.createElementNS('http://www.w3.org/2000/svg','svg');this.lines.setAttribute('aria-hidden','true');this.root.append(this.lines);viewer.host.append(this.root);
 }
 rebuild(){
  this.items.forEach(i=>i.button.remove());this.lines.replaceChildren();this.items=[];
  const v=this.viewer;
  for(const [id,name] of v.parts){
   const meshes=[];v.group.traverse(o=>{if(o.isMesh&&o.userData.part===id)meshes.push(o);});if(!meshes.length)continue;
   const button=document.createElement('button');button.className='model-part-label';button.textContent=name;button.setAttribute('aria-label',`Explore ${name}`);button.setAttribute('aria-pressed','false');button.onclick=()=>v.onPick(id);this.root.append(button);
   const line=document.createElementNS('http://www.w3.org/2000/svg','path');this.lines.append(line);this.items.push({id,meshes,button,line});
  }
 }
 update(){
  const v=this.viewer,w=v.host.clientWidth,h=v.host.clientHeight;if(!w||!h)return;
  const box=new THREE.Box3(),point=new THREE.Vector3();v.group?.updateMatrixWorld(true);
  const visible=[];
  for(const item of this.items){
   const mesh=item.meshes.find(m=>m.visible);if(!mesh){item.button.hidden=true;item.line.style.display='none';continue;}
   box.setFromObject(mesh);box.getCenter(point).project(v.camera);
   const shown=point.z>=-1&&point.z<=1&&Math.abs(point.x)<1.2&&Math.abs(point.y)<1.2;
   item.button.hidden=!shown;item.line.style.display=shown?'':'none';if(!shown)continue;
   visible.push({...item,x:(point.x+1)*w/2,y:(1-point.y)*h/2});
  }
  visible.sort((a,b)=>a.x-b.x);const half=Math.ceil(visible.length/2);
  for(const [side,items] of [visible.slice(0,half),visible.slice(half)].entries()){
   items.sort((a,b)=>a.y-b.y);items.forEach((item,i)=>{
    const y=60+(i+.5)*Math.max(40,h-120)/items.length;const width=Math.min(145,w*.27),left=side===0?8:w-width-8;
    Object.assign(item.button.style,{left:`${left}px`,top:`${y}px`,width:`${width}px`});
    const start=side===0?left+width:left;item.line.setAttribute('d',`M ${start} ${y} L ${side===0?start+12:start-12} ${y} L ${item.x} ${item.y}`);
   });
  }
 }
 select(id){this.items.forEach(i=>{i.button.setAttribute('aria-pressed',String(i.id===id));i.line.classList.toggle('selected',i.id===id);});}
}
