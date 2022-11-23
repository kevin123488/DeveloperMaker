import React, {useState, useRef, useCallback} from "react";
import Modal from 'react-bootstrap/Modal';
import { interviewCheck } from "../../slices/interviewSlice";
import { useDispatch, useSelector } from "react-redux";
import Webcam from "react-webcam";
import RecordBtn from "../../asset/images/Interview/Check/RecordBtn.png";
import RecordingBtn from "../../asset/images/Interview/Check/RecordingBtn.png";
import Fighting from "../../asset/images/Interview/Check/Fighting.png";

function Check() {
  const dispatch = useDispatch()

  // 교육생 이름
  // const name = useSelector((state)=>{
  //   return state.user.userInfo.nickname
  // })

  // 녹음 여부
  const [record, setRecored] = useState(false)
  // 얼굴 인식 중인지 여부
  const loding = useSelector((state)=> {
    return state.interview.isLoding
  })
  // 현재 단계
  const check = useSelector((state)=>{
    return state.interview.check
  })

  // 웹캠 캡쳐 후 Jpg 파일로 전환
  // 화면 변수
  const [capImg, setCapImg] = useState('')
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
      setCapImg(image)
    },
    [webcamRef, dispatch]
  );

  // STT 로직
  const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
  const recognition = new SpeechRecognition();
  recognition.interimResults = true;
  recognition.maxAlternatives = 1 // 클수록 단어 보정효과 커짐
  recognition.lang = "ko-KR";
  recognition.continuous = true // 계속 녹음

  recognition.onresult = async (event) => {
    let voice = ''
    for (let i = 0, len = event.results.length; i < len; i++) {
      voice += event.results[i][0].transcript.replace(/ /g, '')
      // console.log(`지금 ${i}번째 transcript:`, event.results[i][0].transcript)
    }
    // resultIndex-마지막 값
    if (voice.includes(`여러분모두고생많으셨습니다`)) {
      endRec()
    }
  }

  const startRec = () => {
    setRecored(true);
    recognition.start()
  }

  const endRec = () => {
    recognition.stop()
    // 내용 초기화
    dispatch({type:"interview/checkVoice", select: 'voice'})
  }

  return (
    <Modal show={!check.ready}>
      <div className="InterviewModalBack">
        <h1 className="InterviewCheckTitle">면접 환경 설정</h1>
        {/* <h1 onClick={()=>{dispatch({type:"interview/checkVoice", select: 'ready'})}} className="InterviewCheckTitle">면접 환경 설정</h1> */}
        {/* Chrome 인지 여부 확인 */}
        {/* {('SpeechRecognition' in window) &&
          <p className="interviewCheckInfo">"음성인식을 지원하는 브라우저입니다."</p>
        } */}
        <div className="InterviewCheckInfoBack" >
        {/* 카메라 체크 */}
        {/* loding에 따라 분기 */}
        {!check.face && <>{!loding ?
            <p className="interviewCheckInfo">원활한 면접을 위해 지원자분은 얼굴의 눈코입이 보이도록 웹캠 화면 중앙에 위치하시고 얼굴인식 버튼을 눌러주세요.</p>
            : <p className="interviewCheckLoding">결과 확인중</p>}
            <p className="interviewCheckStage">얼굴인식 중</p>
          {/* loding에 따라 얼굴인식 캠 or 캡쳐화면  */}
          {!loding ? <Webcam
            className="InterviewCheckCam"
            audio={false}
            ref={webcamRef}
            screenshotFormat="image/jpeg"
            screenshotQuality={1}
            forceScreenshotSourceSize />:
            <img className="InterviewCheckCam" src={capImg} alt="captureImg" />}
        {/* loding에 따라 버튼 분기 */}
        <p className={!loding ? 'interviewCheckBtn' : "interviewCheckBtnLoding"} onClick={()=> {if(!loding) {capture()}}}>{loding? '인식 중...' : '얼굴인식'}</p> </>}
        
        {/* 음성 인식 */}
        {check.face && !check.voice && <>
          <p className="interviewCheckInfo">음성인식을 진행하겠습니다. 버튼을 누른 후 아래의 문장을 읽어 주세요.
            <span className="interviewCheckVoiceContent">"여러분 모두 고생 많으셨습니다."</span>
          </p>
          <p className="interviewCheckStage">음성인식 중</p>
          <img src={!record ? RecordBtn : RecordingBtn} alt="RecordBtn" className={!record ?"interviewCheckRec" : "interviewCheckRecoding"} onClick={() => {if (!record) {startRec()}}} /></>
          }
        {/* 마지막 확인 단계 */}
        {check.voice && check.face &&
          <>
            <p className="interviewCheckInfo">환경설정이 마무리 되었습니다.
              <span className="interviewCheckVoiceContent">모든 준비를 마쳤으니 버튼을 눌러 면접을 시작해주세요.</span>
            </p>
            <p className="interviewCheckStage">면접대기 중</p>
            <img src={Fighting} className="interviewCheckFighting" alt="화이팅이미지" />
            {/* 면접 시작 버튼 */}
            <p className="interviewStartBtn" onClick={()=>{dispatch({type:"interview/checkVoice", select: 'ready'})}}>면접시작</p>
          </>}
        </div>
      </div>
    </Modal>
  )
}

export default Check;