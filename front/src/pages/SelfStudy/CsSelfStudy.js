import React, { useState, useRef, useEffect } from "react";
import { useSelector, useDispatch } from 'react-redux';
import { useLocation } from 'react-router-dom';
import "./SelfStudy.css";
import { getStudyList } from "../../slices/selfstudySlice";
// import { useDispatch } from "react-redux";
import styled from "styled-components";
import background from "./CsStudyBackground.png";
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';

const CsStudyBackground = styled.div`
  position: fixed;
  display: ;
  height: 100vh;
  width: 100vw;
  /* background-color: #352208; */
  background: url(${background}) center no-repeat;
  background-size: 100vw 100vh;
`;


const CSselfStudy = () => {
  // const location = useLocation()
  const study = useSelector((state) => state.study)
  const studyList = study.studyList
  const dispatch = useDispatch();
  
  
  
  useEffect(() => {
    const userGetStudy = async () => {
      const res = await dispatch(getStudyList())
      const newStudyList = res.payload
      console.log(newStudyList)
    };
    userGetStudy()
  }, [dispatch])

  return (
    <>
      <CsStudyBackground>
        <div className="container">
          <div className="row justify-content-center">
            {studyList.map((study, index) => (
              <div key={index} className="col-3 StudyCompnent">
                {study.content}
              </div>
            ))}
          </div>
        </div>
      </CsStudyBackground>
    </>
  );
};

export default CSselfStudy;
