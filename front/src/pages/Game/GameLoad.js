import React, { useState, useEffect } from "react";
import "../Main/Main.css";
import Styled from "styled-components";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import styled from "styled-components";
import { userGetMemory } from "../../slices/storySlice";
import seobom_slot1 from "./seobom_gameslot1.png";
import seobom_slot1Smile from "./seobom_gameslot1smile.png";
import gaeul_gameslot2 from "./gaeul_gameslot2.png";
import gaeul_gameslot2smile from "./gaeul_gameslot2smile.png";
import geuwol_gameslot3 from "./geuwol_gameslot3.png";
import geuwol_gameslot3smile from "./geuwol_gameslot3smile.png";
import gohomeIcon from "./gohomeIcon.png";
import speechBubble from "./speechBubble.png";
import "./GameLoad.css";

// const GameLoadHeader = styled.div`
//   width: 100%;
//   height: 15%;
//   position: fixed;
//   display: inline-flex;
//   align-items: center;
//   padding-left: 5%;
//   padding-right: 5%;
//   white-space: nowrap;
//   overflow: hidden;
// `;

// const HeaderBtnContents = styled.div`
//   width: 30%;
//   display: flex;
//   align-items: center;
// `;

// const HeaderTitleContents = styled.div`
//   width: fit-content;
//   display: inline-block;
//   align-items: center;
// `;

// const BackBtn = styled.button`
//   display: flex;
//   align-self: center;
// `;

// const Title = Styled.p`
//   font-family: "Lobster";
//   text-shadow: 5px 5px #16345A, 8px 8px #284D8E, 11px 11px #4D8CBF, 14px 14px #5FA9D9;
//   font-size: 450%;
//   color: ghostwhite;
//   text-align: center;
// `;

// const GameLoadBody = styled.div`
//   margin-top: 8%;
//   width: 100%;
//   height: 85%;
//   overflow: hidden;
//   display: flex;
//   align-content: center;
//   justify-content: center;
// `;

// const GameLoadContainer = styled.div`
//   background-color: rgba(255, 255, 255, 0.6);
//   width: 100%;
//   height: 85%;
//   border-radius: 5em;
//   padding: 3em;
//   margin: 5%;
//   display: flex;
//   flex-direction: column;
//   justify-content: space-between;
// `;

// const GameFileLoadList = styled.div`
//   //margin-top: 3em;
//   background-color: rgba(140, 200, 255);
//   border-style: solid;
//   border-color: rgba(0, 0, 0, 0.8);
//   border-width: 0.05em;
//   border-radius: 1em;
// `;

// const SaveTitleContainer = styled.div`
//   margin-left: 5%;
// `;

// const SaveTitle = styled.p`
//   font-size: x-large;
// `;

// const LoadFileInfo = styled.div`
//   display: flex;
//   flex-direction: row;
// `;

// const LoadFileChapter = styled.div`
//   width: 30%;
// `;

// const LoadFileChapterP = styled.p`
//   text-align: center;
//   font-family: "Pacifico";
//   font-size: xx-large;
// `;

// const LoadFileChapterName = styled.div`
//   display: inline-block;
//   width: 70%;
// `;

// const LoadFileChapterNameP = styled.p`
//   font-size: xx-large;
// `;

const GameLoadTitle = styled.div`
  position: absolute;
  top: 10%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 50vw;
  height: 10vh;
  font-size: 5vw;
  color: red;
`;

const GameLoadGoHome = styled.div`
  cursor: pointer;
  position: absolute;
  top: 5%;
  left: 5%;
  transfrom: translate(-50%, -50%);
  width: 6vw;
  height: 6vw;
  background-image: url(${gohomeIcon});
  background-size: 6vw 6vw;
  transition: 0.2s;
  &:active {
    top: 6%;
  }
`;

const GameLoadSlots = styled.div`
  position: absolute;
  top: 60%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 75vw;
  height: 70vh;
`;

