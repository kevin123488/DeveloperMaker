// 캐릭터별로 있고 마우스 올리면 표정, 자세 바뀌면서 어떤분야 자울학습하는건지 가르쳐주는 거 괜찮을듯

import React, { useState, useRef, useEffect, useCallback } from "react";
import "./Story.css";
import styled, { keyframes } from "styled-components";
import Typo from './TypingText.js'
import Question from './Question.js'
import Option from './Option.js'
import script1 from "./scripts/script1.json";
import script1_1 from "./scripts/script1_1.json";
import script1_2 from "./scripts/script1_2.json";
import script2 from "./scripts/script2.json";
import script3 from "./scripts/script3.json";
import script3_1 from "./scripts/script3_1.json";
import script3_2 from "./scripts/script3_2.json";
import script3_3 from "./scripts/script3_3.json";
import script4 from "./scripts/script4.json";
import script4_1 from "./scripts/script4_1.json";
import script4_2 from "./scripts/script4_2.json";
import script4_3 from "./scripts/script4_3.json";
import script4_4 from "./scripts/script4_4.json";
import script4_1_1 from "./scripts/script4_1_1.json";
import script4_1_2 from "./scripts/script4_1_2.json";
import { useDispatch, useSelector } from "react-redux";
import { userPutMemory } from "../../slices/storySlice";
import { getSelfStudyProgress } from "../../slices/selfstudySlice";
import { readAlbum, putAlbumList, getAlbumCheck } from "../../slices/albumSlice";
import { useNavigate } from "react-router-dom";
import textBackground from "./talkingTab.png";
import hamburger from "./Hamburger.png";
import saveIcon from "./saveIcon.png";
import homeIcon from "./homeIcon.png";
import slotIcon from "./slot.png";
import seobomNonPass from "./seobom_nonpass.png";
import storyGoAlert from "./storyGoAlert.png";
import { userGetMemory } from "../../slices/storySlice";
import seobomLikeIcon from "./seobomLikeIcon.png";
import gaeulLikeIcon from "./gaeulLikeIcon.png";
import geowolLikeIcon from "./geowolLikeIcon.png";
import yeoreumLikeIcon from "./yeoreumLikeIcon.png";
import likeValueIcon from "./likeValueIcon.png";
import checkLikeTitle from "./checkLikeTitle.png";
import GetAlbum from "../../components/Album/GetAlbum";
import nowSlot from "./nowSlot.png";
import btnSound from "../../asset/soundEffects/buttonClick.wav";
import btnCuteSound from "../../asset/soundEffects/buttonCute.wav";
import goSelfStudyBtn from "../../asset/images/SelfstudyImg/selfstudyBtn.png";
import goSelfstudyBubble from "./goSelfstudyBubble.png";

const StoryKeyFrame = keyframes`
  0% {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0.4;
  }
  12.5% {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0.45;
  }
  25% {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0.5;
  }
  37.5% {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0.6;
  }
  50% {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0.65;
  }
  62.5% {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0.7;
  }
  75% {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0.8;
  }
  87.5% {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0.9;
  }
  100% {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 1;
  }
`;

const StoryPage = styled.div`
  width: 100vw;
  height: 100vh;
  transition: 0.5s;
  animation: ${StoryKeyFrame} 0.4s;
  overflow: hidden;
  -webkit-user-select:none;
  -moz-user-select:none;
  -ms-user-select:none;
  user-select:none
`;

const StoryBox = styled.div`
  position: absolute;
  width: 80vw;
  height: 40vh;
  top: 80%;
  left: 50%;
  transform: translate(-50%, -50%);
`;

const StoryTextWrap = styled.div`
  position: relative;
  width: 80vw;
  height: 40vh;
  background-image: url(${textBackground});
  background-size: 80vw 40vh;
`;

const StoryTextBox = styled.div`
  position: absolute;
  top: 55%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 70vw;
  height: 22vh;
  font-size: 1.8vw;
  overflow: auto;
`;

const StoryGoEffect = keyframes`
  0% {
    top: 82%;
    left: 88%;
    transfrom: translate(-50%, -50%);
  }
  25% {
    top: 82%;
    left: 88%;
    transfrom: translate(-50%, -50%);
  }
  50% {
    top: 80%;
    left: 88%;
    transfrom: translate(-50%, -50%);
  }
  75% {
    top: 82%;
    left: 88%;
    transfrom: translate(-50%, -50%);
  }
  100% {
    top: 82%;
    left: 88%;
    transfrom: translate(-50%, -50%);
  }
`;

const StoryPassAlert = styled.div`
  cursor: pointer;
  position: absolute;
  top: 82%;
  left: 88%;
  transfrom: translate(-50%, -50%);
  height: 6vh;
  width: 6vw;
  background-image: url(${storyGoAlert});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
  animation: ${StoryGoEffect} infinite 1s;
`;

