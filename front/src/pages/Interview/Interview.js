import React, {useState} from "react";
import "./Interview.css";
import * as htmlToImage from 'html-to-image';
import Webcam from "react-webcam";
import MainImg from "../../asset/images/Main/gohomeIcon.png"
import Interviewer1 from "../../asset/images/Interview/Interviewer1.png"
import Interviewer2 from "../../asset/images/Interview/Interviewer2.png"
import Interviewer3 from "../../asset/images/Interview/Interviewer3.png"
import { useNavigate } from "react-router-dom";
// import { toBlob} from 'html-to-image';
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';

const videoConstraints = {
  width: 1280,
  height: 720,
  facingMode: "user",
};

const Interview = () => {
  const [now, setNow] = useState(0)
  const navigate = useNavigate()

  const interviewScript = ['얼굴인식을 진행하도록 하겠습니다. 사용자의 얼굴을 화면 중앙에 맞춘 후 확인을 눌러주세요',
 'HTTP Mehthod의 종류와 그 내용에 대해 설명해 보세요.',
 'HTTP 상태코드의 종류와 그 내용에 대해 설명해 보세요.',
 'RDB와 NoSQL의 차이에 대해 설명해 보세요.',]


  const saveCam = () => {
    htmlToImage.toBlob(document.getElementById('captureDiv'))
    .then(function (blob) {
      console.log(blob)
      // const tempCapture = new File([blob], "test.png", { type: 'image/png' })
      // let capture = new FormData
      // capture.append('capture', tempCapture)
      // console.log(capture)
      // setUrl(URL.createObjectURL(blob))
    });
  }

  const webcamRef = React.useRef(null);
  function dataURItoBlob(dataURI) {
    var byteString = atob(dataURI.split(',')[1]);
    var mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0]
    var ab = new ArrayBuffer(byteString.length);
    var ia = new Uint8Array(ab);
    for (var i = 0; i < byteString.length; i++) {
      ia[i] = byteString.charCodeAt(i);
    }
    var blob = new Blob([ab], {type: mimeString});
    return blob;
  }

  // 캡쳐하기
  const [imageSrc, setImageSrc] = useState('')
  const capture = React.useCallback(
    () => {
      setImageSrc(webcamRef.current.getScreenshot());
      const blobData = dataURItoBlob(imageSrc)
      console.log(blobData)
    },
    [webcamRef]
  );
  const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
  const recognition = new SpeechRecognition();
  recognition.interimResults = false;
  recognition.maxAlternatives = 5
  recognition.lang = "ko-KR";

  recognition.onresult = (event) => {
    const color = event.results[0][0].transcript;
    console.log(`말: ${color}`);
  }

  // useEffect(() => {
  //   console.log('다시')
  // }, [recognition])

  const startListen = () => {
    recognition.start()
  }

  const endListen = () => {
    recognition.stop()
  }

  return (
<<<<<<< HEAD:front/src/components/SelfStudy/Interview.js
    <>
      <InterviewBlock style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }}>
        <Webcam
          className="interviewCam"
          audio={true}
          ref={webcamRef}
          screenshotFormat="image/jpeg"
          screenshotQuality={1}
          videoConstraints={videoConstraints}
        />
        <button onClick={capture}>Capture photo</button>
        <img id="captureDiv" src={imageSrc} alt="ㅋㅋ"></img>
        <button onClick={saveCam}>백으로</button>
        <button onClick={startListen}>음성인식 시작</button>
        <button onClick={endListen}>음성인식 끝</button>
      </InterviewBlock>
    </>
=======
    <div className="interviewBack">
      <div className="interviewTopMenu">
        <p className="interviewTitle" >00기업 면접</p>
        <img src={MainImg} alt="MainBtn" className='InterviewMainBtn' onClick={()=>{navigate('/')}} />
      </div>
      <img className="Interviewer1" src={Interviewer1} alt="Interviewer1" />
      <img className="Interviewer2" src={Interviewer2} alt="Interviewer2" />
      <img className="Interviewer3" src={Interviewer3} alt="Interviewer3" />
      <div className="interviewScriptBack">

      </div>
      <Webcam
        className="interviewWebCam"
        audio={false}
        ref={webcamRef}
        screenshotFormat="image/jpeg"
        screenshotQuality={1}
      />
      <img id="captureDiv" className="interviewCaptureImg" src={imageSrc} alt="ㅋㅋ"></img>
    </div>
>>>>>>> 4d694ea2584dc83c21d1a369bd93dad2c32f4468:front/src/pages/Interview/Interview.js
  );
};

export default Interview;
