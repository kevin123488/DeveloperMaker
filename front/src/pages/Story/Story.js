// 캐릭터별로 있고 마우스 올리면 표정, 자세 바뀌면서 어떤분야 자울학습하는건지 가르쳐주는 거 괜찮을듯

import React, { useState, useRef } from "react";
import "./Story.css";
import styled from "styled-components";
import Typo from './TypingText.js'
import Question from './Question.js'
import Option from './Option.js'
import script1 from "./scripts/script1.json"
import script1_1 from "./scripts/script1_1.json"
import script1_2 from "./scripts/script1_2.json"


const Story = () => {

  const [storyMap] = useState(
  { 
    3: [6, 4, 6, 4],
  });

  const [scripts] = useState(
    { 
      "script1": script1,
      "script1_1": script1_1,
      "script1_2": script1_2,
    });

  const scriptIndex = useRef(0);
  const increaseIndex = useRef(1);
  const scriptFile = useRef(script1);
  const [scriptText, changeScript] = useState(script1[0].text);
  const [isQuestion, changeIsQuestion] = useState(false);
  const [isOption, changeIsOption] = useState(false);
  const [scriptInfo, changeScriptInfo] = useState('');
  // const [questionResultIdx, changeQuestionResultIdx] = useState(0);


  const returnNextScript = (n) => {
    nextScript(n)
  }

  const choiceNextScript = (nextScript) => {
    changeIsOption(false)
    scriptFile.current = scripts[nextScript]
    scriptIndex.current = 0
    increaseIndex.current = 1
    console.log(scriptFile.current)
    changeScript(scriptFile.current[scriptIndex.current].text)
    // nextScript()
  }

  function nextScript(n) {
    console.log(increaseIndex.current)
    scriptIndex.current += increaseIndex.current
    console.log(scriptIndex.current)
    switch(scriptFile.current[scriptIndex.current].scriptType) {
      case 'text':  
        changeScript(scriptFile.current[scriptIndex.current].text)
        increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex
        break;

      case 'question':
        changeScript(scriptFile.current[scriptIndex.current].text)
        changeScriptInfo(scriptFile.current[scriptIndex.current])
        increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex
        changeIsQuestion(true)
        break;

      case 'questionResult':
        changeIsQuestion(false)
        changeScript(scriptFile.current[scriptIndex.current].resultList[n].text)
        increaseIndex.current = scriptFile.current[scriptIndex.current].resultList[n].plusIndex
        break;
      
      case 'changeScript':
        scriptFile.current = scripts[scriptFile.current[scriptIndex.current].nextScript]
        scriptIndex.current = 0
        increaseIndex.current = 1
        changeScript(scriptFile.current[scriptIndex.current].text)
        break;

      case 'choice':
        changeScript(scriptFile.current[scriptIndex.current].text)
        increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex
        changeScriptInfo(scriptFile.current[scriptIndex.current])
        changeIsOption(true)
        break;

      default:
    }

    // changeStopTypo(setInterval(typo, 150));
  }


  return (
    <>
      <div onClick={nextScript}>다읽었어요</div>
      <hr />
        <div>
          <Typo scriptText={scriptText}/>
          {
            isQuestion
            ? 
            <Question 
            scriptInfo={scriptInfo} 
            returnNextScript={returnNextScript} />
            : null
          }

          {
            isOption
            ? 
            <Option 
            scriptInfo={scriptInfo} 
            choiceNextScript={choiceNextScript} />
            : null
          }
        </div>
    </>
  );
};
  
export default Story;