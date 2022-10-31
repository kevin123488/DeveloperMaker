import React, {useRef, useEffect, useState} from "react";
import "./SelfStudy.css";
import * as htmlToImage from 'html-to-image';
import Webcam from "react-webcam";
import { toBlob} from 'html-to-image';
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';


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
        ref={webcamRef}
        screenshotFormat="image/jpeg"
        videoConstraints={videoConstraints}
      />
      <button onClick={capture}>Capture photo</button>
      <img id="captureDiv" src={imageSrc}></img>
      <button onClick={saveCam}>백으로</button>
    </>
  );
};

export default LangFrameStudy;
