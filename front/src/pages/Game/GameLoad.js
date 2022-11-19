import React, { useState, useEffect } from "react";
import "../Main/Main.css";
import Styled, { keyframes } from "styled-components";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import styled from "styled-components";
import { userGetMemory, userPutMemory } from "../../slices/storySlice";
import seobom_slot1 from "./seobom_gameslot1.png";
import seobom_slot1Smile from "./seobom_gameslot1smile.png";
import gaeul_gameslot2 from "./gaeul_gameslot2.png";
import gaeul_gameslot2smile from "./gaeul_gameslot2smile.png";
import geuwol_gameslot3 from "./geuwol_gameslot3.png";
import geuwol_gameslot3smile from "./geuwol_gameslot3smile.png";
import gohomeIcon from "./gohomeIcon.png";
import speechBubble from "./speechBubble.png";
import goHomeIcon from "../../asset/images/SelfstudyImg/selfstudyBtn.png";
import "./GameLoad.css";
import gameloadBook from "./gameloadBook.png";
import deleteSlot from "./deleteSlot.png";
import charInfo1 from "./charInfo1.png";
import charInfo2 from "./charInfo2.png";
import charInfo3 from "./charInfo3.png";
import charInfo4 from "./charInfo4.png";
import gameloadCharInfoBtn from "./gameloadCharInfoBtn.png";


// 효과음 
import btnSound from "../../asset/soundEffects/buttonClick.wav";
import btnCuteSound from "../../asset/soundEffects/buttonCute.wav";
import btnSimpleSound from "../../asset/soundEffects/buttonSimple.wav";
import changePageSound from "../../asset/soundEffects/Selfstudy/changePage.wav";
import gameloadTheme from "../../asset/soundEffects/Lovely_Wind.mp3";
import showMarkdownSound from "../../asset/soundEffects/Selfstudy/showMarkdown.wav";

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

const GameLoadGoHome = styled.div`
  z-index: 5;
  cursor: pointer;
  position: absolute;
  top: 5vh;
  right: 2vw;
  width: 12vh;
  height: 12vh;
  background-image: url(${gohomeIcon});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
  transition: 0.2s;
  &:hover {
    transform: scale(1.05);
  }
  &:active {
    top: 6%;
  }
`;

const DeleteSlotBtn = styled.div`
  z-index: 5;
  cursor: pointer;
  position: absolute;
  top: 5vh;
  right: 12vw;
  height: 12vh;
  width: 12vh;
  background-image: url(${deleteSlot});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
  transition: 0.2s;
  &:hover {
    transform: scale(1.05);
  }
  &:active {
    top: 6%;
  }
`;

const DeleteModalEffect = keyframes`
  from {
    top: 40%;
    left: 50%;
    transform: translate(-50%, -50%) scale(0);
  }
  to {
    top: 40%;
    left: 50%;
    transform: translate(-50%, -50%) scale(1);
  }
`;

const DeleteSlotModal = styled.div`
  z-index: 50;
  position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 25vw;
  height: 30vh;
  background: white;
  border-radius: 5px;
  border: 2px solid #79491e;
  animation: ${DeleteModalEffect} 0.1s;
`;

const ModalEffect = keyframes`
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
`;

const DeleteFinModal = styled.div`
  z-index: 5;
  position: absolute;
  top: 20%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 25vw;
  height: 10vh;
  background: white;
  border-radius: 5px;
  border: 2px solid #79491e;
  font-size: 2vw;
  text-align: center;
  line-height: 10vh;
  vertical-align: middle;
  animation: ${ModalEffect} 0.4s;
`;

const GameLoadSlots = styled.div`
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 85vw;
  height: 90vh;
`;

const SlotAppearEffect = keyframes`
  from {
    opacity: 0;
    position: absolute;
    top: 0%;
  }
  to {
    opacity: 1;
    position: absolute;
    top: 60%;
  }
`;

const GameLoadSlot1 = styled.div`
  cursor: pointer;
  position: absolute;
  top: 60%;
  left: 20%;
  transform: translate(-50%, -50%);
  width: 22vw;
  height: 65vh;
  border-radius: 30px;
  transition: 0.5s;
  background-image: url(${seobom_slot1});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
  animation: ${SlotAppearEffect} 0.4s;
  opacity: 0.9;
  &:hover {
    z-index: 30;
    transform: translate(-50%, -50%) scale(1.2);
    transition: 0.5s;
    background-image: url(${seobom_slot1Smile});
    background-size: contain;
    background-position: center;
    background-repeat: no-repeat;
    opacity: 1;
    object-fit: contain;
  }
`;

const GameLoadSlot2 = styled.div`
  cursor: pointer;
  position: absolute;
  top: 60%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 22vw;
  height: 65vh;
  border-radius: 30px;
  transition: 0.5s;
  background-image: url(${gaeul_gameslot2});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
  animation: ${SlotAppearEffect} 0.8s;
  opacity: 0.9;
  &:hover {
    z-index: 30;
    transform: translate(-50%, -50%) scale(1.2);
    background-image: url(${gaeul_gameslot2smile});
    background-size: contain;
    background-position: center;
    background-repeat: no-repeat;
    transition: 0.5s;
    opacity: 1;
    object-fit: contain;
  }
`;

