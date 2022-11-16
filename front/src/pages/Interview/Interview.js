import React, {useState, useRef, useCallback, useEffect} from "react";
import "./Interview.css";
import Check from "../../components/Interview/Check";
import Result from "../../components/Interview/Result";
import Webcam from "react-webcam";
import MainImg from "../../asset/images/Main/gohomeIcon.png"
import { useNavigate } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { getInterviewQuestion, subInterviewData } from "../../slices/interviewSlice";

const Interview = () => {
  const navigate = useNavigate()
  const dispatch = useDispatch()

  // 사용자 이름
  const name = useSelector((state)=>{
    return state.user.userInfo.nickname
  })

  // 면접관 선택 ['algorithm', 'frontend', 'backend', 'cs', 'language']
  const interviewer = ['algorithm', 'cs', 'language']
  // 설명
  const helpContent = "면접 질문은 총 3가지이며 질문을 받는 순간부터 1분 간 생각을 정리할 시간을 받고 최대 30초 간 답변할 시간을 받습니다. 남은 시간은 화면 상단 타이머에 표시됩니다."
  // 면접관 기본대사 (1,2,3 번째 면접관 시작 멘트) + 뒤에 질문으로 받아온 내용으로 질문 입력
  const interviewerContent = [`${name}님 첫 번째 질문입니다.`,
    `${name}님 앞선 답변 잘 들었습니다. 두 번째 질문입니다.`,
    `자 ${name}님 그럼 마지막 질문입니다.`]
  const interviewerName = {algorithm: '장지선', frontend: '정찬우', backend: '김대영', cs: '김구현', language: '김지현'}
  

  // 녹음 및 캡쳐
  const [start, setStart] = useState(false)
  // 면접 질문
  const question = useSelector((state)=> {
    return state.interview.question
  })
  // 현재 로딩중인지 여부
  const loding = useSelector((state)=> {
    return state.interview.isLoding
  })
  // 인터뷰 완료여부
  const check = useSelector((state)=>{
    return state.interview.check
  })
  // 문제 단계
  const stage = useSelector((state)=> {
    return state.interview.stage
  })

  // 처음 페이지 이동시 볼륨 끄기 + 환경 설정 초기화
  useEffect(() => {
    dispatch({type:'interview/checkInitialize'});
    // BGM
    const mainBGM = document.getElementById('mainBGM');
    // BGM on/off 버튼
    const changeBox = document.getElementById('changeVolumeBox');
    // BGM 끄기(muted는 음소거)
    mainBGM.muted = true;
    // BGM 버튼 음소거 처리
    changeBox.className = "muted";
    // BGM 버튼 안보이게 처리
    changeBox.style.visibility ='hidden';
  }, [])

  // 스테이지 변경 시 문제 받아오기
  useEffect(()=>{
    console.log(`===============${stage}로 스테이지 변경=============`)
    dispatch(getInterviewQuestion(interviewer[stage]))
  },[stage])

  // 타이머 기능
  const [timer, setTimer] = useState(60)
  useEffect(()=> {
    // 0초가 아니면 1초씩 깍기(체크가 끝난 후)
    if (check.ready && timer > 0) {
      setTimeout(()=> {
        setTimer(timer-1)
      }, 1000)
    } else if (check.ready && timer === 0) {
      // 녹음 중이 아니라면
      if (!start) {
        recStart(stage)
        setTimer(30)
      // 녹음 중이라면
      } else {
        recStart(stage)
      }
    }
  }, [timer, check.ready])

  


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
  const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;

  // stop이 안 먹으므로 그냥 질문 3개를 위한 녹음을 따로 진행
  const recognition = {
    recognition1 : new SpeechRecognition(),
    recognition2 : new SpeechRecognition(),
    recognition3 : new SpeechRecognition(),
    recognition4 : new SpeechRecognition(),
  }
  // 녹음 기본설정 
  recognition.recognition1.interimResults = true // 중간 값을 받아봄
  recognition.recognition1.maxAlternatives = 1 // 클수록 단어 보정효과 커짐
  recognition.recognition1.lang = "ko-KR";
  recognition.recognition1.continuous = true // 계속 녹음

  recognition.recognition2.interimResults = true // 중간 값을 받아봄
  recognition.recognition2.maxAlternatives = 1 // 클수록 단어 보정효과 커짐
  recognition.recognition2.lang = "ko-KR";
  recognition.recognition2.continuous = true // 계속 녹음

  recognition.recognition3.interimResults = true // 중간 값을 받아봄
  recognition.recognition3.maxAlternatives = 1 // 클수록 단어 보정효과 커짐
  recognition.recognition3.lang = "ko-KR";
  recognition.recognition3.continuous = true // 계속 녹음

  // 스크립트
  const [script, setScript] = useState(' ')

  // 실시간 결과값
  recognition[`recognition${stage}`].onresult  = (event) => { 
    let voice = ''
    for (let i = 0, len = event.results.length; i < len; i++) {
      voice += event.results[i][0].transcript
      console.log(`==============================${stage}======================`)
      console.log(`지금 ${i}번째 transcript:`, event.results[i][0].transcript)
    }
    // resultIndex-마지막 값  event.results[i].isFinal - 마지막인지 여부
    setScript(voice)
  }

  const startRec = (num) => {
    console.log('음성인식 시작');
    recognition[`recognition${num}`].start()
  }

  const endRec = (num) => {
    // 종료를 위해서 한번 바꿨다가 해야함
    recognition[`recognition${num}`].stop()
    console.log('음성인식 종료',script);
  }

  const goMain = () => {
    navigate('/')
  }

  // 스타트 버튼
  function recStart (num) {
    setStart(true)
    // 캡쳐 5초 후 실행
    setTimeout(() => {
      capture()
      console.log('이미지 캡쳐~~~~')
    }, 5000);
    // 녹음 시작
    startRec(num)
  }

  // 끝내기 버튼
  const recEnd = async(num) => {
    // 시작 변수 변경
    setStart(false)
    // 녹음 종료
    endRec(num)
    // "/ /g"는 문자열의 모든 공백을 찾음
    const data = {subjectNo: 1, image: capImg, script: script.replace(/ /g, '')}
    dispatch(subInterviewData(data))
  }
  return (
    <>
      <div className="interviewBack">
        <div className="interviewTopMenu">
          <p className="interviewTitle" onClick={()=> { console.log('script를 인쇄 중',script)}} >00기업 면접</p>
          <div className="InterviewTimerBack">
            <p className="InterviewTimer">{timer}</p>
          </div>
          <img src={MainImg} alt="MainBtn" className='InterviewMainBtn' onClick={goMain} />
        </div>
        
        <div className="InterviewerBack">
          {interviewer.map((subject, idx)=> {
            return (<img className={`Interviewer${idx+1}`} key={`interviewer-${idx}`}
            src={require(`../../asset/images/Interview/Interviewer/${subject}.png`)} alt={`Interviewer${idx}`} />)
          })}
        </div>
        {check.ready && (stage < 4) &&
        <>
          <div className="interviewScriptBack">
            <p className="InterviewerName">『{interviewerName[interviewer[stage-1]]}』</p>
            <h1 onClick={()=> {if (start) {recEnd(stage) } else {recStart(stage)}}}>{start ? '끝내기' : '시작'}</h1>
            <p className="InterviewContent">{interviewerContent[stage-1]}
              <span className="interviewQuestion">"{question.question}"</span>
            </p>
            {/* 로딩 중에는 제출 버튼이 활성화 되지 않게 */}
            <div>
            </div>
          </div>
        </>
        }
        {check.ready && (stage < 4) && <Webcam
          className="interviewWebCam"
          audio={false}
          ref={webcamRef}
          screenshotFormat="image/jpeg"
          screenshotQuality={1}
        />}
        <Check />
        <Result show={stage === 4} />
      </div>
    </>
  );
};

export default Interview;
