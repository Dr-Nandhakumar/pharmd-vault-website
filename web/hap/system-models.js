import * as T from 'three';
export const SYSTEM_PARTS={
body:[['brain','Brain','Integrates sensory information and coordinates neural activity.'],['spine','Vertebral column','Supports the trunk and encloses the vertebral canal around the spinal cord.'],['ribs','Thoracic cage','Protects thoracic organs and participates in breathing mechanics.'],['limbs','Limb bones','Form the appendicular skeleton with the girdles and act as levers.'],['heart','Heart','Pumps blood through pulmonary and systemic circuits.'],['lungs','Lungs','Exchange oxygen and carbon dioxide between air and blood.'],['kidneys','Kidneys','Regulate fluid, electrolytes and acid-base balance while excreting wastes.']],
tissue:[['epithelium','Epithelial cells','Closely packed cells form a surface barrier and may absorb or secrete.'],['basement','Basement membrane','A specialised extracellular layer supports and anchors the epithelium.'],['matrix','Connective matrix','Fibres and ground substance provide support beneath this epithelial example.'],['nuclei','Nuclei','Contain most cellular genetic information.']],
skin:[['epidermis','Epidermis','An avascular keratinised epithelial barrier.'],['dermis','Dermis','Connective tissue containing blood vessels, nerves and skin appendages.'],['fat','Hypodermis','Fat-rich subcutaneous tissue beneath the skin; provides insulation and cushioning.'],['hair','Hair follicle','An epidermal structure extending into deeper tissue, producing hair.'],['gland','Sweat gland','Produces sweat that reaches the surface through a duct.'],['nerve','Cutaneous nerve','Carries sensory information from the skin.'],['vessels','Dermal vessels','Supply deeper skin and influence heat exchange.']],
bone:[['cortex','Compact bone','Dense cortical bone provides mechanical strength.'],['trabeculae','Spongy bone','A network of trabeculae distributes loads around marrow spaces.'],['marrow','Marrow cavity','Contains marrow; red marrow supports blood-cell formation at appropriate sites.'],['cartilage','Articular cartilage','Smooth hyaline cartilage reduces friction at a bone end.']],
joint:[['bone','Bone ends','Provide the articulating surfaces of the joint.'],['cartilage','Articular cartilage','Low-friction, load-distributing tissue covering articular surfaces.'],['synovium','Synovial lining','Produces components of synovial fluid and can become inflamed.'],['cavity','Joint cavity','A potential space containing a small amount of lubricating synovial fluid.'],['ligament','Capsule and ligaments','Connective tissues stabilise the joint and guide movement.']],
muscle:[['actin','Thin filaments','Actin-containing filaments anchored at the Z discs.'],['myosin','Thick filaments','Myosin heads bind actin and use ATP-dependent cycling to generate force.'],['zdisc','Z discs','Boundaries of a sarcomere; move closer together during shortening.'],['regulatory','Regulatory proteins','Troponin and tropomyosin regulate access to actin-binding sites.']],
blood:[['rbc','Red blood cells','Flexible biconcave cells containing haemoglobin for respiratory gas transport.'],['wbc','White blood cell','A representative nucleated immune cell involved in defence.'],['platelet','Platelets','Small cell fragments central to primary haemostasis.'],['plasma','Plasma','The fluid component carrying proteins, nutrients, hormones and wastes.'],['fibrin','Fibrin','Protein strands that stabilise a haemostatic clot.']],
lymph:[['vessel','Lymphatic vessel','Returns excess interstitial fluid and proteins toward venous circulation.'],['node','Lymph node','Filters lymph and supports antigen presentation and lymphocyte responses.'],['valve','Valve','Helps prevent backward flow in collecting lymphatic vessels.'],['immune','Lymphocytes','Immune cells that participate in adaptive responses.']],
nerve:[['soma','Cell body','Contains the nucleus and much of the neuronal biosynthetic machinery.'],['dendrites','Dendrites','Branched extensions receiving many neuronal inputs.'],['axon','Axon','Conducts electrical signals away from the cell body.'],['myelin','Myelin sheath','Insulates the axon and supports rapid saltatory conduction.'],['node','Nodes of Ranvier','Gaps where action potentials are regenerated along a myelinated axon.'],['terminal','Axon terminals','Release neurotransmitter onto target cells at chemical synapses.']],
eye:[['sclera','Sclera','Tough outer coat that helps maintain the shape of the globe.'],['cornea','Cornea','Transparent anterior surface providing much of the refractive power.'],['iris','Iris and pupil','The iris adjusts pupil size to regulate incoming light.'],['lens','Lens','Transparent structure that changes shape for accommodation.'],['retina','Retina','Neural tissue containing rods, cones and processing circuits.'],['optic','Optic nerve','Carries retinal output toward central visual pathways.']],
ear:[['pinna','Pinna and canal','Collect and direct sound toward the tympanic membrane.'],['eardrum','Tympanic membrane','Vibrates in response to sound pressure waves.'],['ossicles','Ossicles','Malleus, incus and stapes transmit vibration to the oval window.'],['cochlea','Cochlea','Contains sensory structures that convert vibration into neural activity.'],['vestibular','Vestibular apparatus','Semicircular canals and otolith organs contribute to sensing motion and orientation.'],['tube','Eustachian tube','Connects the middle ear to the nasopharynx for ventilation and drainage.']],
nose:[['cavity','Nasal cavity','Conducts and conditions inspired air.'],['conchae','Nasal conchae','Increase surface area and influence airflow.'],['olfactory','Olfactory epithelium','Contains sensory neurons detecting odorant molecules.'],['bulb','Olfactory bulb','Receives primary olfactory inputs and relays processed information.']],
tongue:[['muscle','Tongue muscle','Intrinsic and extrinsic muscles change tongue shape and position.'],['papillae','Papillae','Surface structures; several types contain taste buds.'],['taste','Taste receptor regions','Receptor cells detect dissolved tastants; taste qualities are not restricted to exclusive zones.'],['nerve','Taste pathways','Cranial nerves VII, IX and X carry taste information from different regions.']],
heart:[['ra','Right atrium','Receives systemic venous return.'],['rv','Right ventricle','Pumps relatively deoxygenated blood into the pulmonary artery.'],['la','Left atrium','Receives oxygenated blood from pulmonary veins.'],['lv','Left ventricle','Pumps blood into the aorta and systemic circulation.'],['valves','Valves','Open and close according to pressure differences to support one-way flow.'],['aorta','Aorta','The main artery supplying systemic circulation.'],['pulmonary','Pulmonary vessels','Carry blood between the heart and lungs.'],['conduction','Conduction system','Coordinates the timing of atrial and ventricular depolarisation.']],
vessel:[['outer','Outer connective tissue','The tunica externa supports and anchors a vessel.'],['muscle','Smooth-muscle layer','The tunica media adjusts vessel diameter and contributes to wall strength.'],['endothelium','Endothelium','The inner cellular lining regulates exchange, tone and interactions with blood.'],['lumen','Lumen','The space through which blood flows.'],['plaque','Plaque region','A focal arterial-wall lesion can narrow the lumen or develop thrombotic complications.']]
};
export const CAPTIONS={body:'Body systems · spatial overview',tissue:'Epithelial tissue · section',skin:'Skin · layered section',bone:'Long bone · cutaway',joint:'Synovial joint · section',muscle:'Sarcomere · sliding filaments',blood:'Blood · cellular view',lymph:'Lymphatic vessel and node',nerve:'Neuron · signal pathway',eye:'Eye · sectional view',ear:'Ear · hearing and balance',nose:'Nasal cavity · smell pathway',tongue:'Tongue · taste receptors',heart:'Heart · four-chamber schematic',vessel:'Artery · wall and lumen',cell:'Human cell · cutaway',membrane:'Membrane · molecular section'};
export function buildSystem(v,type){
 const g=v.group;v.dynamic=[];v.conditionObjects=[];
 const mat=(c,opacity=1)=>new T.MeshPhysicalMaterial({color:c,roughness:.48,metalness:0,clearcoat:.12,sheen:.18,transparent:opacity<1,opacity,depthWrite:opacity>=1,side:T.DoubleSide});
 const add=(geo,p,s,c,part,opacity=1)=>{const m=new T.Mesh(geo,mat(c,opacity));m.position.set(...p);m.scale.set(...s);m.userData.part=part;g.add(m);return m;};
 const ball=(p,s,c,part,opacity=1)=>add(new T.SphereGeometry(1,32,24),p,s,c,part,opacity);
 const box=(p,s,c,part,opacity=1)=>add(new T.BoxGeometry(1,1,1),p,s,c,part,opacity);
 const tube=(pts,r,c,part,opacity=1)=>{const cr=new T.CatmullRomCurve3(pts.map(p=>new T.Vector3(...p)));return add(new T.TubeGeometry(cr,Math.max(30,pts.length*8),r,10,false),[0,0,0],[1,1,1],c,part,opacity);};
 const ring=(p,r,thick,c,part,rotation=[0,0,0])=>{const m=add(new T.TorusGeometry(r,thick,12,60),p,[1,1,1],c,part);m.rotation.set(...rotation);return m;};
 const mod=(o,kind)=>{o.userData.kind=kind;v.dynamic.push(o);return o;};
 const condition=(o)=>{o.visible=false;o.userData.conditionOnly=true;v.conditionObjects.push(o);return o;};
 if(type==='body'){
  ball([0,2.65,0],[.52,.68,.44],0xd9abac,'brain');tube([[0,2.1,0],[0,1,0],[0,-.7,0]],.10,0xe4d6b7,'spine');
  for(let i=0;i<8;i++){const y=1.7-i*.23;for(const s of[-1,1])tube([[0,y,-.1],[s*.65,y+.06,-.02],[s*.9,y-.08,.28],[s*.48,y-.22,.50],[0,y-.20,.5]],.045,0xe6dac1,'ribs');}
  for(const s of[-1,1]){tube([[s*.65,1.6,0],[s*1.15,.6,0],[s*1.4,-.5,.1]],.1,0xe8dbc2,'limbs');tube([[s*.34,-.55,0],[s*.45,-1.65,.02],[s*.46,-2.95,.1]],.14,0xe8dbc2,'limbs');ball([s*.34,-.65,0],[.32,.38,.25],0xdacfb7,'limbs');ball([s*.42,1,.10],[.40,.7,.32],0x619ca7,'lungs',.72);ball([s*.4,-.35,.22],[.21,.32,.17],0xae6160,'kidneys');}
  mod(ball([.16,.65,.43],[.26,.36,.25],0xcb6c67,'heart'),'heart');
 }else if(type==='tissue'){
  box([0,-.45,0],[4.5,.7,2.1],0xbf919b,'matrix');box([0,0,0],[4.5,.12,2.1],0x80c4b4,'basement');
  for(let x=-3;x<=3;x++)for(let z=-1;z<=1;z++){const m=mod(box([x*.58,.55,z*.6],[.55,1,.56],0xddb6a8,'epithelium'),'epithelial');ball([x*.58,.4,z*.6+.1],[.14,.2,.13],0x745779,'nuclei');}
  for(let i=0;i<7;i++)tube([[-2,-.3+i*.05,-.7+i*.2],[0,-.45,-.5+i*.16],[2,-.3,.5]],.02,0xf0d7c0,'matrix');
  for(let i=-2;i<=2;i++)condition(box([i*.6,1.23,.2],[.54,.40,.54],0xe7baad,'epithelium'));
 }else if(type==='skin'){
  box([0,-.75,0],[4.2,.75,2.5],0xdcb964,'fat');box([0,.05,0],[4.2,.8,2.5],0xc47e78,'dermis');mod(box([0,.6,0],[4.2,.28,2.5],0xe1aa95,'epidermis'),'epidermis');
  for(let x=-2;x<=2;x++)for(let z=-1;z<=1;z++)ball([x*.75,-.85,z*.8],[.37,.3,.33],0xe8c777,'fat');
  for(const x of[-1.2,.7]){tube([[x,-.1,.1],[x-.08,.6,.1],[x-.15,1.4,.1]],.06,0x4f3539,'hair');ball([x,-.18,.1],[.16,.36,.17],0x845159,'hair');}
  const pts=[];for(let i=0;i<150;i++){const a=i*.2;pts.push([1.1+.2*Math.cos(a),-.05+.16*Math.sin(a),.5+i*.001]);}tube(pts,.055,0xd8aece,'gland');tube([[1.1,.1,.5],[1.1,.7,.5]],.045,0xd8aece,'gland');
  tube([[-2,-.1,1.28],[-1,-.25,1.3],[0,-.1,1.29],[2,-.2,1.29]],.05,0xc84d5b,'vessels');tube([[-1.5,-.35,1.31],[0,-.4,1.3],[1.7,-.35,1.3]],.045,0x478fbc,'vessels');tube([[-.4,-.5,1.32],[-.2,.0,1.32],[-.5,.45,1.32]],.035,0xf7d375,'nerve');
  condition(box([-.65,.85,.5],[1.2,.22,.8],0xc55361,'epidermis'));
 }else if(type==='bone'){
  const shell=add(new T.CylinderGeometry(.47,.50,3.6,48,1,true,0,Math.PI*1.55),[0,0,0],[1,1,1],0xe6d9bc,'cortex');shell.rotation.y=.72;
  ball([0,0,0],[.27,1.7,.27],0xc78b67,'marrow');for(const y of[-1.95,1.95]){ball([0,y,0],[.9,.65,.68],0xe6d9bc,'cortex',.38);ball([0,y+(y>0?.43:-.43),0],[.83,.18,.65],0x9ec6c1,'cartilage');for(let i=0;i<16;i++){const x=Math.sin(i*2.4)*.63,z=Math.cos(i*1.6)*.47;const o=tube([[x,y-.3,z],[x*.5,y+.05,z*.5],[-x,y+.35,-z]],.045,0xeed8a9,'trabeculae');mod(o,'trabecula');}}
 }else if(type==='joint'){
  for(const s of[-1,1]){ball([0,s*1.25,0],[.65,1.1,.55],0xe6d7b9,'bone');ball([0,s*.45,0],[1,.35,.68],0x92bdc0,'cartilage');}
  ball([0,0,0],[.85,.16,.6],0x7dccc4,'cavity',.35);ring([0,0,0],1.02,.07,0xb68699,'synovium',[Math.PI/2,0,0]);for(const x of[-1.05,1.05])tube([[x,.9,0],[x*.9,0,.15],[x,-.9,0]],.13,0xc6bbaa,'ligament');
  for(let i=0;i<10;i++){const o=condition(add(new T.ConeGeometry(.035,.4,4),[Math.sin(i*3)*.5,.05,Math.cos(i*2)*.5],[1,1,1],0xf3e9b4,'cavity'));o.rotation.z=i;}
 }else if(type==='muscle'){
  for(const sign of[-1,1]){mod(box([sign*2.4,0,0],[.10,2,.45],0x709eb0,'zdisc'),'zdisc');for(const row of[-.62,0,.62]){const pts=[];for(let i=0;i<70;i++)pts.push([sign*(2.32-i*.026),row+.055*Math.sin(i*.6),.1+.055*Math.cos(i*.6)]);mod(tube(pts,.06,0x7dbab0,'actin'),'actin');for(let i=0;i<5;i++)ball([sign*(2.1-i*.31),row+.09,.15],[.09,.09,.07],0xeac079,'regulatory');}}
  for(const y of[-.31,.31]){tube([[-1.15,y,-.12],[1.15,y,-.12]],.11,0xc67587,'myosin');for(let i=-5;i<=5;i++){const x=i*.2;mod(tube([[x,y,-.05],[x+.07,y+(y<0?-.22:.22),.06]],.045,0xe7a1aa,'myosin'),'head');}}
 }else if(type==='blood'){
  ball([0,0,-.8],[3.2,1.6,.25],0x7b9daa,'plasma',.18);
  for(let i=0;i<17;i++){const x=Math.sin(i*2.3)*2.4,y=Math.cos(i*2.8)*1.15,z=Math.sin(i)*.65;const profile=[];for(let j=0;j<=32;j++){const a=Math.PI*j/32,r=Math.sin(a);profile.push(new T.Vector2(.34*r,.34*Math.cos(a)*(.08+.5*r*r)));}const m=mod(add(new T.LatheGeometry(profile,36),[x,y,z],[1,1,1],0xb94f64,'rbc'),'rbc');m.rotation.set(.7+i*.22,.2,0);}
  if(v.topic.id===64){const shape=new T.Shape();shape.moveTo(-.4,-.14);shape.quadraticCurveTo(-.2,.46,.43,.14);shape.quadraticCurveTo(-.02,.09,-.4,-.14);for(let i=0;i<17;i++){const o=condition(add(new T.ExtrudeGeometry(shape,{depth:.06,bevelEnabled:true,bevelThickness:.035,bevelSize:.035,bevelSegments:3,steps:1}),[Math.sin(i*2.3)*2.4,Math.cos(i*2.8)*1.15,Math.sin(i)*.65],[1,1,1],0xb84559,'rbc'));o.rotation.z=i*.43;}}
  ball([1.3,.65,.8],[.48,.48,.43],0xbac7dc,'wbc');for(let i=0;i<3;i++)ball([1.14+i*.15,.7,.99],[.15,.2,.1],0x69568f,'wbc');for(let i=0;i<8;i++)ball([-1.8+i*.48,-1.25+Math.sin(i)*.2,.7],[.08,.07,.05],0xe9c685,'platelet');
  for(let i=0;i<7;i++){const o=tube([[-.8+i*.2,-1.2,1],[-.5,-.6+i*.12,1.1],[.8,-1+i*.1,1]],.018,0xe9dda5,'fibrin');mod(o,'fibrin');}
 }else if(type==='lymph'){
  ball([0,0,0],[1.2,1.65,.6],0x729f83,'node');ball([0,0,.48],[.91,1.34,.23],0xb8c7a1,'node');
  for(const x of[-.7,0,.7])tube([[x*1.8,2.5,0],[x,1.3,0],[x*.5,.5,.1]],.11,0x73b8a4,'vessel');tube([[.2,-.7,.1],[.2,-1.6,0],[.7,-2.5,0]],.16,0x73b8a4,'vessel');for(const y of[-1.7,-2.1]){tube([[.2,y,0],[.45,y+.14,0],[.52,y,0]],.05,0xe0c9a1,'valve');}for(let i=0;i<25;i++)ball([Math.sin(i*2.5)*.7,Math.cos(i*1.7)*1.1,.68],[.09,.09,.07],0x6683a7,'immune');
 }else if(type==='nerve'){
  ball([-1.95,0,0],[.6,.55,.4],0xc295ab,'soma');ball([-1.95,0,.34],[.2,.2,.12],0x775379,'soma');for(let i=0;i<7;i++){const a=i*.7+1;const p=[-1.95+Math.cos(a)*1.1,Math.sin(a)*1.05,.02];tube([[-1.95,0,0],[p[0],p[1],0],[p[0]-.35,p[1]+.22,0]],.065,0xb78ca1,'dendrites');}
  tube([[-1.4,0,0],[0,0,0],[2.7,0,0]],.075,0xe5bf79,'axon');for(let i=0;i<6;i++){const x=-1+i*.58;const m=add(new T.CylinderGeometry(.20,.20,.42,24),[x,0,0],[1,1,1],0xb7b9a0,'myelin');m.rotation.z=Math.PI/2;ring([x+.25,0,0],.09,.03,0xf1d8a2,'node',[0,Math.PI/2,0]);}for(const y of[-.7,0,.7]){tube([[2.2,0,0],[2.8,y*.6,0],[3.2,y,0]],.065,0xc79dba,'terminal');ball([3.2,y,0],[.16,.13,.13],0xd4adbf,'terminal');}
 }else if(type==='eye'){
  add(new T.SphereGeometry(1.7,56,40,Math.PI,Math.PI),[0,0,0],[1,1,1],0xd3dedc,'sclera');add(new T.SphereGeometry(1.6,48,32,Math.PI,Math.PI),[0,0,0],[1,1,1],0xc1817c,'retina');ball([0,0,1.45],[.85,.85,.38],0xb5e5df,'cornea',.24);ring([0,0,1.28],.52,.20,0x548d91,'iris');ball([0,0,1.01],[.50,.50,.20],0xa8dbde,'lens',.65);tube([[0,0,-1.6],[.2,-.05,-2.6],[.5,-.15,-3]],.18,0xd9c998,'optic');
  condition(ball([0,0,-.8],[.09,.09,.09],0xffc469,'retina'));
 }else if(type==='ear'){
  ring([-2.8,0,0],.75,.16,0xd7a58b,'pinna');tube([[-2.5,-.1,0],[-1.8,-.25,0],[-1,-.1,0]],.23,0xcf9a87,'pinna');ball([-.8,-.1,0],[.10,.43,.36],0xc3aec1,'eardrum');for(let i=0;i<3;i++)tube([[-.65+i*.3,0,0],[-.50+i*.3,.22,0],[-.35+i*.3,.08,0]],.08,0xe5d5af,'ossicles');const spiral=[];for(let i=0;i<160;i++){const a=i*.11,r=.85-i*.004;spiral.push([1.55+r*Math.cos(a),-.45+r*Math.sin(a),i*.002]);}tube(spiral,.12,0xd5a5c5,'cochlea');for(const rot of[[0,0,0],[0,Math.PI/2,0],[Math.PI/2,0,0]])ring([1.5,1,0],.67,.07,0x88bbae,'vestibular',rot);tube([[-.5,-.35,0],[-.1,-1.1,0],[.6,-1.8,0]],.14,0xcba892,'tube');
 }else if(type==='nose'){
  ball([0,0,-.3],[1.7,2,.5],0xc5a18d,'cavity',.40);for(let i=0;i<3;i++)tube([[-1.2,.8-i*.65,.2],[.1,.95-i*.65,.5],[1,.5-i*.65,.2]],.15,0xd59487,'conchae');box([0,1.4,.1],[1.8,.15,.5],0xcab1cc,'olfactory');ball([0,1.85,.1],[.65,.24,.3],0xc69fbc,'bulb');for(let i=0;i<9;i++)tube([[-.7+i*.17,1.3,.25],[-.6+i*.14,1.7,.2],[0,1.8,.1]],.025,0xe4d192,'olfactory');
 }else if(type==='tongue'){
  ball([0,0,0],[1.35,.5,2],0xc07e88,'muscle');for(let i=0;i<60;i++){const x=Math.sin(i*2.4),z=Math.cos(i*1.7)*1.65;if(x*x/1.8+z*z/4<.95)ball([x,.45,z],[.07,.08,.07],0xe0a6a8,i%4?'papillae':'taste');}for(const x of[-.6,0,.6])tube([[x,-.3,-1.7],[x,-.6,-2.3],[0,-.9,-2.8]],.045,0xe2c983,'nerve');v.group.rotation.x=.7;
 }else if(type==='heart'){
  mod(ball([-.8,.75,0],[.72,.65,.50],0x609db5,'ra'),'chamber');mod(ball([.7,.75,0],[.65,.62,.5],0xcf7b7e,'la'),'chamber');mod(ball([-.65,-.55,0],[.72,1.1,.60],0x6299af,'rv'),'chamber');mod(ball([.66,-.60,.1],[.81,1.2,.65],0xca6b75,'lv'),'chamber');
  tube([[.55,-.05,0],[.35,1.65,-.1],[1,2,.0],[1.7,1.6,-.2]],.23,0xcb6b71,'aorta');tube([[-.6,-.1,.2],[-.25,1.3,.4],[-1.2,1.8,.2],[-1.7,1.5,0]],.20,0x72a8c1,'pulmonary');tube([[-.9,2,-.1],[-.9,.9,-.1]],.22,0x6b9bb5,'ra');tube([[1.8,1,0],[.7,.8,0]],.16,0xcf8084,'pulmonary');
  for(const x of[-.75,.68]){const o=ring([x,.10,.46],.35,.07,0xeadfc6,'valves');o.scale.y=.55;}tube([[-1,.95,.5],[-.15,.15,.63],[0,-.85,.62],[.8,-1.3,.50]],.035,0xf1d688,'conduction');ball([-1,.95,.5],[.12,.12,.08],0xf5dc9e,'conduction');condition(ball([1.05,-.7,.6],[.35,.5,.1],0x684852,'lv'));
 }else if(type==='vessel'){
  for(const[r,c,part]of[[.93,0xba8283,'outer'],[.80,0xc96372,'muscle'],[.66,0xe8aab0,'endothelium']]){const m=add(new T.CylinderGeometry(r,r,4.6,56,1,true,0,Math.PI*1.5),[0,0,0],[1,1,1],c,part);m.rotation.z=Math.PI/2;m.rotation.x=.5;}
  ball([0,0,0],[2.28,.52,.52],0x76b1c7,'lumen',.08);for(let i=0;i<6;i++){const o=ring([-1.8+i*.7,.1,.1],.15,.07,0xc74358,'lumen',[0,Math.PI/2,0]);mod(o,'flow');}condition(ball([.3,-.49,.05],[1.10,.30,.52],0xe6bd65,'plaque'));
 }
 v._meshHelpers={};
}
export function applyDisease(v){
 const id=v.topic.id,on=v.condition;v.group.scale.setScalar(v.modelScale);v.group.traverse(o=>{if(!o.isMesh)return;if(o.userData.baseColor)o.material.color.copy(o.userData.baseColor);if(o.userData.baseScale)o.scale.copy(o.userData.baseScale);if(o.userData.conditionOnly)o.visible=on;const p=o.userData.part;
  if(!on){if(o.userData.kind==='trabecula')o.visible=true;if(o.userData.kind==='fibrin')o.visible=true;if(p==='rbc'&&!o.userData.conditionOnly)o.visible=true;if(o.userData.originalRotation)o.rotation.copy(o.userData.originalRotation);if(o.userData.originalOpacity!==undefined)o.material.opacity=o.userData.originalOpacity;return;}
  if(id===19&&p==='membrane')o.material.color.set(0xbd777c);
  if(id===20&&p==='mitochondria')o.material.color.set(0x8d8e85);
  if(id===21&&['er','ribosomes'].includes(p))o.material.color.set(0x939b9a);
  if(id===26&&p==='epithelium')o.scale.y*=.45;
  if(id===27&&['epithelium','nuclei'].includes(p)){if(!o.userData.originalRotation)o.userData.originalRotation=o.rotation.clone();o.rotation.z=Math.sin(o.id)*.3;o.scale.y*=1+Math.sin(o.id)*.25;}
  if(id===29&&p==='lysosomes'){o.material.color.set(0xe6c46d);o.scale.multiplyScalar(1.5);}
  if(id===30&&p==='nucleus')o.scale.multiplyScalar(.67);
  if([33,34].includes(id)&&p==='epidermis'){o.material.color.set(0xcb5966);if(id===33)o.scale.y*=1.6;}
  if(id===35&&p==='nerve')o.material.color.set(0xe66b53);
  if(id===44&&p==='synovium'){o.scale.multiplyScalar(1.13);o.material.color.set(0xe35460);}
  if(id===45&&o.userData.kind==='trabecula')o.visible=o.id%3===0;
  if(id===61&&p==='rbc'){o.scale.multiplyScalar(.78);o.material.color.set(0xda939b);}
  if([62,63].includes(id)&&p==='rbc')o.scale.multiplyScalar(1.3);
  if(id===64&&p==='rbc'&&!o.userData.conditionOnly)o.visible=false;
  if(id===66&&p==='rbc'){o.scale.multiplyScalar(o.id%2?.87:1.12);o.material.color.set(o.id%2?0xd3979b:0xb04b60);}
  if(id===65&&p==='rbc'){o.scale.multiplyScalar(.75);o.material.color.set(0xd58893);}
  if(id===67&&o.userData.kind==='fibrin')o.visible=o.id%3===0;
  if(id===77&&p==='optic')o.material.color.set(0xbb4f5f);
  if(id===78&&p==='lens'){o.material.color.set(0xdacba3);o.material.opacity=.98;}
  if(id===79&&p==='sclera')o.scale.z*=1.25;
  if(id===80&&p==='pinna')o.material.color.set(0xcc5965);
  if(id===81&&['eardrum','ossicles'].includes(p))o.material.color.set(0xd4945b);
  if(id===82&&p==='vestibular')o.material.color.set(0xe3b657);
  if(id===83&&p==='olfactory')o.material.color.set(0x6c7781);
  if(id===96&&['muscle','endothelium'].includes(p)){o.scale.x*=.78;o.scale.z*=.78;}
  if(id===98&&['lv','rv'].includes(p))o.scale.multiplyScalar(1.15);
  if([18,19,20,21,22,30].includes(id)&&p==='nucleus')o.material.color.set(0x7e687e);
 });
 if(on&&[23,24,28].includes(id))v.group.scale.multiplyScalar(id===23?.72:1.2);
 if(!on&&id===78)v.group.traverse(o=>{if(o.userData.part==='lens')o.material.opacity=.65;});
 // Conditional overlays are shown only for the intended comparison.
 v.conditionObjects?.forEach(o=>{o.visible=on&&([25,33,34,46,64,79,99,100,101,102].includes(id));});
}
export function animateSystem(v,time){
 const m=v.topic?.model;const t=v.playing?time:0;const beat=v.condition&&v.topic.id===97?Math.sin(t*7+Math.sin(t*2)*2):Math.sin(t*5.8);for(const o of v.dynamic||[]){const base=o.userData.baseScale,home=o.userData.home;if(!base||!home)continue;const k=o.userData.kind;
  if(['chamber','heart'].includes(k)){let scale=1+(v.playing?beat*(v.condition&&v.topic.id===98?.014:.045):0);if(v.condition&&v.topic.id===98)scale*=1.15;o.scale.copy(base).multiplyScalar(scale);}
  if(m==='muscle'&&['actin','zdisc'].includes(k)){o.position.copy(home);if(v.playing)o.position.x-=Math.sign(home.x)*(.16+.16*Math.sin(t*2));}
  if(m==='vessel'&&k==='flow'){o.position.copy(home);if(v.playing)o.position.x=((home.x+t*.7+2.3)%4.6)-2.3;}
 }
 v.markers?.forEach((o,i)=>{o.visible=v.playing;const u=(t*.16+i/9)%1;
  if(m==='membrane')o.position.set(.02,2-4*u,.1);
  else if(m==='nerve')o.position.set(-2.4+5.1*u,0,.3);
  else if(m==='heart'){const path=[[-.9,1.4,.8],[-.8,.5,.8],[-.65,-1,.8],[-.3,1.6,.8],[.8,1,.8],[.7,-1,.8],[1.3,1.8,.8]];const p=u*(path.length-1),a=Math.floor(p),b=Math.min(a+1,path.length-1);o.position.fromArray(path[a]).lerp(new T.Vector3(...path[b]),p-a);o.material.color.set(u<.5?0x7ac4ef:0xffa8a0);}
  else if(m==='vessel'||m==='blood')o.position.set(-2.7+5.4*u,.10+Math.sin(i)*.3,.5);
  else if(m==='lymph')o.position.set(.3*Math.sin(u*6),2.5-5*u,.8);
  else if(m==='eye')o.position.set(0,0,3-5*u);
  else if(m==='ear')o.position.set(-3+5*u,.2*Math.sin(u*10),.4);
  else if(m==='nose')o.position.set(-1+2*u,-1.3+3*u,.7);
  else if(m==='muscle')o.visible=false;
  else if(['cell','tissue'].includes(m))o.position.set(.4+1.3*u,-.7+1.3*u,1.2+.25*Math.sin(u*Math.PI));
  else{o.visible=false;}
 });
}