const GameLoadSlot3 = styled.div`
  cursor: pointer;
  position: absolute;
  top: 60%;
  left: 80%;
  transform: translate(-50%, -50%);
  width: 22vw;
  height: 65vh;
  border-radius: 30px;
  transition: 0.5s;
  background-image: url(${geuwol_gameslot3});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
  animation: ${SlotAppearEffect} 1.2s;
  opacity: 0.9;
  object-fit: contain;
  &:hover {
    z-index: 30;
    transform: translate(-50%, -50%) scale(1.2);
    background-image: url(${geuwol_gameslot3smile});
    background-size: contain;
    background-position: center;
    background-repeat: no-repeat;
    transition: 0.5s;
    opacity: 1;
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
  font-size: 1.3vw;
`;

const CharInfoBtnEffect = keyframes`
  0%, 100% {
    top: 5vh;
  }
  50% {
    top: 6vh;
  }
`;

const CharInfoBtn = styled.div`
  z-index: 1;
  cursor: pointer;
  position: absolute;
  line-height: 11vh;
  font-size: 2.5vw;
  text-align: center;
  top: 2vh;
  left: 40vw;
  color: #E7578E;
  text-shadow: -1px 0 white, 0 1px white, 1px 0 white, 0 -1px white;
  height: 10vh;
  width: 20vw;
  border-radius: 1vw;
  overflow: hidden;
  background-color: rgba(255, 255, 255, 0.2);
  transition: all ease 0.1s;
  animation: ${CharInfoBtnEffect} 3s  infinite;
  // box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.2 );
  box-shadow: 0 0 10px #E7578E30,
                0 0 20px #E7578E25,
                0 0 30px #E7578E20,
                0 0 40px #E7578E15,
                0 0 50px #E7578E10,
                0 0 60px #E7578E05;
  backdrop-filter: blur( 6.5px );
  -webkit-backdrop-filter: blur( 6.5px );
  &:hover {
    transition: 0.4s;
    background-color: #ffffff80;
  }
`;

const CharInfoModalEffect = keyframes`
  from {
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(0.5);
  }
  to {
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(1);
  }
`;

const CharInfoModal = styled.div`
  z-index: 6;
  position: absolute;
  cursor: pointer;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  height: 70vh;
  width: 70vw;
  background: white;
  overflow: auto;
  border-radius: 10px;
  border: 5px solid #e9559054;
  transition: 0.2s;
  animation: ${CharInfoModalEffect} 0.25s;
  &::-webkit-scrollbar {
    width: 0.5vw;
    height: 0;
    background-color: white;
  }
  &::-webkit-scrollbar-thumb {
    background-color: #e95590;
    border-radius: 20px;
  }
`;

const CharInfo1 = styled.div`
  height: 70vh;
  width: 70vw;
  background-image: url(${charInfo1});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const CharInfo2 = styled.div`
  height: 70vh;
  width: 70vw;
  background-image: url(${charInfo2});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const CharInfo3 = styled.div`
  height: 70vh;
  width: 70vw;
  background-image: url(${charInfo3});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const CharInfo4 = styled.div`
  height: 70vh;
  width: 70vw;
  background-image: url(${charInfo4});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;

