import React, {useState, useRef, useCallback, useEffect} from "react";
import "./Interview.css";
import * as htmlToImage from 'html-to-image';
import Webcam from "react-webcam";
import MainImg from "../../asset/images/Main/gohomeIcon.png"
import Interviewer1 from "../../asset/images/Interview/Interviewer1.png"
import Interviewer2 from "../../asset/images/Interview/Interviewer2.png"
import Interviewer3 from "../../asset/images/Interview/Interviewer3.png"
import { useNavigate } from "react-router-dom";
import Modal from 'react-bootstrap/Modal';
import { useDispatch } from "react-redux";
import { interviewCheck } from "../../slices/interviewSlice";

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
  // 모달 여부
  const [show, setShow] = useState(true)
  const navigate = useNavigate()
  const dispatch = useDispatch()

  const interviewScript = ['얼굴인식을 진행하도록 하겠습니다. 사용자의 얼굴을 화면 중앙에 맞춘 후 확인을 눌러주세요',
 'HTTP Mehthod의 종류와 그 내용에 대해 설명해 보세요.',
 'HTTP 상태코드의 종류와 그 내용에 대해 설명해 보세요.',
 'RDB와 NoSQL의 차이에 대해 설명해 보세요.',]


  // const saveCam = () => {
  //   htmlToImage.toBlob(document.getElementById('captureDiv'))
  //   .then(function (blob) {
  //     console.log(blob)
  //     const tempCapture = new File([blob], "test.png", { type: 'image/png' })
  //     let capture = new FormData
  //     capture.append('capture', tempCapture)
  //     console.log(capture)
  //     setUrl(URL.createObjectURL(blob))
  //   });
  // }

  //Blob로 전환 함수
  // function dataURItoBlob(dataURI) {
  //   var byteString = atob(dataURI.split(',')[1]);
  //   var mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0]
  //   var ab = new ArrayBuffer(byteString.length);
  //   var ia = new Uint8Array(ab);
  //   for (var i = 0; i < byteString.length; i++) {
  //     ia[i] = byteString.charCodeAt(i);
  //   }
  //   var blob = new Blob([ab], {type: mimeString});
  //   return blob;
  // }
  
  // 파일 전환 함수
  // const convertBase64ToFile = (imageURL) => {
  //   const byteString = atob(imageURL.split(',')[1]);
  //   const ab = new ArrayBuffer(byteString.length);
  //   const ia = new Uint8Array(ab);
  //   for (let i = 0; i < byteString.length; i += 1) {
  //     ia[i] = byteString.charCodeAt(i);
  //   }
  //   const newBlob = new Blob([ab], {
  //     type: 'image/jpeg',
  //   });
  //   setImageFile(newBlob)
  // };

  /***
   * Converts a dataUrl base64 image string into a File byte array
   * dataUrl example:
   * data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIsAAACLCAYAAABRGWr/AAAAAXNSR0IA...etc
   */


  // 캡쳐하기
  // 웹캠 DOM을 선택할 Ref
  const webcamRef = useRef();
  // 캡쳐 이미지(base64)
  const [imageSrc, setImageSrc] = useState()
  // 이미지()
  const [imageFile, setImageFile] = useState()

  const capture = useCallback(
     () => {
      setImageSrc(webcamRef.current.getScreenshot());
      // Blob 파일로 전환
      // const blobData = dataURItoBlob(imageSrc)
      // console.log(blobData)
      dispatch(interviewCheck(imageSrc))
    },
    [webcamRef]
  );

  // STT 로직
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
      <div className={"interviewBack" + (show ? " interviewShowOpacity": "")}>
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
        {/* <Webcam
          className="interviewWebCam"
          audio={false}
          ref={webcamRef}
          screenshotFormat="image/jpeg"
          screenshotQuality={1}
        /> */}
      </div>
      <Modal show={show}>
        <div className="InterviewFaceCheckBack">
          <Webcam
              className="InterviewFaceCheckCam"
              audio={false}
              ref={webcamRef}
              screenshotFormat="image/jpeg"
              screenshotQuality={1}
            />
          <button onClick={()=>{console.log(imageSrc)}}>닫기</button>
          <p className="interviewFaceCheckInfo">원활한 면접을 위해 지원자분은 얼굴의 눈코입이 보이도록 웹캠 화면 중앙에 위치하시고 얼굴인식 버튼을 눌러주세요.</p>
          <p className="interviewFaceCheckBtn" onClick={capture}>얼굴인식</p>
        </div>
        <img id="captureDiv" className="interviewCaptureImg" src={imageSrc} alt="캡쳐"></img>
        <img className="interviewCaptureFile" src={imageFile} alt="파일" />
      </Modal>
    </>

  );
};

export default Interview;
