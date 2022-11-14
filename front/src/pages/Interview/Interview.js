import React, {useState, useRef, useCallback, useEffect} from "react";
import "./Interview.css";
import Check from "../../components/Interview/Check";
import Webcam from "react-webcam";
import MainImg from "../../asset/images/Main/gohomeIcon.png"
import Interviewer1 from "../../asset/images/Interview/Interviewer/Interviewer1.png"
import Interviewer2 from "../../asset/images/Interview/Interviewer/Interviewer2.png"
import Interviewer3 from "../../asset/images/Interview/Interviewer/Interviewer3.png"
import { useNavigate } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { interviewCheck, getInterviewQuestion } from "../../slices/interviewSlice";

// import { toBlob} from 'html-to-image';
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';

const Interview = () => {
  const name = useSelector((state)=>{
    return state.user.userInfo.nickname
  })
  const navigate = useNavigate()
  const dispatch = useDispatch()

  const question = useSelector((state)=> {
    return state.interview.Question
  })
  const loding = useSelector((state)=> {
    return state.interview.isLoding
  })

  const check = useSelector((state)=>{
    return state.interview.check
  })

  // 볼륨 끄기
  useEffect(() => {
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
  // 웹캠 DOM을 선택할 Ref
  const webcamRef = useRef();
  const capture = useCallback(
     async () => {
      // screenshot(base64) 
      const image = await webcamRef.current.getScreenshot()
      // base64를 jpg File로 변환
      const File = await base64toFile(image)
      dispatch(interviewCheck(File))
    },
    [webcamRef]
  );

  // STT 로직
  const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
  const recognition = new SpeechRecognition;
  recognition.interimResults = true;
  recognition.maxAlternatives = 1 // 클수록 단어 보정효과 커짐
  recognition.lang = "ko-KR";
  recognition.continuous = true // 계속 녹음
  // recognition.Timeouts.InitialSilenceTimeout = TimeSpan.FromSeconds(6.0);
  // recognition.Timeouts.BabbleTimeout = TimeSpan.FromSeconds(4.0);
  // recognition.Timeouts.EndSilenceTimeout = TimeSpan.FromSeconds(1.2);

  const [script, setScript] = useState('')
  recognition.onresult = async (event) => {
    let voice = ''
    for (let i = 0, len = event.results.length; i < len; i++) {
      voice += event.results[i][0].transcript
      console.log(`지금 ${i}번째 transcript:`, event.results[i][0].transcript)
    }
    // resultIndex-마지막 값
    await setScript(voice)
    if (voice.includes('만나서 반갑습니다')) {
      console.log('인식 완료')
      endRec()
    }
  }

  // recognition.addEventListnere("result", async(e) => {
  //   for (let i = e.resultIndex, len = e.result.length; i <len; i++) {
  //     setScript(e.result[i][0].transcript)
  //     console.log(script)
  //   }
  // });

  // useEffect(() => {
  //   console.log('다시')
  // }, [recognition])

  const startRec = () => {
    console.log('음성인식 시작')
    recognition.start()
  }

  const endRec = () => {
    recognition.stop()
    console.log('음성인식 종료',script)
    setScript('')
  }

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

  return (
    <>
      <div className="interviewBack">
        <div className="interviewTopMenu">
          <p className="interviewTitle" >00기업 면접</p>
          <img src={MainImg} alt="MainBtn" className='InterviewMainBtn' onClick={()=>{navigate('/')}} />
        </div>
        
        <div className="InterviewerBack">
          <img className="Interviewer1" src={Interviewer1} alt="Interviewer1" />
          <img className="Interviewer2" src={Interviewer2} alt="Interviewer2" />
          <img className="Interviewer3" src={Interviewer3} alt="Interviewer3" />
        </div>
        <div className="interviewScriptBack">
          <p className="InterviewerName">『누군가의 발언』</p>
          <p className="InterviewContent">질문 내용</p>
          <div>
            <p>버튼모음</p>
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