const GameLoad = () => {
  const navigate = useNavigate();
  const story = useSelector((state) => state.story);
  const aitestResult = useSelector((state) => state.interview.result);
  const storySlots = story.userStoryData;
  const [slot1Info, setSlot1Info] = useState(false);
  const [slot2Info, setSlot2Info] = useState(false);
  const [slot3Info, setSlot3Info] = useState(false);
  const [deleteModalOpen, setDeleteModalOpen] = useState(false);
  const [deleteFinModalOpen, setDeleteFinModal] = useState(false);
  const [whichSlotDeleted, setWhichSlotDeleted] = useState(-1);
  const [charInfoOpen, setCharInfoOpen] = useState(false);
  // console.log(storySlots)
  // story라는 이름의 reducer에 있는 state의 userStoryData를 story라는 변수에 넣어두자는 뜻

  const dispatch = useDispatch();
  // dispatch를 쓰기 위해 dispatch를 선언해주어야 함
  const backBtnhandler = () => {
    playBtnSound();
    setTimeout(() => {
      navigate("/");
    }, 100);
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
    const BGM = document.getElementById('mainBGM');
    if (BGM.innerText !== 'storyBGM') {
      BGM.innerText = 'storyBGM';
      BGM.src = null; // 스토리 들어갈 땐 BGM 끄자
    };
    playBtnSound();
    navigate("/Story");
    dispatch({type: "story/choiceSlot", slotNum: 1});
    // console.log("왜 스토리로 넘어가짐?")
  };
  const startStory2 = () => {
    const BGM = document.getElementById('mainBGM');
    if (BGM.innerText !== 'storyBGM') {
      BGM.innerText = 'storyBGM';
      BGM.src = null; // 스토리 들어갈 땐 BGM 끄자
    };
    playBtnSound();
    navigate("/Story");
    dispatch({type: "story/choiceSlot", slotNum: 2});
    // console.log("왜 스토리로 넘어가짐?")
  };
  const startStory3 = () => {
    const BGM = document.getElementById('mainBGM');
    if (BGM.innerText !== 'storyBGM') {
      BGM.innerText = 'storyBGM';
      BGM.src = null; // 스토리 들어갈 땐 BGM 끄자
    };
    playBtnSound();
    navigate("/Story");
    dispatch({type: "story/choiceSlot", slotNum: 3});
    // console.log("왜 스토리로 넘어가짐?")
  };

  // 슬롯 데이터 삭제 로직
  const openDeleteModal = () => {
    playBtnCuteSound();
    setDeleteModalOpen(!deleteModalOpen);
  };
  const deleteSlot1 = async () => {
    playBtnCuteSound();
    let slotCopy = {
      "chapter": 1,
      "likeAutumn": 0,
      "likeSpring": 0,
      "likeSummer": 0,
      "likeWinter": 0,
      "num": 0,
      "script": "script1",
      "slot": 1,
    }
    await setWhichSlotDeleted(1);
    await dispatch(userPutMemory(slotCopy));
    await dispatch(userGetMemory());
    await setDeleteFinModal(true);
    await setTimeout(() => {
      setDeleteFinModal(false);
    }, 500);
  }
  const deleteSlot2 = async () => {
    playBtnCuteSound();
    let slotCopy = {
      "chapter": 1,
      "likeAutumn": 0,
      "likeSpring": 0,
      "likeSummer": 0,
      "likeWinter": 0,
      "num": 0,
      "script": "script1",
      "slot": 2,
    }
    await setWhichSlotDeleted(2);
    await dispatch(userPutMemory(slotCopy));
    await dispatch(userGetMemory());
    await setDeleteFinModal(true);
    await setTimeout(() => {
      setDeleteFinModal(false);
    }, 500);
  }
  const deleteSlot3 = async () => {
    playBtnCuteSound();
    let slotCopy = {
      "chapter": 1,
      "likeAutumn": 0,
      "likeSpring": 0,
      "likeSummer": 0,
      "likeWinter": 0,
      "num": 0,
      "script": "script1",
      "slot": 3,
    }
    await setWhichSlotDeleted(3);
    await dispatch(userPutMemory(slotCopy));
    await dispatch(userGetMemory());
    await setDeleteFinModal(true);
    await setTimeout(() => {
      setDeleteFinModal(false);
    }, 500);
  }

  // 캐릭터 소개 관리 함수
  const openCharInfo = () => {
    playShowMarkdownSound();
    setCharInfoOpen(!charInfoOpen);
  }

  // 효과음 실행 함수
  const playBtnSound = () => {
    const sound = new Audio()
    sound.src = btnSound
    sound.play()
  }

  const playBtnCuteSound = () => {
    const sound = new Audio()
    sound.src = btnCuteSound
    sound.play()
  }

  const playShowMarkdownSound = () => {
    const sound = new Audio()
    sound.src = showMarkdownSound
    sound.play()
  }

  useEffect(() => {
    const BGM = document.getElementById('mainBGM');
    console.log(aitestResult);
    console.log("면접 결과 확인");
    if (BGM.innerText !== 'gameloadBGM') {
      BGM.innerText = 'gameloadBGM';
      BGM.src = gameloadTheme; // 이 노래는 틀자마자 나와서 타이머 살짝 걸어주는게 좋을 것 같음
    }
    // dispatch(userGetMemory());
    // console.log(storySlots);
    const dispatchUserMemory = async () => {
      await dispatch(userGetMemory());
    };
    dispatchUserMemory();
  }, [dispatch]);

  return (
    <>
    <div className="gameloadMain">
      <CharInfoBtn onClick={openCharInfo}>캐릭터 소개</CharInfoBtn>
      {
        charInfoOpen
        ?
        <CharInfoModal onClick={openCharInfo}>
          <CharInfo1></CharInfo1>
          <CharInfo2></CharInfo2>
          <CharInfo3></CharInfo3>
          <CharInfo4></CharInfo4>
        </CharInfoModal>
        : null
      }
      {
        deleteFinModalOpen
        ?
        <DeleteFinModal>{whichSlotDeleted}번 슬롯 삭제 완료!</DeleteFinModal>
        : null
      }
      {
        deleteModalOpen
        ?
        <DeleteSlotModal>
          <div className="storySlotTitle">데이터 삭제</div>
          <div className="storySlot" onClick={deleteSlot1}>슬롯1: {storySlots[0].script}</div>
          <div className="storySlot" onClick={deleteSlot2}>슬롯2: {storySlots[1].script}</div>
          <div className="storySlot" onClick={deleteSlot3}>슬롯3: {storySlots[2].script}</div>
        </DeleteSlotModal>
        : null
      }
        <GameLoadGoHome onClick={backBtnhandler}></GameLoadGoHome>
        <DeleteSlotBtn onClick={openDeleteModal}></DeleteSlotBtn>
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
                <div className="speechBubbleText">{storySlots[2].script}로 가도록 해</div>
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
    </>
  );
};
export default GameLoad;
