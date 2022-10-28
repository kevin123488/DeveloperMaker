import React from "react";
import "./SelfStudy.css";
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';

const AlgoStudy = () => {
  const studyList = [
    { a: "1", b: "1" },
    { a: "1", b: "1" },
  ];

  return (
    <>
      <div className="container">
        <div className="row justify-content-center">
          {studyList.map((study, index) => (
            <div key={index} className="col-3 StudyCompnent">
              <p>
                <p></p>
                {study.a}
              </p>
              <p>{study.b}</p>
            </div>
          ))}
        </div>
      </div>
    </>
  );
};

export default AlgoStudy;
