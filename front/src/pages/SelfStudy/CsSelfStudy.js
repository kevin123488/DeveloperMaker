import React from "react";
import "./SelfStudy.css";
import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
import background from './SelfStudyBackground.gif';
import { Link } from 'react-router-dom';



const CSselfStudy = () => {
  const studyList = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

  return (
    <>
      <div className="container">
        <div className="row justify-content-center">
          
          {studyList.map((study, index) => (
            <div key={index} className="col-3 StudyCompnent">
              {study}
            </div>
          ))}
          
        </div>
      </div>
    </>
  );
};
  
export default CSselfStudy;