const GameLoadSlot1 = styled.div`
  cursor: pointer;
  position: absolute;
  top: 50%;
  left: 15%;
  transform: translate(-50%, -50%);
  width: 22vw;
  height: 65vh;
  border-radius: 30px;
  transition: 0.4s;
  background-image: url(${seobom_slot1});
  background-size: 22vw 65vh;
  object-fit: contain;
  &:hover {
    width: 23vw;
    height: 68vh;
    transition: 0.4s;
    background-image: url(${seobom_slot1Smile});
    background-size: 23vw 68vh;
    object-fit: contain;
  }
`;

const GameLoadSlot2 = styled.div`
  cursor: pointer;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 22vw;
  height: 65vh;
  border-radius: 30px;
  transition: 0.4s;
  background-image: url(${gaeul_gameslot2});
  background-size: 22vw 65vh;
  object-fit: contain;
  &:hover {
    width: 23vw;
    height: 68vh;
    background-image: url(${gaeul_gameslot2smile});
    background-size: 23vw 68vh;
    transition: 0.4s;
    object-fit: contain;
  }
`;

const GameLoadSlot3 = styled.div`
  cursor: pointer;
  position: absolute;
  top: 50%;
  left: 85%;
  transform: translate(-50%, -50%);
  width: 22vw;
  height: 65vh;
  border-radius: 30px;
  transition: 0.4s;
  background-image: url(${geuwol_gameslot3});
  background-size: 22vw 65vh;
  object-fit: contain;
  &:hover {
    width: 23vw;
    height: 68vh;
    background-image: url(${geuwol_gameslot3smile});
    background-size: 23vw 68vh;
    transition: 0.4s;
    object-fit: contain;
  }
`;

const GameSlotProgress = styled.div`
  position: absolute;

`;

const GameslotSpeechBubble = styled.div`
  position: absolute;
  top: 30%;
  left: 90%;
  transform: translate(-50%, -50%);
  height: 10vw;
  width: 20vw;
  background-image: url(${speechBubble});
  background-size: 20vw 10vw;
  font-size: 1.5vw;
`;

