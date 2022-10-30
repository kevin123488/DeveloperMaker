import React, { useEffect, useState } from "react";
import { useSelector, useDispatch } from 'react-redux';
import "./SelfStudy.css";
import { getQuizList,  } from "../../slices/selfstudySlice";
// import { useDispatch } from "react-redux";
import styled from "styled-components";
import background from "./CsStudyBackground.png";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
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


const Quiz = () => {
  // const location = useLocation()
  const study = useSelector((state) => state.study)
  const [showingMarkdown, setShowingMarkdown] = useState('')
  const studyList = study.studyList
  const dispatch = useDispatch();
  
  const showMarkdown = (n) => {
    setShowingMarkdown(studyList[n].content)
  }
  
  useEffect(() => {
    const userGetStudy = async () => {
      const res = await dispatch(getQuizList())
      const newQuizList = res.payload
      console.log("퀴즈 리스트:", newQuizList)
    };
    userGetStudy()
  }, [dispatch])

  return (
    <>
      <CsStudyBackground>
        <div className="container">
          <div className="row justify-content-center">
            {studyList.map((study, index) => (
              <div key={index} className="col-3 StudyCompnent" onClick={showMarkdown.bind(null, index)}>
                {study.title}
              </div>
            ))}
          </div>
        </div>
        <div className="showingMarkdown">
          <ReactMarkdown children = {showingMarkdown} remarkPlugins={[remarkGfm]}>
          </ReactMarkdown>  
        </div>
      </CsStudyBackground>
    </>
  );
};

export default Quiz;