const StoryHamburger = styled.div`
  z-index: 1;
  position: absolute;
  cursor: pointer;
  top: 10%;
  right: 5%;
  transform: translate(0%, -50%);
  width: 4vw;
  height: 4vw;
  background: url(${hamburger}) center no-repeat;
  background-size: 4vw 4vw;
  border-radius: 1000px;
  box-shadow: 1px 1px 1px 1px #79491e;
  transition: 0.2s;
  &:active {
    top: 11%;
  }
`;

const ModalEffect = keyframes`
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
`;

const StoryNavigate = styled.div`
  position: absolute;
  top: 15%;
  right: 5%;
  width: 4vw;
  height: 50vh;
  background: white;
  border-radius: 20px;
  border: 5px solid #79491e;
  animation: ${ModalEffect} 0.4s;
`;

const StorySaveBtn = styled.div`
  z-index: 1;
  position: absolute;
  cursor: pointer;
  top: 20%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 2.5vw;
  height: 2.5vw;
  background-image: url(${saveIcon});
  background-size: 2.5vw 2.5vw;
  background-repeat: no-repeat;
  transition: 0.2s;
  &:active {
    top: 22%;
  }
`;

const StoryGoHome = styled.div`
  z-index: 1;
  position: absolute;
  cursor: pointer;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 2.5vw;
  height: 2.5vw;
  background-image: url(${homeIcon});
  background-size: 2.5vw 2.5vw;
  background-repeat: no-repeat;
  transition: 0.2s;
  &:active {
    top: 42%;
  }
`;

const StoryGoSlot = styled.div`
  z-index: 1;
  position: absolute;
  cursor: pointer;
  top: 60%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 2.5vw;
  height: 2.5vw;
  background-image: url(${slotIcon});
  background-size: 2.5vw 2.5vw;
  background-repeat: no-repeat;
  transition: 0.2s;
  &:active {
    top: 62%;
  }
`;

const StoryLikeCheck = styled.div`
  z-index: 1;
  position: absolute;
  cursor: pointer;
  top: 80%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 2.5vw;
  height: 2.5vw;
  background-image: url(${likeValueIcon});
  background-size: 2.5vw 2.5vw;
  transition: 0.2s;
  &:active {
    top: 82%;
  }
`;

const SaveSlotEffect = keyframes`
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

const likeModalEffect = keyframes`
  from {
    transform: translate(-100%, 0%) scale(0);
  }
  to {
    transform: translate(-100%, 0%) scale(1);
  }
`;

const StoryLikeModal = styled.div`
  z-index: 1;
  position: absolute;
  top: 0%;
  left: 0%;
  transform: translate(-100%, 0%);
  width: 15vw;
  height: 25vh;
  background: white;
  transition: 0.4s;
  border-radius: 20px;
  border: 5px solid #79491e;
  animation: ${likeModalEffect} 0.1s;
`;

const StoryLikeCheckTitle = styled.div`
  position: absolute;
  top: 15%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 10vw;
  height: 4vw;
  background-image: url(${checkLikeTitle});
  background-size: 10vw 4vw;
`;

const StorySpringLike = styled.div`
  cursor: pointer;
  position: absolute;
  top: 30%;
  left: 10%;
  width: 3vw;
  height: 3vw;
  background-image: url(${seobomLikeIcon});
  background-size: 3vw 3vw;
  &:hover {
    position: absolute;
    top: 30%;
    left: 10%;
    animation: vibration 1s infinite;
    width: 3.2vw;
    height: 3.2vw;
    background-size: 3.2vw 3.2vw;
  }
`;
const StorySummerLike = styled.div`
  cursor: pointer;
  position: absolute;
  top: 30%;
  left: 55%;
  width: 3vw;
  height: 3vw;
  background-image: url(${yeoreumLikeIcon});
  background-size: 3vw 3vw;
  &:hover {
    position: absolute;
    top: 30%;
    left: 55%;
    animation: vibration 1s infinite;
    width: 3.2vw;
    height: 3.2vw;
    background-size: 3.2vw 3.2vw;
  }
`;
const StoryAutumnLike = styled.div`
  cursor: pointer;
  position: absolute;
  top: 65%;
  left: 10%;
  width: 3vw;
  height: 3vw;
  background-image: url(${gaeulLikeIcon});
  background-size: 3vw 3vw;
  &:hover {
    position: absolute;
    top: 65%;
    left: 10%;
    animation: vibration 1s infinite;
    width: 3.2vw;
    height: 3.2vw;
    background-size: 3.2vw 3.2vw;
  }
`;
const StoryWinterLike = styled.div`
  cursor: pointer;
  position: absolute;
  top: 65%;
  left: 55%;
  width: 3vw;
  height: 3vw;
  background-image: url(${geowolLikeIcon});
  background-size: 3vw 3vw;
  &:hover {
    position: absolute;
    top: 65%;
    left: 55%;
    animation: vibration 1s infinite;
    width: 3.2vw;
    height: 3.2vw;
    background-size: 3.2vw 3.2vw;
  }
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

const StoryNonPassedModal = styled.div`
  z-index: 25;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  background: white;
  width: 100vw;
  height: 100vh;
  background-image: url(${seobomNonPass});
  background-size: 100vw 100vh;
`;

