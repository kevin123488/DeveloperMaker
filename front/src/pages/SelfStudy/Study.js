import React, { useEffect, useState } from "react";
import { useSelector, useDispatch } from 'react-redux';
import "./SelfStudy.css";
import { getStudyList,  } from "../../slices/selfstudySlice";
// import { useDispatch } from "react-redux";
import styled from "styled-components";
import background from "../../asset/images/SelfstudyImg/CsStudyBackground.png";
import btn from "../../asset/images/SelfstudyImg/버튼.png";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';

const CsStudyBackground = styled.div`
  position: related;
  height: 100vh;
  width: 100vw;
  /* background-color: #352208; */
  background: url(${background}) center no-repeat;
  background-size: 100% 100%;
`;

const Type = styled.div`
  color: black;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 3vw;
  vertical-align: center;
  margin-bottom: 1.5vw;
  height: 7vw;
  width: 20vw;
  background: url(${btn}) center no-repeat;
  background-size: 100% 100%;
`;

const CSselfStudy = () => {
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
      const res = await dispatch(getStudyList('network'))
      const newStudyList = res.payload
      console.log("스터디 리스트:", newStudyList)
    };
    userGetStudy()
  }, [dispatch])

  return (
    <>
      <CsStudyBackground>
        <Type  style={{ textDecoration: "none", cursor: "pointer", }}>
          CS
        </Type>
        <Type  style={{ textDecoration: "none", cursor: "pointer", }}>
          알고리즘
        </Type>
        <Type  style={{ textDecoration: "none", cursor: "pointer", }}>
          백앤드
        </Type>
        <Type  style={{ textDecoration: "none", cursor: "pointer", }}>
          프론트앤드
        </Type>
        <Type  style={{ textDecoration: "none", cursor: "pointer", }}>
          프로그래밍 언어
        </Type>

        <div className="StudyContainer">
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
        </div>
      </CsStudyBackground>
    </>
  );
};

export default CSselfStudy;
