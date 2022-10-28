import React, {useRef, useEffect, useState} from "react";
import "./SelfStudy.css";
import * as htmlToImage from 'html-to-image';
import Webcam from "react-webcam";
import { toBlob} from 'html-to-image';
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';

// const videoConstraints = {
//   width: 1280,
//   height: 720,
//   facingMode: "user"
// };

// const WebcamCapture = () => (
//   <Webcam
//     audio={false}
//     height={720}
//     screenshotFormat="image/jpeg"
//     width={1280}
//     videoConstraints={videoConstraints}
//   >
//     {({ getScreenshot }) => (
//       <button
//         onClick={() => {
//           const imageSrc = getScreenshot()
//         }}
//       >
//         Capture photo
//       </button>
//     )}
//   </Webcam>
// );



// const LangFrameStudy = () => {
  
//   const webcamRef = React.useRef(null);
//   const [imgSrc, setImgSrc] = React.useState(null);

//   const capture = React.useCallback(() => {
//     const imageSrc = webcamRef.current.getScreenshot();
//     setImgSrc(imageSrc);
//   }, [webcamRef, setImgSrc]);

//   // const [url, setUrl] = useState('')

//   // let videoRef = useRef(null)
//   // //사용자 웹캠에 접근
//   // const getUserCamera = () =>{
//   //   navigator.mediaDevices.getUserMedia({
//   //     video:true
//   //   })
//   //   .then((stream) => {
//   //     //비디오 tag에 stream 추가
//   //     let video = videoRef.current

//   //     video.srcObject = stream

//   //     video.play()
//   //   })
//   //   .catch((error) => {
//   //     console.log(error)
//   //   })
//   // }
//   // useEffect(() => {
//   //   getUserCamera()
//   // },[videoRef])  

//   const saveCam = () => {
//     htmlToImage.toBlob(document.getElementById('asdf'))
//     .then(function (blob) {
//       console.log(blob)
//       // setUrl(URL.createObjectURL(blob))
//     });
//   }


//   return (
//     <>
//       <WebcamCapture></WebcamCapture>
//     </>


//   );
// };

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
      // setUrl(URL.createObjectURL(blob))
    });
  }

  const [imageSrc, setImageSrc] = useState('')
  const webcamRef = React.useRef(null);
  const capture = React.useCallback(
    () => {
      setImageSrc(webcamRef.current.getScreenshot());
      console.log(typeof(imageSrc))
    },
    [webcamRef]
  );
  return (
    <>
      <Webcam
        audio={false}
        height="70vh"
        ref={webcamRef}
        screenshotFormat="image/jpeg"
        width="70vw"
        videoConstraints={videoConstraints}
      />
      <button onClick={capture}>Capture photo</button>
      <img id="captureDiv" src={imageSrc}></img>
      <button onClick={saveCam}>백으로</button>
    </>
  );
};

export default LangFrameStudy;