const GameLoad = () => {
  const navigate = useNavigate();
  const story = useSelector((state) => state.story);
  const storySlots = story.userStoryData;
  const [slot1Info, setSlot1Info] = useState(false);
  const [slot2Info, setSlot2Info] = useState(false);
  const [slot3Info, setSlot3Info] = useState(false);
  // console.log(storySlots)
  // story라는 이름의 reducer에 있는 state의 userStoryData를 story라는 변수에 넣어두자는 뜻

  const dispatch = useDispatch();
  // dispatch를 쓰기 위해 dispatch를 선언해주어야 함
  const backBtnhandler = () => {
    setTimeout(() => {
      navigate("/");
    }, 200);
  };

  // 스토리 슬롯 hover시 진행도 보여주는 부분 관리
  const watchStory1 = () => {
    setSlot1Info(true);
  };
  const watchStory2 = () => {
    setSlot2Info(true);
  };
  const watchStory3 = () => {
    setSlot3Info(true);
  };
  const stopWatchStory1 = () => {
    setSlot1Info(false);
  };
  const stopWatchStory2 = () => {
    setSlot2Info(false);
  };
  const stopWatchStory3 = () => {
    setSlot3Info(false);
  };

  // 스토리 시작하는 함수
  const startStory1 = () => {
    navigate("/Story");
    dispatch({type: "story/choiceSlot", slotNum: 1});
    // console.log("왜 스토리로 넘어가짐?")
  };
  const startStory2 = () => {
    navigate("/Story");
    dispatch({type: "story/choiceSlot", slotNum: 2});
    // console.log("왜 스토리로 넘어가짐?")
  };
  const startStory3 = () => {
    navigate("/Story");
    dispatch({type: "story/choiceSlot", slotNum: 3});
    // console.log("왜 스토리로 넘어가짐?")
  };

  useEffect(() => {
    // dispatch(userGetMemory());
    // console.log(storySlots);
    const dispatchUserMemory = async () => {
      await dispatch(userGetMemory());
    };
    dispatchUserMemory();
  }, [dispatch]);

  return (
    <div className="MainContainerWrapper">
      <div className="MainContainer">
        <GameLoadTitle>
          슬롯페이지 임시 타이틀
        </GameLoadTitle>
        <GameLoadGoHome onClick={backBtnhandler}></GameLoadGoHome>
        <GameLoadSlots>
          <GameLoadSlot1 onClick={startStory1} onMouseOver={watchStory1} onMouseOut={stopWatchStory1}>
            {/* {storySlots[0].script} */}
            {
              slot1Info
              ?
              <GameslotSpeechBubble>
                <div className="speechBubbleText">{storySlots[0].script}으로 넘어갈 차례야!</div>
              </GameslotSpeechBubble>
              : null
            }
          </GameLoadSlot1>
          <GameLoadSlot2 onClick={startStory2} onMouseOver={watchStory2} onMouseOut={stopWatchStory2}>
            {/* {storySlots[1].script} */}
            {
              slot2Info
              ?
              <GameslotSpeechBubble>
                <div className="speechBubbleText">{storySlots[1].script}으로 넘어갈 차례에요</div>
              </GameslotSpeechBubble>
              : null
            }
          </GameLoadSlot2>
          <GameLoadSlot3 onClick={startStory3} onMouseOver={watchStory3} onMouseOut={stopWatchStory3}>
            {/* {storySlots[2].script} */}
            {
              slot3Info
              ?
              <GameslotSpeechBubble>
                <div className="speechBubbleText">{storySlots[2].script} 이었나?</div>
              </GameslotSpeechBubble>
              : null
            }
          </GameLoadSlot3>
        </GameLoadSlots>
        {/* {storySlots.map((story, idx) => (
          <div key={idx}>{story.script}</div>
        ))} */}
        {/* <GameLoadHeader>
          <HeaderBtnContents>
            <BackBtn onClick={backBtnhandler}>뒤로가기</BackBtn>
          </HeaderBtnContents>
          <HeaderTitleContents>
            <Title> Developer Maker </Title>
          </HeaderTitleContents>
          <HeaderBtnContents />
        </GameLoadHeader> */}

        {/* <GameLoadBody>
          <GameLoadContainer>
            <GameFileLoadList onClick={startStory1}>
              <SaveTitleContainer>
                <SaveTitle>저장 데이터1</SaveTitle>
              </SaveTitleContainer>
              <LoadFileInfo>
                <LoadFileChapter>
                  <LoadFileChapterP>chapter</LoadFileChapterP>
                </LoadFileChapter>
                <LoadFileChapterName>
                  <LoadFileChapterNameP>{storySlots[0].script}</LoadFileChapterNameP>
                </LoadFileChapterName>
              </LoadFileInfo>
            </GameFileLoadList> */}

            {/* <GameFileLoadList onClick={startStory2}>
              <SaveTitleContainer>
                <SaveTitle>저장 데이터2</SaveTitle>
              </SaveTitleContainer>
              <LoadFileInfo>
                <LoadFileChapter>
                  <LoadFileChapterP>chapter</LoadFileChapterP>
                </LoadFileChapter>
                <LoadFileChapterName>
                  <LoadFileChapterNameP>{storySlots[1].script}</LoadFileChapterNameP>
                </LoadFileChapterName>
              </LoadFileInfo>
            </GameFileLoadList> */}

            {/* <GameFileLoadList onClick={startStory3}>
              <SaveTitleContainer>
                <SaveTitle>저장 데이터3</SaveTitle>
              </SaveTitleContainer>
              <LoadFileInfo>
                <LoadFileChapter>
                  <LoadFileChapterP>chapter</LoadFileChapterP>
                </LoadFileChapter>
                <LoadFileChapterName>
                  <LoadFileChapterNameP>{storySlots[2].script}</LoadFileChapterNameP>
                </LoadFileChapterName>
              </LoadFileInfo>
            </GameFileLoadList>
          </GameLoadContainer>
        </GameLoadBody> */}
      </div>
    </div>
  );
};
export default GameLoad;
