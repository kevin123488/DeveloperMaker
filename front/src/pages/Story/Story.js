// 캐릭터별로 있고 마우스 올리면 표정, 자세 바뀌면서 어떤분야 자울학습하는건지 가르쳐주는 거 괜찮을듯

import React, { useState, useRef, useEffect, useCallback } from "react";
import "./Story.css";
import styled from "styled-components";
import Typo from './TypingText.js'
import Question from './Question.js'
import Option from './Option.js'
import script1 from "./scripts/script1.json"
import script1_1 from "./scripts/script1_1.json"
import script1_2 from "./scripts/script1_2.json"
import { useDispatch, useSelector } from "react-redux";
import { userPutMemory } from "../../slices/storySlice";



const Story = () => {
  // const [story, changeStory] = useState(useSelector((state) => state.story.userStoryData)); // 저장 대상 관리 값
  // const [slotIndex, changseSlotIndex] = useState(useSelector((state) => state.story.selectedSlot); // 저장 대상 관리 값
  
  // function setStates() {
    // }
  useCallback(() => {
    
  })
  const story =  useSelector((state) => {return state.story.userStoryData}); // 유저가 갖고있는 슬롯 3개의 데이터
  console.log("재랜더링");
  const slotIndex = useSelector((state) => {return state.story.selectedSlot}); // 몇번 슬롯 선택했는지 확인
  // console.log('재랜더링됨')
  const dispatch = useDispatch();
  // 선택된 슬롯 정보를 받아와야 함
  const scriptIndex = useRef(0); // 보여주고 있는 스크립트의 인덱스(num)
  const increaseIndex = useRef(1); // 인덱스 상승폭
  const scriptFile = useRef(script1); // 보여주고 있는 스크립트 파일 이름
  const [scriptText, changeScript] = useState(script1[0].text); // 보여주고 있는 스크립트 택스트
  const [isQuestion, changeIsQuestion] = useState(false);
  const [isOption, changeIsOption] = useState(false);
  const [scriptInfo, changeScriptInfo] = useState(''); // 현재 보고있는 스크립트 한 단위
  // const [questionResultIdx, changeQuestionResultIdx] = useState(0);
  const [saveStoryIdx, setSaveStoryIdx] = useState(0); // 저장해야 하는 부분의 인덱스
  const [storyInfo, changeStoryInfo] = useState(story[slotIndex-1]); // 저장 대상 관리 값
  console.log("몇번 슬롯 선택함?",slotIndex);
  const scriptFileName = useRef(storyInfo.script); // 저장시 사용할 스크립트 파일 이름
  const [storyObj, setStoryObj] = useState(storyInfo); // 저장 대상


  useEffect(() => {
    // setStates()
    // story와 slotIndex값을 기반으로 스크립트 시작 시점, 그리고 저장 시점 등을
    // 설정해줄 필요가 있다.
    changeStoryInfo(story[slotIndex-1]); // 선택한 스토리 슬롯의 정보가 storyInfo에 담김
    // console.log(slotIndex-1);
    // console.log(story[slotIndex]);
    // console.log(storyInfo)
    // 1~3으로 지정되어 있기 때문.
    // 저장돼있는 storyInfo를 활용, scriptFile, scriptIndex값을 세팅할 필요 있음
    // setStoryObj(storyInfo); // 저장 대상을 얘로 교체
    console.log(storyInfo)
    scriptFile.current = scripts[storyInfo.script]; // 스크립트 파일 교체(script라는 문자열로 옴)
    scriptIndex.current = storyInfo.num; // 스크립트 인덱스 교체
    console.log(scriptIndex.current)
  }, []);

  useEffect(() => {
    console.log("storyObj 변경되면 저장 로직 실행시키자")
    dispatch(userPutMemory(storyObj));
  }, [storyObj]);

  useEffect(() => {
    console.log("saveStoryIdx 값 변경");
    storyObjHandler(saveStoryIdx, scriptFileName.current);
  }, [saveStoryIdx]);

  // useEffect(() => {
  //   changeStoryInfo(story[slotIndex-1]);
  // }, [story]);

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



  const returnNextScript = (n) => {
    nextScript(n)
  }

  const choiceNextScript = (nextScript) => {
    changeIsOption(false)
    scriptFile.current = scripts[nextScript]
    scriptIndex.current = 0
    increaseIndex.current = 1
    // console.log(scriptFile.current)
    changeScript(scriptFile.current[scriptIndex.current].text)
    scriptFileName.current = nextScript;
    // nextScript()
  }

  const saveStory= () => {
    setStoryObj();
  }

  const storyObjHandler = (num, script) => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    console.log(storyObjCopy);
    console.log(storyObjCopy.num);
    console.log(num);
    storyObjCopy.num = num;
    console.log(storyObjCopy.num);
    storyObjCopy.script = script;
    console.log(storyObjCopy);
    setStoryObj(storyObjCopy);
  }

  const storyObjSpring = (spring) => {
    console.log(spring)
    setStoryObj((preState) => {
      return {
        ...preState,
        likeSpring: spring,
      }
    })
  }
  const storyObjSummer = (spring) => {
    setStoryObj((preState) => {
      return {
        ...preState,
        likeSummer: spring,
      }
    })
  }
  const storyObjAutumn = (spring) => {
    setStoryObj((preState) => {
      return {
        ...preState,
        likeAutumn: spring,
      }
    })
  }
  const storyObjWinter = (spring) => {
    setStoryObj((preState) => {
      return {
        ...preState,
        likeWinter: spring,
      }
    })
  }

  const saveStoryIdxHandler = (idx) => {
    setSaveStoryIdx((prevState) => {
      console.log("바꾸기 전 값", prevState, idx);
      return [prevState = idx];
    })
  }

  function nextScript(n) {
    scriptIndex.current += increaseIndex.current
    // 지금 보고 있는 스크립트의 plusIndex가 1이 아닐 경우 초기값 1로 올라갈
    // 가능성 있음. 초기 increaseIndex 값을 plusIndex 값으로 바꿔줄 필요 있음
    console.log(scriptIndex.current)
    switch(scriptFile.current[scriptIndex.current].scriptType) {
      case 'text':  
        changeScript(scriptFile.current[scriptIndex.current].text)
        increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex
        // console.log(scriptIndex.current)
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
        setSaveStoryIdx(scriptIndex.current + increaseIndex.current); // 현재 보고있는 인덱스 + 1 시점에서 로드 가능하도록
        // 왜 세팅 안됨? 왜?
        console.log(scriptIndex.current); // 11임
        console.log(increaseIndex.current); // 1임
        console.log(saveStoryIdx); // 0임. 왜?
        // set함수 실행했는데 반영되지 않은 이유가 뭘까
        // 저장하는 로직 필요
        // scriptIndex -> useEffect 통해 받아온 값으로 초기 설정해주는 부분 필요

        // storyObj.num = saveStoryIdx;
        // storyObj.script = scriptFile.current;
        console.log(scriptFile.current);
        console.log(storyInfo.script);

        // storyObj 내부의 값을 바꾸어 줘야 함
        // setStoryObj({
        //   ...storyObj,
        //   [num]: saveStoryIdx,
        //   [script]: storyInfo.script,
        // })
        // storyObjHandler(saveStoryIdx, scriptFileName.current);
        // savestoryidx 바뀔 때 위에 함수 실행되도록 하면 될듯?
        // 인덱스와 스크립트 명을 수정해주는 함수
        console.log("스토리오브젝트핸들러", saveStoryIdx, scriptFileName.current)
        if (scriptFile.current[scriptIndex.current].resultList[n].score.char === "서봄") {
          // console.log(storyObj.likeSpring + scriptFile.current[scriptIndex.current].resultList[n].score.point);
          // storyObjSpring(storyObj.likeSpring + scriptFile.current[scriptIndex.current].resultList[n].score.point)
        } else if (scriptFile.current[scriptIndex.current].resultList[n].score.char === "차가을") {
          // storyObjAutumn(storyObj.likeAutumn + scriptFile.current[scriptIndex.current].resultList[n].score.point)
        } else if (scriptFile.current[scriptIndex.current].resultList[n].score.char === "한여름") {
          // storyObjSummer(storyObj.likeSummer + scriptFile.current[scriptIndex.current].resultList[n].score.point)
        } else if (scriptFile.current[scriptIndex.current].resultList[n].score.char === "한겨울") {
          // storyObjWinter(storyObj.likeWinter + scriptFile.current[scriptIndex.current].resultList[n].score.point)
        }
        // dispatch(userPutMemory(storyObj)); // 저장 로직
        // storyObj 넣어서 변경
        console.log(storyObj);
        break;
      
      case 'changeScript':
        scriptFile.current = scripts[scriptFile.current[scriptIndex.current].nextScript]
        scriptFileName.current = scriptFile.current[scriptIndex.current].nextScript
        scriptIndex.current = 0
        increaseIndex.current = 1
        changeScript(scriptFile.current[scriptIndex.current].text)
        // 이 시점에서도 저장 필요함
        break;

      case 'choice':
        changeScript(scriptFile.current[scriptIndex.current].text)
        increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex
        scriptFileName.current = scriptFile.current[scriptIndex.current].nextScript
        console.log(scriptFile.current[scriptIndex.current].option[n]);
        console.log(scriptFileName.current);
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
      <div onClick={saveStory}>저장</div>
      <div>저장 대상 객체에 저장된 인덱스 값: {storyObj.num}</div>
      <div>저장 대상 인덱스: {saveStoryIdx}</div>
      <div>{scriptFileName.current}</div>
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