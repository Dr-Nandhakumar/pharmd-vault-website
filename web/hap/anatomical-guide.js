import {DIAGRAMS,diagramMarkup} from './anatomical-diagrams.js';
export function mountAnatomicalGuide({getState,onSelect}){
 const stage=document.getElementById('stage'),canvas=document.getElementById('canvas-host');
 const controls=document.createElement('div');controls.className='visual-style';controls.setAttribute('role','group');controls.setAttribute('aria-label','Mechanism presentation');
 const diagramButton=document.createElement('button'),modelButton=document.createElement('button');diagramButton.textContent='Anatomical illustration';modelButton.textContent='3D model';controls.append(diagramButton,modelButton);stage.before(controls);
 const drawing=document.createElement('div');drawing.className='anatomical-drawing';stage.append(drawing);
 const guide=document.createElement('section');guide.className='anatomical-guide';guide.setAttribute('aria-label','Syllabus mechanism sequence');
 const heading=document.createElement('h3'),caption=document.createElement('p'),parts=document.createElement('div'),sequence=document.createElement('ol'),current=document.createElement('p'),scope=document.createElement('p'),disease=document.createElement('p');
 parts.className='diagram-parts';sequence.className='diagram-sequence';current.className='diagram-current';current.setAttribute('aria-live','polite');scope.className='diagram-scope';disease.className='diagram-disease';
 guide.append(heading,caption,parts,sequence,current,disease,scope);document.querySelector('.model-controls').after(guide);
 let mode='diagram',lastTopic=0,lastStage=-1,lastSelected='',lastPlaying=false,lastCondition=false;
 const setMode=next=>{mode=next;stage.classList.toggle('illustration-mode',mode==='diagram');drawing.hidden=mode!=='diagram';canvas.hidden=mode==='diagram';diagramButton.setAttribute('aria-pressed',String(mode==='diagram'));modelButton.setAttribute('aria-pressed',String(mode==='3d'));document.getElementById('cutaway').hidden=mode==='diagram';guide.hidden=mode!=='diagram';document.getElementById('normal').textContent=mode==='diagram'?'Reference anatomy':'Normal';document.getElementById('condition').textContent=mode==='diagram'?'Explain condition':'Condition';if(mode==='3d')window.dispatchEvent(new Event('resize'));};
 diagramButton.onclick=()=>setMode('diagram');modelButton.onclick=()=>setMode('3d');setMode(mode);
 const choose=id=>{onSelect(id);drawing.querySelectorAll('[data-structure]').forEach(el=>el.classList.toggle('selected-structure',el.dataset.structure===id));parts.querySelectorAll('button').forEach(b=>b.setAttribute('aria-pressed',String(b.dataset.part===id)));};
 drawing.onclick=e=>{const label=e.target.closest('[data-label]');if(label)choose(label.dataset.label);};drawing.onkeydown=e=>{if(e.key==='Enter'||e.key===' '){const label=e.target.closest('[data-label]');if(label){e.preventDefault();choose(label.dataset.label);}}};
 const update=()=>{
  const s=getState(),topic=s.topic;if(!topic||!DIAGRAMS[topic.model])return;
  const d=DIAGRAMS[topic.model];
  if(lastTopic!==topic.id){lastTopic=topic.id;lastStage=-1;lastSelected='';drawing.innerHTML=diagramMarkup(topic.model);heading.textContent=d.title;caption.textContent=d.note;parts.replaceChildren();d.labels.forEach(([id,label],i)=>{const b=document.createElement('button');b.textContent=`${i+1}. ${label}`;b.dataset.part=id;b.setAttribute('aria-pressed','false');b.onclick=()=>choose(id);parts.append(b);});sequence.replaceChildren();topic.steps.forEach((text,i)=>{const li=document.createElement('li');const number=document.createElement('span');number.textContent=String(i+1);const content=document.createElement('span');content.textContent=text;li.append(number,content);sequence.append(li);});scope.textContent='Original anatomical teaching illustration. Related topics share reference anatomy. Playback highlights the lesson sequence; it does not reproduce the full biological process.';disease.textContent=topic.disease?`Condition explained: ${topic.disease}`:'';disease.hidden=!topic.disease;}
  drawing.classList.toggle('is-playing',!!s.playing);lastPlaying=!!s.playing;
  if(lastStage!==s.step){lastStage=s.step;const index=Math.max(0,Math.min(topic.steps.length-1,s.step));sequence.querySelectorAll('li').forEach((li,i)=>{li.classList.toggle('current',i===index);if(i===index)li.setAttribute('aria-current','step');else li.removeAttribute('aria-current');});current.textContent=`Step ${index+1} of ${topic.steps.length}: ${topic.steps[index]}`;}
  if(lastSelected!==s.selected){lastSelected=s.selected;drawing.querySelectorAll('[data-structure]').forEach(el=>el.classList.toggle('selected-structure',el.dataset.structure===s.selected));parts.querySelectorAll('button').forEach(b=>b.setAttribute('aria-pressed',String(b.dataset.part===s.selected)));}
  if(lastCondition!==s.condition){lastCondition=s.condition;disease.classList.toggle('condition-active',!!s.condition);}
 };
 const timer=setInterval(update,160);window.addEventListener('pagehide',()=>clearInterval(timer),{once:true});return {update};
}
