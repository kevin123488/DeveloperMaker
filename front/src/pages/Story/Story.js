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

const StoryPage = styled.div`
  width: 100vw;
  height: 100vh;
`;

const StoryBox = styled.div`
  position: absolute;
  width: 80vw;
  height: 35vh;
  top: 80%;
  left: 50%;
  transform: translate(-50%, -50%);
`;

const StoryTeller = styled.div`
  width: 10vw;
  height: 5vh;
  background: white;
  opacity: 80%;
`;

const StoryTextBox = styled.div`
  width: 80vw;
  height: 30vh;
  opacity: 80%;
  background: white;
`;

const StorySaveBox = styled.div`
  position: absolute;
  top: 0%;
  right: 0%;
  background: white;
  opacity: 80%;
  width: 5vw;
  height: 5vh;
  cursor: pointer;
`;

const StoryCharLeft = styled.div`
  position: absolute;
  left: 20%;
  top: 10%;
  transform: translate(-50%, 0%);
  width: 40vw;
  height: 90vh;
`;

const StoryCharMiddle = styled.div`
  position: absolute;
  left: 50%;
  top: 10%;
  transform: translate(-50%, 0%);
  width: 40vw;
  height: 90vh;
`;

const StoryCharRight = styled.div`
  position: absolute;
  left: 80%;
  top: 10%;
  transform: translate(-50%, 0%);
  width: 40vw;
  height: 90vh;
`;

