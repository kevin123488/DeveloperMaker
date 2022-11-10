import React, {useState} from "react";
import "./Interview.css";
import * as htmlToImage from 'html-to-image';
import Webcam from "react-webcam";
import styled from "styled-components";
import background from "../../asset/images/SelfstudyImg/InterviewBackground.png";
// import { toBlob} from 'html-to-image';
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';

const InterviewBlock = styled.div`
  position: related;
  display: ;
  height: 100vh;
  width: 100vw;
  /* background-color: #352208; */
  background: url(${background}) center no-repeat;
  background-size: 100vw 100vh;
`;

const videoConstraints = {
  width: 1280,
  height: 720,
  facingMode: "user"
};

const LangFrameStudy = () => {

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
  );
};

export default LangFrameStudy;