const StoryNonPassedText = styled.div`
  position: absolute;
  padding: auto;
  top: 25%;
  left: 25%;
  transform: translate(-50%, -50%);
  height: 20vw;
  width: 25vw;
  text-align: center;
  font-size: 1.5vw;
  display: flex;
  justify-content: center;
  align-items: center;
  background-image: url(${goSelfstudyBubble});
  background-size: 25vw 20vw;
`;

const StoryGoSelfstudy = styled.div`
  cursor: pointer;
  position: absolute;
  top: 80%;
  left: 80%;
  transform: translate(-50%, -50%);
  height: 7.5vw;
  font-size: 1.5vw;
  line-height: 7.5vw;
  color: white;
  overflow: hidden;
  width: 15vw;
  text-align: center;
  background-image: url(${goSelfStudyBtn});
  background-size: contain;
  background-repeat: no-repeat;
  background-position: center;
  transition: 0.2s;
  &:hover {
    transform: translate(-50%, -50%) scale(1.05);
  }
  &:active {
    top: 83%;
  }
`;

const StoryGetAlbumModal = styled.div`
  z-index: 3;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  cursor: pointer;
  width: 50vw;
  height: 50vh;
  background: black;
`;

const SaveSlotSelector = styled.div`
  z-index: 3;
  position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 25vw;
  height: 30vh;
  background: white;
  border-radius: 5px;
  border: 2px solid #79491e;
  animation: ${SaveSlotEffect} 0.1s;
`;

const PointerEffect = keyframes`
  0% {
    top: 50%;
    left: 90%;
    transform: translate(-50%, -50%);
  }
  25% {
    top: 50%;
    left: 90%;
    transform: translate(-50%, -50%);
  }
  50% {
    top: 45%;
    left: 90%;
    transform: translate(-50%, -50%);
  }
  75% {
    top: 50%;
    left: 90%;
    transform: translate(-50%, -50%);
  }
  100% {
    top: 50%;
    left: 90%;
    transform: translate(-50%, -50%);
  }
`;

const NowSlotPointer = styled.div`
  position: absolute;
  top: 50%;
  left: 90%;
  transform: translate(-50%, -50%);
  z-index: 4;
  width: 3vw;
  height: 1.5vw;
  background-image: url(${nowSlot});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
  animation: ${PointerEffect} infinite 1s;
`;