const Story = () => {
  const story =  useSelector((state) => {return state.story.userStoryData}); // 유저가 갖고있는 슬롯 3개의 데이터
  const slotIndex = useSelector((state) => {return state.story.selectedSlot}); // 몇번 슬롯 선택했는지 확인
  const dispatch = useDispatch();
  const scriptIndex = useRef(0); // 보여주고 있는 스크립트의 인덱스(num)
  const increaseIndex = useRef(1); // 인덱스 상승폭
  const scriptFile = useRef(script1); // 보여주고 있는 스크립트 파일 이름
  const [scriptText, changeScript] = useState(script1[0].text); // 보여주고 있는 스크립트 택스트
  const [isQuestion, changeIsQuestion] = useState(false);
  const [isOption, changeIsOption] = useState(false);
  const [scriptInfo, changeScriptInfo] = useState(''); // 현재 보고있는 스크립트 한 단위
  const [saveStoryIdx, setSaveStoryIdx] = useState(0); // 저장해야 하는 부분의 인덱스
  const [storyInfo, changeStoryInfo] = useState(story[slotIndex-1]); // 저장 대상 관리 값
  const scriptFileName = useRef(storyInfo.script); // 저장시 사용할 스크립트 파일 이름
  const [storyObj, setStoryObj] = useState(storyInfo); // 저장 대상
  const firstRenderControl = useRef(false);
  const storyTeller = useRef('');
  // 보여줄 이미지 관리
  const backgroundImg = useRef('bus');
  const leftCharImg = useRef('a');
  const middleCharImg = useRef('a');
  const rightCharImg = useRef('a');

  useEffect(() => {
    changeStoryInfo(story[slotIndex-1]); // 선택한 스토리 슬롯의 정보가 storyInfo에 담김
    console.log(storyInfo)
    scriptFile.current = scripts[storyInfo.script]; // 스크립트 파일 교체(script라는 문자열로 옴)
    scriptIndex.current = storyInfo.num; // 스크립트 인덱스 교체
    changeScript(scriptFile.current[scriptIndex.current].text);
    console.log(scriptIndex.current)
    storyTeller.current = scriptFile.current[scriptIndex.current].storyTeller;
    backgroundImg.current = scriptFile.current[scriptIndex.current].backgroundImageUrl;
    leftCharImg.current = scriptFile.current[scriptIndex.current].LeftImageUrl2;
    console.log(leftCharImg.current);
    console.log(backgroundImg.current);
    middleCharImg.current = scriptFile.current[scriptIndex.current].centerImageUrl;
    rightCharImg.current = scriptFile.current[scriptIndex.current].RightImageUrl3;
  }, []);

  useEffect(() => {
    console.log(scriptFile.current[scriptIndex.current].backgroundImageUrl);
    increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex
    console.log(scriptFile.current[scriptIndex.current].plusIndex);
    backgroundImg.current = scriptFile.current[scriptIndex.current].backgroundImageUrl;
    console.log(backgroundImg.current);
    leftCharImg.current = scriptFile.current[scriptIndex.current].LeftImageUrl2;
    console.log(leftCharImg.current);
    middleCharImg.current = scriptFile.current[scriptIndex.current].centerImageUrl;
    rightCharImg.current = scriptFile.current[scriptIndex.current].RightImageUrl3;
  }, [scriptFile.current])

  useEffect(() => {
    console.log("storyObj 변경되면 저장 로직 실행시키자")
    dispatch(userPutMemory(storyObj));
  }, [storyObj]);

  useEffect(() => {
    console.log("saveStoryIdx 값 변경");
    if (firstRenderControl.current) {
      storyObjHandler(saveStoryIdx, scriptFileName.current);
    };
    firstRenderControl.current = true;
  }, [saveStoryIdx]);

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
    changeScript(scriptFile.current[scriptIndex.current].text)
    scriptFileName.current = nextScript;
  }

  const saveStory = () => { 
    // 얘가 애매한게, 어느 시점에 저장하든 문제 전후 부분에서 저장된 부분부터 실행
    // 돼서 자동저장이랑 큰 차이가 없어짐
    console.log("저장되나?");
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    setStoryObj(storyObjCopy);
  }

  const storyObjHandler = (num, script) => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    storyObjCopy.num = num;
    storyObjCopy.script = script;
    setStoryObj(storyObjCopy);
  }

  // 호감도 변경 로직
  const storyObjSpring = (spring) => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    storyObjCopy.likeSpring += spring;
    setStoryObj(storyObjCopy);
  }
  const storyObjSummer = (summer) => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    storyObjCopy.likeSummer += summer;
    setStoryObj(storyObjCopy);
  }
  const storyObjAutumn = (autumn) => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    storyObjCopy.likeAutumn += autumn;
    setStoryObj(storyObjCopy);
  }
  const storyObjWinter = (winter) => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    storyObjCopy.likeWinter += winter;
    setStoryObj(storyObjCopy);
  }

  function nextScript(n) {
    scriptIndex.current += increaseIndex.current;
    storyTeller.current = scriptFile.current[scriptIndex.current].storyTeller;
    backgroundImg.current = scriptFile.current[scriptIndex.current].backgroundImageUrl;
    leftCharImg.current = scriptFile.current[scriptIndex.current].LeftImageUrl2;
    middleCharImg.current = scriptFile.current[scriptIndex.current].centerImageUrl;
    rightCharImg.current = scriptFile.current[scriptIndex.current].RightImageUrl3;
    console.log(scriptIndex.current)
    console.log(storyTeller.current)
    switch(scriptFile.current[scriptIndex.current].scriptType) {
      case 'text':  
        changeScript(scriptFile.current[scriptIndex.current].text)
        increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex
        console.log(scriptFile.current[scriptIndex.current])
        console.log(increaseIndex.current);
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
        console.log(scriptIndex.current);
        console.log(increaseIndex.current);
        console.log(saveStoryIdx);
        console.log(scriptFile.current);
        console.log(storyInfo.script);
        console.log("스토리오브젝트핸들러", saveStoryIdx, scriptFileName.current)
        if (scriptFile.current[scriptIndex.current].resultList[n].score.char === "서봄") {
          storyObjSpring(scriptFile.current[scriptIndex.current].resultList[n].score.point)
        } else if (scriptFile.current[scriptIndex.current].resultList[n].score.char === "차가을") {
          storyObjAutumn(scriptFile.current[scriptIndex.current].resultList[n].score.point)
        } else if (scriptFile.current[scriptIndex.current].resultList[n].score.char === "한여름") {
          storyObjSummer(scriptFile.current[scriptIndex.current].resultList[n].score.point)
        } else if (scriptFile.current[scriptIndex.current].resultList[n].score.char === "한겨울") {
          storyObjWinter(scriptFile.current[scriptIndex.current].resultList[n].score.point)
        }
        console.log(storyObj);
        break;
      
      case 'changeScript':
        scriptFile.current = scripts[scriptFile.current[scriptIndex.current].nextScript]
        scriptFileName.current = scriptFile.current[scriptIndex.current].nextScript
        scriptIndex.current = 0
        increaseIndex.current = 1
        changeScript(scriptFile.current[scriptIndex.current].text)
        // 이 시점에서도 저장 필요함
        // 자율학습 진행도 불러와서 비교, 일정 값 이상이면 패스해주는 로직 필요
        // if (자율학습 진행도 >= scriptFile.current[scriptIndex.current.hahanseun]) {
        //   위에 써둔 스크립트 진행시키는 로직 ㄱ
        // } else {
        //   대충 캐릭터가 "자율학습 더 풀고 오세요" 하는 화면으로 넘겨버리는 로직 추가 
        // }
        break;

      case 'choice':
        changeScript(scriptFile.current[scriptIndex.current].text)
        increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex
        scriptFileName.current = scriptFile.current[scriptIndex.current].nextScript
        console.log(scriptFile.current[scriptIndex.current].option[n]);
        console.log(scriptFileName.current);
        console.log("간다간다넘어간다");
        changeScriptInfo(scriptFile.current[scriptIndex.current])
        changeIsOption(true)
        break;

      default:
    }
  }

  return (
    <>
    <StoryPage>
      <img src={process.env.PUBLIC_URL + `/storyImages/${backgroundImg.current}.png`} style={{
        width: '100%',
        height: '100%',
        backgroundSize: 'cover',
        backgroundPosition: 'center',
        backgroundRepeat: 'no-repeat',
        objectFit: 'cover',
      }} alt="" />
      {/* <div onClick={saveStory}>저장</div> */}
      {/* <div>저장 대상 객체에 저장된 인덱스 값: {storyObj.num}</div>
      <div>저장 대상 인덱스: {saveStoryIdx}</div>
      <div>{scriptFileName.current}</div> */}
      {/* <StoryCharLeft><img src={require(`../../../public/storyImages/${leftCharImg.current}.png`)} alt={leftCharImg.current} /></StoryCharLeft> */}
      {/* <StoryCharLeft><img src={require(`../../../public/storyImages/seobom_main.png`)} alt={leftCharImg.current} /></StoryCharLeft> */}
      <StoryCharLeft><img src={process.env.PUBLIC_URL + `/storyImages/${leftCharImg.current}.png`} style={{
        width: '40vw',
        height: '90vh',
        objectFit: 'contain',
      }} alt={leftCharImg.current} /></StoryCharLeft>
      <StoryCharMiddle><img src={process.env.PUBLIC_URL + `/storyImages/${middleCharImg.current}.png`} style={{
        width: '40vw',
        height: '90vh',
        objectFit: 'contain',
      }} alt={middleCharImg.current} /></StoryCharMiddle>
      <StoryCharRight><img src={process.env.PUBLIC_URL + `/storyImages/${rightCharImg.current}.png`} style={{
        width: '40vw',
        height: '90vh',
        objectFit: 'contain',
      }} alt={rightCharImg.current} /></StoryCharRight>
        <StoryBox onClick={nextScript}>
          <StoryTeller>
            {storyTeller.current}
          </StoryTeller>
          <StorySaveBox onClick={saveStory}>저장</StorySaveBox>
          <StoryTextBox>
            <Typo scriptText={scriptText}/>
          </StoryTextBox>
        </StoryBox>
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
    </StoryPage>
    </>
  );
};
  
export default Story;