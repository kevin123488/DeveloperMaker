import React, {useState, useRef, useCallback, useEffect} from "react";
import "./Interview.css";
import Check from "../../components/Interview/Check";
import Webcam from "react-webcam";
import MainImg from "../../asset/images/Main/gohomeIcon.png"
import { useNavigate } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { getInterviewQuestion, subInterviewData } from "../../slices/interviewSlice";

// import { toBlob} from 'html-to-image';
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';

const Interview = () => {
  // 면접관 선택 ['algorithm', 'frontend', 'backend', 'cs', 'language']
  const interviewer = [1,2,3]
  console.log(interviewer.sample)

  // 사용자 이름
  const name = useSelector((state)=>{
    return state.user.userInfo.nickname
  })

  // 설명
  const helpContent = "면접 질문은 총 3가지이며 질문을 받는 순간부터 1분 간 생각을 정리할 시간을 받고 최대 30초 간 답변할 시간을 받습니다. 남은 시간은 화면 상단 타이머에 표시됩니다."

  // 면접관 기본대사 (1,2,3 번째 면접관 시작 멘트) + 뒤에 질문으로 받아온 내용으로 질문 입력
  const interviewerContent = [`${name}님 첫 번째 질문입니다.`,
    `${name}님 앞선 답변 잘 들었습니다. 두 번째 질문입니다.`,
    `자 ${name}님 그럼 마지막 질문입니다.`]

  const interviewerName = {algorithm: '장지선', frontend: '정찬우', backend: '김대영', cs: '김구현', language: '김지현'}
  


  const [start, setStart] = useState(false)

  const navigate = useNavigate()
  const dispatch = useDispatch()

  // 면접 질문
  const question = useSelector((state)=> {
    return state.interview.Question
  })

  // 현재 로딩중인지 여부
  const loding = useSelector((state)=> {
    return state.interview.isLoding
  })

  // 인터뷰 완료여부
  const check = useSelector((state)=>{
    return state.interview.check
  })

  // 처음 페이지 이동시 볼륨 끄기 + 환경 설정 초기화
  useEffect(() => {
    dispatch({type:'interview/checkInitialize'})
    // BGM
    const mainBGM = document.getElementById('mainBGM')
    // BGM on/off 버튼
    const changeBox = document.getElementById('changeVolumeBox')
    // BGM 끄기(muted는 음소거)
    mainBGM.muted = true
    // BGM 버튼 음소거 처리
    changeBox.className = "muted"
  }, [])


  // 웹캠 캡쳐 후 Jpg 파일로 전환
  // base64 to File 전환 함수
  function base64toFile(base64Img) {
    let arr = base64Img.split(',');
    let mime = arr[0].match(/:(.*?);/)[1];
    let bstr = atob(arr[1]);
    let n = bstr.length;
    let u8arr = new Uint8Array(n);
    while(n--){
        u8arr[n] = bstr.charCodeAt(n);
    }
    return new File([u8arr], "capture.jpg", {type:mime});
  }
  // 캡쳐 파일 변수
  const [capImg, setCapImg] = useState()
  // 웹캠 DOM을 선택할 Ref
  const webcamRef = useRef();
  const capture = useCallback(
     async () => {
      // screenshot(base64) 
      const image = await webcamRef.current.getScreenshot()
      // base64를 jpg File로 변환
      const File = await base64toFile(image)
      setCapImg(File)
    },
    [webcamRef]
  );

  // STT 로직
  // 녹음을 멈출 변수

  // 사용가능 브라우저 확인
  // (typeof SpeechSynthesisUtterance === 'undefined' || typeof speechSynthesis === 'undefined')

  const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
  const recognition1 = new SpeechRecognition;
  recognition1.interimResults = true // 중간 값을 받아봄
  recognition1.maxAlternatives = 1 // 클수록 단어 보정효과 커짐
  recognition1.lang = "ko-KR";
  recognition1.continuous = true // 계속 녹음

  const recognition2 = new SpeechRecognition;
  recognition2.interimResults = true // 중간 값을 받아봄
  recognition2.maxAlternatives = 1 // 클수록 단어 보정효과 커짐
  recognition2.lang = "ko-KR";
  recognition2.continuous = true // 계속 녹음

  // 스크립트
  const [script, setScript] = useState('')
  
  // 실시간 결과값
  recognition1.onresult  = (event) => { 
    let voice = ''
    for (let i = 0, len = event.results.length; i < len; i++) {
      voice += event.results[i][0].transcript
      console.log(`지금 ${i}번째 transcript:`, event.results[i][0].transcript)
    }
    // resultIndex-마지막 값  event.results[i].isFinal - 마지막인지 여부
    setScript(voice)
  }

  // useEffect(() => {
  //   console.log('다시')
  // }, [recognition])

  const startRec = (num) => {
    console.log('음성인식 시작')
    `recognition${num}`.start()
  }

  const endRec = (num) => {
    // 종료를 위해서 한번 바꿨다가 해야함
    `recognition${num}`.stop()
    console.log('음성인식 종료',script)
  }

  // 타이머
  // const [time, setTime] = useState(60)
  // useEffect(() => {
  //   const timer = setInterval(() => {
  //     setTime(time-1)
  //     if (time < 0) {
  //       clearInterval(timer) //setInterval()을 끝냄
  //       setTime(60)
  //     }
  //   }, 1000);
  //   return () => clearInterval(timer);
  // }, [time]);

  // const checkVoice = () => {
  //   if (script.includes('안녕하세요') && script.includes(name)) {
  //     console.log('인식 완료')
  //   }
  //   else {
  //     console.log('안녕하세요 인식', script.includes('안녕하세요'))
  //     console.log('이름 인식', script.includes(name))
  //   }
  //   console.log('==================test==========')
  // }
  // dispatch(getInterviewQuestion('back'))

  const goMain = () => {
    navigate('/')
  }

  // 스타트 버튼
  function recStart () {
    // 시작 변수 변경
    setStart(true)
    // 캡쳐
    capture()
    // 녹음 시작
    startRec()
  }

  // 끝내기 버튼
  const recEnd = async() => {
    // 시작 변수 변경
    setStart(false)
    // 녹음 종료
    endRec()
    // const data = {subjectNo: 1, image: capImg, script: script}
    // dispatch(subInterviewData(data))
  }

  return (
    <>
      <div className="interviewBack">
        <div className="interviewTopMenu">
          <p className="interviewTitle" onClick={()=> { console.log('script를 인쇄 중',script)}} >00기업 면접</p>
          <img src={MainImg} alt="MainBtn" className='InterviewMainBtn' onClick={goMain} />
        </div>
        
        <div className="InterviewerBack">
          {interviewer.map((num)=> {
            return (<img className={`Interviewer${num}`} key={`interviewer-${num}`}
            src={require(`../../asset/images/Interview/Interviewer/Interviewer${num}.png`)} alt={`Interviewer${num}`} />)
          })}
        </div>
        <h1 onClick={()=> {if (start) {recEnd()} else {recStart()}}}>{start ? '끝내기' : '시작'}</h1>
        <div className="interviewScriptBack">
          <p className="InterviewerName">『누군가의 발언』</p>
          <p className="InterviewContent">질문 내용??</p>
          <div>
          </div>
        </div>
        {check.ready && <Webcam
          className="interviewWebCam"
          audio={false}
          ref={webcamRef}
          screenshotFormat="image/jpeg"
          screenshotQuality={1}
        />}
        <Check />
      </div>
    </>
  );
};

export default Interview;