const SaveFinModal = styled.div`
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

const Story = () => {
  const story =  useSelector((state) => {return state.story.userStoryData}); // 유저가 갖고있는 슬롯 3개의 데이터
  const slotIndex = useSelector((state) => {return state.story.selectedSlot}); // 몇번 슬롯 선택했는지 확인
  const userAlbumCheck = useSelector((state) => {return state.album.haveCheck}); // 추가하고자 하는 앨범 아이디가 사용자 보유 목록에 있는지 없는지 결과값
  const aitestResult = useSelector((state) => state.interview.result); 
  // console.log(userAlbumCheck);
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
  // console.log(story);
  // console.log(slotIndex);
  // console.log(storyInfo);
  const scriptFileName = useRef(storyInfo.script); // 저장시 사용할 스크립트 파일 이름
  // console.log(storyInfo.script);
  // const scriptFileName = useRef("script1"); // 저장시 사용할 스크립트 파일 이름
  const [storyObj, setStoryObj] = useState(storyInfo); // 저장 대상
  const storyObjCheck = useRef(false);
  const firstRenderControl = useRef(false);
  const storyTeller = useRef('');
  // 보여줄 이미지 관리
  const backgroundImg = useRef('bus');
  const leftCharImg = useRef('a');
  const middleCharImg = useRef('a');
  const rightCharImg = useRef('a');
  const [hamburgerOpened, sethamburgerOpened] = useState(true);
  const navigate = useNavigate();
  // changeScript일 때 자율학습 진행도에 따라 보여줄 것
  // const selfStudyNonpassed = useRef(false);
  const [selfStudyNonpassed, setSelfStudyNonpassed] = useState(false);
  const [selfStudyChanged, setSelfStudyChanged] = useState(0);
  const selfStudyRequired = useRef(-1);
  const userProgress = useSelector((state) => {return state.study.progress}); // 유저의 자율학습 진행도 확인
  const firstPassCheck = useRef(false);
  const selfStudyNonpassedCheck = useRef(false);
  const userAlbumCheckfirst = useRef(false);
  const [canGoNext, setCanGoNext] = useState(true); // 스크립트 넘기는 속도 관리
  // next 버튼 따로 만들어주자
  const getAlbum = useRef(0); // 획득할 앨범 번호
  const [openLikeValue, setOpenLikeValue] = useState(false);
  const [dataSaveSlot, setDataSaveSlot] = useState(-1); // 몇번 슬롯 선택해서 저장시킬지 관리
  const [openSlotSelector, setOpenSlotSelector] = useState(false); // 저장 슬롯 선택창 띄우는 값
  const [saveFinModalControler, setSaveFinModalControler] = useState(false); // 저장 완료 후 결과 모달 관리
  // 앨범 뽑기 보여주기용 변수
  const show = useSelector((state)=>{
    return state.album.albumPickShow
  })
  // 앨범 뽑기 함수
  const putAlbum =  async(albumId) => {
    const response = await dispatch(getAlbumCheck(albumId))
    // 중복이면 true이므로 false일 때 실행
    if (!response.payload) {
      dispatch(putAlbumList(albumId))
    }
  }
  // 이름 세팅
  const UserInfo = useSelector((state)=>{
    return state.user.userInfo
  })
  // 이름
  const [nickname, setNickname] = useState(UserInfo.nickname)

  // ai면접 통과여부
  const isPass = useSelector((state)=>{
    // 누적값의 합이 180 이상 이거나
    return ((state.interview.result.reduce((acc, element) =>{
      return acc + element.totalScore
    },0) >= 180) &&
    // 2회 이상 통과한 경우(두 질문에서 60점 이상)
    (state.interview.result.reduce((acc, element) => {
      if (element.pass) {
        return acc + 1
      } else {
        return acc
      }
    },0 ) > 1))
  })


  useEffect(() => {
    console.log(aitestResult);
    console.log(isPass);
    console.log("ai면접 결과");
    changeStoryInfo(story[slotIndex-1]); // 선택한 스토리 슬롯의 정보가 storyInfo에 담김
    // console.log(storyInfo)
    setDataSaveSlot(slotIndex-1); // 몇 번 슬롯에 저장할지 확인
    console.log(dataSaveSlot);
    scriptFile.current = scripts[storyInfo.script]; // 스크립트 파일 교체(script라는 문자열로 옴)
    scriptIndex.current = storyInfo.num; // 스크립트 인덱스 교체
    changeScript(scriptFile.current[scriptIndex.current].text);
    // console.log(scriptIndex.current)
    storyTeller.current = scriptFile.current[scriptIndex.current].storyTeller;
    backgroundImg.current = scriptFile.current[scriptIndex.current].backgroundImageUrl;
    leftCharImg.current = scriptFile.current[scriptIndex.current].LeftImageUrl2;
    // console.log(leftCharImg.current);
    // console.log(backgroundImg.current);
    middleCharImg.current = scriptFile.current[scriptIndex.current].centerImageUrl;
    rightCharImg.current = scriptFile.current[scriptIndex.current].RightImageUrl3;
    console.log(scriptFile.current)
    console.log(scriptIndex.current)
    console.log(scriptFile.current[scriptIndex.current])
    console.log("이미지 파일 확인하자", backgroundImg.current, middleCharImg.current);
  }, []);

  useEffect(() => {
    // console.log(scriptFile.current[scriptIndex.current].backgroundImageUrl);
    increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex
    // console.log(scriptFile.current[scriptIndex.current].plusIndex);
    backgroundImg.current = scriptFile.current[scriptIndex.current].backgroundImageUrl;
    // console.log(backgroundImg.current);
    leftCharImg.current = scriptFile.current[scriptIndex.current].LeftImageUrl2;
    // console.log(leftCharImg.current);
    middleCharImg.current = scriptFile.current[scriptIndex.current].centerImageUrl;
    rightCharImg.current = scriptFile.current[scriptIndex.current].RightImageUrl3;
  }, [scriptFile.current])

  useEffect(() => {
    if (storyObjCheck.current) {
      console.log("storyObj 변경되면 저장 로직 실행시키자")
      dispatch(userPutMemory(storyObj));
    }
    storyObjCheck.current = true;
  }, [storyObj]);

  // useEffect(() => {
  //   if (userProgress > selfStudyRequired.current) {

  //   }
  // }, [userProgress]);

  useEffect(() => {
    // console.log("saveStoryIdx 값 변경");
    if (firstRenderControl.current) {
      storyObjHandler(saveStoryIdx, scriptFileName.current);
    };
    firstRenderControl.current = true;
  }, [saveStoryIdx]);

  useEffect(() => {
    // console.log('프로그래스 진척도 받아오나?')
    if (firstPassCheck.current) {
      console.log('이거 찍히는 것 같은데?');
      let whichProgress = scriptFile.current[scriptIndex.current].whichSelfStudy;
      console.log(whichProgress);
      console.log(userProgress[whichProgress]);
      console.log(scriptFile.current[scriptIndex.current].selfStudyRequired[whichProgress]);
      if (userProgress[whichProgress] < scriptFile.current[scriptIndex.current].selfStudyRequired[whichProgress]) {
        setSelfStudyNonpassed(true);
        setSelfStudyChanged(selfStudyChanged+1);
        console.log('모달 띄워라');
      } else {
        setSelfStudyNonpassed(false);
        setSelfStudyChanged(selfStudyChanged+1);
        console.log(userProgress);
        console.log('스크립트 넘겨라');
      }
    } else {
      // console.log('스터디 논패스 여부 확인 안된 상황');
    }
    firstPassCheck.current = true;
  }, [userProgress]);

  useEffect(() => {
    if (selfStudyNonpassedCheck.current) {
      console.log('스터디 논패스 여부 변경 확인');
      if (selfStudyNonpassed) {
        console.log("통과 못했다는 모달 띄워줘야 함");
      } else {
        console.log('통과했나?');
        // 통과했다면?
        // 보유 여부 확인하자
        // dispatch(getAlbumCheck(scriptFile.current[scriptIndex.current].getAlbumNum));
        // 여기서 실행하면 될 것 같은데?
        // 앨범체크 실행한 다음 결과값을 가지고 바로 받을지 말지 결정하면 될듯?
        putAlbum(scriptFile.current[scriptIndex.current].getAlbumNum);
        // 앨범 목록 갱신되면?
        // readAlbum 쓸 필요 없어짐
        // 보내고자 하는 앨범id를 보유중인지 아닌지 확인하는 요청 보내고
        // 그 값 세팅되면 false일 때 앨범 추가하는 로직 넣으면 될 듯
        
        // 스크립트 파일 바꿔주고 인덱스 바꿔줘야 함
        scriptFileName.current = scriptFile.current[scriptIndex.current].nextScript
        storyObjHandler(0, scriptFileName.current);
        scriptFile.current = scripts[scriptFile.current[scriptIndex.current].nextScript]
        // 스크립트 파일 이름을 바꿔주고
        scriptIndex.current = 0
        // 보여줄 부분 바꿔주고
        increaseIndex.current = 1
        // 인덱스 변화폭 세팅 기본값으로 넣어주고


        // selfstudy 진행도 값 넣어주는 로직 필요
        changeScript(scriptFile.current[scriptIndex.current].text);
      }
    }
    selfStudyNonpassedCheck.current = true;
  }, [selfStudyChanged]);

  // useEffect(() => {
  //   console.log("앨범 체크 값 변경");
  //   if (userAlbumCheckfirst.current) {
  //     console.log(userAlbumCheck);
  //     if (userAlbumCheck[0]) {
  //       console.log("앨범에 있음");
  //       // 실험용
  //       // setOpenAlbumGetModal(true);
  //       // 실험용
  //     } else {
  //       console.log("앨범에 없음");
  //       setOpenAlbumGetModal(true); // 띄우자
  //       console.log(scriptFile.current);
  //       console.log(scriptIndex.current);
  //       console.log(scriptFile.current[scriptIndex.current]);
  //       console.log(scriptFile.current[scriptIndex.current].getAlbumNum);
  //       console.log(getAlbum);
  //       dispatch(putAlbumList(getAlbum.current));
  //       // 앨범 획득 이펙트 보여주는 거 띄우는 값 설정하자
  //     }
  //   }
  //   userAlbumCheckfirst.current = true;
  //   console.log(userAlbumCheckfirst.current);
  // }, [userAlbumCheck]);

  const [storyMap] = useState(
  { 
    3: [6, 4, 6, 4],
  });

  const [scripts] = useState(
    { 
      "script1": script1,
      "script1_1": script1_1,
      "script1_2": script1_2,
      "script2": script2,
      "script3": script3,
      "script3_1": script3_1,
      "script3_2": script3_2,
      "script3_3": script3_3,
      "script4": script4,
      "script4_1": script4_1,
      "script4_1_1": script4_1_1,
      "script4_1_2": script4_1_2,
      "script4_2": script4_2,
      "script4_3": script4_3,
      "script4_4": script4_4,
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

  // 인게임 저장 및 기타 버튼 수납고 열기
  const ocHamburger = () => {
    playBtnCuteSound();
    sethamburgerOpened(!hamburgerOpened);
  };

  const saveStory = () => { 
    // 얘가 애매한게, 어느 시점에 저장하든 문제 전후 부분에서 저장된 부분부터 실행
    // 돼서 자동저장이랑 큰 차이가 없어짐
    // console.log("저장되나?");
    // let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    // setStoryObj(storyObjCopy);
    setSaveStoryIdx(scriptIndex.current);
  }

  // 저장 버튼 누르면 슬롯 선택창 띄워야 함
  const openSaveSlot = () => {
    playBtnCuteSound();
    setOpenSlotSelector(!openSlotSelector); // 모달 여닫이
  }

  // 저장 버튼 로직
  const saveStory1 = () => {
    playBtnCuteSound();
    saveStorySelf(1);
  }
  const saveStory2 = () => {
    playBtnCuteSound();
    saveStorySelf(2);
  }
  const saveStory3 = () => {
    playBtnCuteSound();
    saveStorySelf(3);
  }

  // 슬롯 변경 포함해서 저장하는 로직
  // 자동저장은 ok
  // 슬롯 선택 후 저장은 questionResult냐 아니냐에 따리 바뀌어야 할 듯
  // questionResult 일 때 
  const saveStorySelf = (n) => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    storyObjCopy.slot = n;
    if (scriptFile.current[scriptIndex.current].scriptType === 'questionResult') {
      console.log("여기선 increaseIndex 값을 반영하여 저장해야 함");
      storyObjCopy.num = scriptIndex.current + increaseIndex.current; // questionResult 일 때
    } else {
      storyObjCopy.num = scriptIndex.current
    }
    storyObjCopy.script = scriptFileName.current;
    setStoryObj(storyObjCopy); // 값 새로 세팅한 후 저장 ㄱ
    setSaveFinModalControler(true);
    setTimeout(() => {
      setSaveFinModalControler(false);
    }, 1000);
  }

  const goHome = () => {
    playBtnSound();
    navigate("/");
    console.log("홈으로 가는 중입니다.");
  }

  const goSlot = () => {
    playBtnSound();
    navigate("/Game");
  }

  const goSelfStudy = () => {
    playBtnSound();
    navigate("/SelfStudy");
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
    storyObjCopy.slot = slotIndex; // 자동저장하는 슬롯은 선택한 슬롯이어야 함
    // 실험
    storyObjCopy.num = scriptIndex.current + increaseIndex.current;
    storyObjCopy.script = scriptFileName.current;
    // 실험끝
    console.log("서봄 호감도 갱신", storyObjCopy);
    setStoryObj(storyObjCopy);
  }
  const storyObjSummer = (summer) => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    storyObjCopy.likeSummer += summer;
    storyObjCopy.slot = slotIndex; // 자동저장하는 슬롯은 선택한 슬롯이어야 함
    // 실험
    storyObjCopy.num = scriptIndex.current + increaseIndex.current;
    storyObjCopy.script = scriptFileName.current;
    // 실험끝
    setStoryObj(storyObjCopy);
  }
  const storyObjAutumn = (autumn) => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    storyObjCopy.likeAutumn += autumn;
    storyObjCopy.slot = slotIndex; // 자동저장하는 슬롯은 선택한 슬롯이어야 함
    // 실험
    storyObjCopy.num = scriptIndex.current + increaseIndex.current;
    storyObjCopy.script = scriptFileName.current;
    // 실험끝
    setStoryObj(storyObjCopy);
  }
  const storyObjWinter = (winter) => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    storyObjCopy.likeWinter += winter;
    storyObjCopy.slot = slotIndex; // 자동저장하는 슬롯은 선택한 슬롯이어야 함
    // 실험
    storyObjCopy.num = scriptIndex.current + increaseIndex.current;
    storyObjCopy.script = scriptFileName.current;
    // 실험끝
    setStoryObj(storyObjCopy);
  }

  // ai면접시 진행도 자동저장
  const saveAiTest = () => {
    let storyObjCopy = JSON.parse(JSON.stringify(storyObj));
    storyObjCopy.slot = slotIndex;
    storyObjCopy.num = scriptIndex.current + increaseIndex.current;
    storyObjCopy.script = scriptFileName.current;
    setStoryObj(storyObjCopy);
  };

  // 앨범 획득 모달 관련 함수

  // 호감도 수치 보여주는 부분 관리하는 함수
  const getLikeValue = () => {
    playBtnCuteSound();
    console.log(story[slotIndex-1].likeAutumn);
    dispatch(userGetMemory());
    setOpenLikeValue(!openLikeValue);
  };

  // 엔터키로 넘기기
  const enterGoNext = (e) => {
    if (e.key === "Enter" && canGoNext && !isOption && !isQuestion && !selfStudyNonpassed && !show) {
      console.log(e.key);
      nextScript();
    }
  };

  // 효과음 함수
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

  function nextScript(n) {
    playBtnCuteSound();
    setCanGoNext(false);
    setTimeout(() => {
      setCanGoNext(true);
    }, 370);
    scriptIndex.current += increaseIndex.current;
    if (scriptFile.current[scriptIndex.current].storyTeller === "주인공") {
      storyTeller.current = nickname;
    } else {
      storyTeller.current = scriptFile.current[scriptIndex.current].storyTeller;
    }
    backgroundImg.current = scriptFile.current[scriptIndex.current].backgroundImageUrl;
    leftCharImg.current = scriptFile.current[scriptIndex.current].LeftImageUrl2;
    middleCharImg.current = scriptFile.current[scriptIndex.current].centerImageUrl;
    rightCharImg.current = scriptFile.current[scriptIndex.current].RightImageUrl3;
    // console.log(scriptIndex.current)
    // console.log(storyTeller.current)
    switch(scriptFile.current[scriptIndex.current].scriptType) {
      case 'text':  
        changeScript(scriptFile.current[scriptIndex.current].text)
        increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex
        // console.log(scriptFile.current[scriptIndex.current])
        // console.log(increaseIndex.current);
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
        // setSaveStoryIdx(scriptIndex.current + increaseIndex.current); // 현재 보고있는 인덱스 + 1 시점에서 로드 가능하도록
        console.log(scriptIndex.current);
        console.log(increaseIndex.current);
        console.log(saveStoryIdx);
        console.log(scriptFile.current);
        console.log(storyInfo.script);
        console.log("스토리오브젝트핸들러", saveStoryIdx, scriptFileName.current)
        //
        backgroundImg.current = scriptFile.current[scriptIndex.current].resultList[n].backgroundImageUrl;
        leftCharImg.current = scriptFile.current[scriptIndex.current].resultList[n].LeftImageUrl2;
        middleCharImg.current = scriptFile.current[scriptIndex.current].resultList[n].centerImageUrl;
        rightCharImg.current = scriptFile.current[scriptIndex.current].resultList[n].RightImageUrl3;
        //
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
        // scriptFile.current = scripts[scriptFile.current[scriptIndex.current].nextScript]
        // scriptFileName.current = scriptFile.current[scriptIndex.current].nextScript
        // 스크립트 파일 이름을 바꿔주고
        // scriptIndex.current = 0
        // 보여줄 부분 바꿔주고
        // increaseIndex.current = 1
        // 인덱스 변화폭 세팅 기본값으로 넣어주고
        // selfstudy 진행도 값 넣어주는 로직 필요
        // changeScript(scriptFile.current[scriptIndex.current].text)
        dispatch(getSelfStudyProgress());
        console.log(scriptFile.current[scriptIndex.current].getAlbumNum);
        // 스크립트 파일 바꿔주고 인덱스 바꿔줘야 함
        console.log(scriptFile.current[scriptIndex.current].getAlbumNum);
        getAlbum.current = scriptFile.current[scriptIndex.current].getAlbumNum;
        // 자율학습 진행도 받아옴 -> userProgress 값 변경 -> 그거 보고있던 useEffect에서 바뀜 감지
        // -> userProgress값과 현재 보고있는 스크립트의 selfStudyRequired값과 비교
        // userProgress값이 더 작으면? selfStudyNonPassed 값 true로 바꿈
        // selfStudyNonPassed 값을 if문에 사용. true면 통과 못한거니까 모달을 띄워주는거
        // 실행시키면 될 것 같음
        // selfStudyNonPassed 값이 false일 경우
        // 텍스트 바꿔주는 로직 실행
        // userProgress값이 더 작으면? 모달 하나 띄워주자(자율학습 갔다오세요)

        // scriptFile.current = scripts[scriptFile.current[scriptIndex.current].nextScript]
        // scriptFileName.current = scriptFile.current[scriptIndex.current].nextScript
        // 스크립트 파일 이름을 바꿔주고
        // scriptIndex.current = 0
        // 보여줄 부분 바꿔주고
        // increaseIndex.current = 1
        // 인덱스 변화폭 세팅 기본값으로 넣어주고
        // selfstudy 진행도 값 넣어주는 로직 필요
        // changeScript(scriptFile.current[scriptIndex.current].text)

        // 이 시점에서도 저장 필요함
        // 자율학습 진행도 불러와서 비교, 일정 값 이상이면 패스해주는 로직 필요
        // if (자율학습 진행도 >= scriptFile.current[scriptIndex.current.hahanseun]) {
        //   위에 써둔 스크립트 진행시키는 로직 ㄱ
        // } else {
        //   대충 캐릭터가 "자율학습 더 풀고 오세요" 하는 화면으로 넘겨버리는 로직 추가 
        // }
        // 학습도 받아오고 useEffect 이용해서 값 변경될 때 비교 후 로직 수행
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
        // 여기선 저장할 때 chapter 정보와 인덱스 0 정보만 갱신해서 넣으면 될 것 같음
        break;

      case 'goAiTest':
        console.log("ai면접");
        saveAiTest();
        if (scriptFile.current[scriptIndex.current].whostory === '서봄') {
          navigate('/Interview', {state: {story: 'spring'}})
        } else if (scriptFile.current[scriptIndex.current].whostory === '차가을') {
          navigate('/Interview', {state: {story: 'fall'}})
        } else if (scriptFile.current[scriptIndex.current].whostory === '한여름') {
          navigate('/Interview', {state: {story: 'summer'}})
        } else if (scriptFile.current[scriptIndex.current].whostory === '한겨울') {
          navigate('/Interview', {state: {story: 'winter'}})
        }
        // 해당 스토리에 맞춰 story 값 변경 ex) 서봄: 'spring', 차가을: 'fall',
        // 한겨울: 'winter', 전부: 'total'
        break;

      case 'afterAiTest':
        changeScript(scriptFile.current[scriptIndex.current].text)
        if (isPass) {
          increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex;
          saveAiTest();
        } else {
          increaseIndex.current = scriptFile.current[scriptIndex.current].failPlusIndex;
          saveAiTest();
        }
        break;

      case 'likeBranch':
        changeScript(scriptFile.current[scriptIndex.current].text)
        if (scriptFile.current[scriptIndex.current].whoLikeBranch === '서봄') {
          if (story[slotIndex-1].likeSpring >= 50) {
            increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex;
          } else {
            increaseIndex.current = scriptFile.current[scriptIndex.current].failPlusIndex;
          }
        } else if (scriptFile.current[scriptIndex.current].whoLikeBranch === '차가을') {
          if (story[slotIndex-1].likeAutumn >= 50) {
            increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex;
          } else {
            increaseIndex.current = scriptFile.current[scriptIndex.current].failPlusIndex;
          }
        } else if (scriptFile.current[scriptIndex.current].whoLikeBranch === '한여름') {
          if (story[slotIndex-1].likeSummer >= 50) {
            increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex;
          } else {
            increaseIndex.current = scriptFile.current[scriptIndex.current].failPlusIndex;
          }
        } else if (scriptFile.current[scriptIndex.current].whoLikeBranch === '한겨울') {
          if (story[slotIndex-1].likeWinter >= 50) {
            increaseIndex.current = scriptFile.current[scriptIndex.current].plusIndex;
          } else {
            increaseIndex.current = scriptFile.current[scriptIndex.current].failPlusIndex;
          }
        }
        break;

      case 'end':
        console.log('end');
        break;

      default:
    }
  }

  return (
    <>
    <StoryPage
    onKeyDown={enterGoNext}
    tabIndex={0}>
      {show && <GetAlbum />}
      <StoryHamburger onClick={ocHamburger}></StoryHamburger>
      {
        openSlotSelector
        ?
        <SaveSlotSelector>
          <div className="storySlotTitle">저장슬롯 선택</div>
          <div className="storySlot" onClick={saveStory1}>슬롯1: {story[0].script}
            {
              slotIndex === 1
              ?
              <NowSlotPointer></NowSlotPointer>
              : null
            }
          </div>
          <div className="storySlot" onClick={saveStory2}>슬롯2: {story[1].script}
            {
              slotIndex === 2
              ?
              <NowSlotPointer></NowSlotPointer>
              : null
            }
          </div>
          <div className="storySlot" onClick={saveStory3}>슬롯3: {story[2].script}
            {
              slotIndex === 3
              ?
              <NowSlotPointer></NowSlotPointer>
              : null
            }
          </div>
        </SaveSlotSelector>
        : null
      }
      {
        saveFinModalControler
        ?
        <SaveFinModal>저장 완료!</SaveFinModal>
        : null
      }
      {
        hamburgerOpened
        ?
        <StoryNavigate>
          <StorySaveBtn onClick={openSaveSlot}></StorySaveBtn>
          <StoryGoHome onClick={goHome}></StoryGoHome>
          <StoryGoSlot onClick={goSlot}></StoryGoSlot>
          <StoryLikeCheck onClick={getLikeValue}></StoryLikeCheck>
          {
            openLikeValue
            ?
            <StoryLikeModal>
              <StoryLikeCheckTitle></StoryLikeCheckTitle>
              <StorySpringLike>
                <div className="storyLikeValue">: {story[slotIndex-1].likeSpring}</div>
              </StorySpringLike>
              <StorySummerLike>
                <div className="storyLikeValue">: {story[slotIndex-1].likeSummer}</div>
              </StorySummerLike>
              <StoryAutumnLike>
                <div className="storyLikeValue">: {story[slotIndex-1].likeAutumn}</div>
              </StoryAutumnLike>
              <StoryWinterLike>
                <div className="storyLikeValue">: {story[slotIndex-1].likeWinter}</div>
              </StoryWinterLike>
              {/* <div>서봄호감도: {story[slotIndex-1].likeSpring}</div>
              <div>차가을호감도: {story[slotIndex-1].likeAutumn}</div>
              <div>한여름호감도: {story[slotIndex-1].likeSummer}</div>
              <div>한겨울호감도: {story[slotIndex-1].likeWinter}</div> */}
            </StoryLikeModal>
            : null
          }
        </StoryNavigate>
        : null
      }
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
      <StoryBox>
        {/* <StoryTeller> */}
        <div className="storyTeller">
          <div className="storyTellerText">
            {storyTeller.current}
          </div>
        </div>
        {/* </StoryTeller> */}
        {/* <StorySaveBox onClick={saveStory}></StorySaveBox> */}
        <StoryTextWrap>
          {
            isQuestion || isOption
            ?
            <StoryTextBox>
              <Typo scriptText={scriptText}/>
            </StoryTextBox>
            :
            <StoryTextBox>
              <Typo scriptText={scriptText}/>
            </StoryTextBox>
          }
          {/* <StoryTextBox onClick={nextScript}>
            <Typo scriptText={scriptText}/>
          </StoryTextBox> */}
        </StoryTextWrap>
        {
          canGoNext && !isOption && !isQuestion
          ?
          <StoryPassAlert 
          onClick={nextScript}></StoryPassAlert>
          : null
        }
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

        {
          selfStudyNonpassed
          ?
          <StoryNonPassedModal>
              <StoryNonPassedText>
                  자율학습의 {scriptFile.current[scriptIndex.current].whichSelfStudy} 항목으로 가서 진행도를 
                  {scriptFile.current[scriptIndex.current].selfStudyRequired[scriptFile.current[scriptIndex.current].whichSelfStudy]}
                  %까지 채워오도록 해.
              </StoryNonPassedText>
            <StoryGoSelfstudy onClick={goSelfStudy}>
              자율학습 가기
            </StoryGoSelfstudy>
          </StoryNonPassedModal>
          : null
        }
    </StoryPage>
    </>
  );
};
  
export default Story;