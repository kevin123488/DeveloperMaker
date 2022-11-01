// 1. Study
// 대분류 : CS, 알고리즘, Backend, Frontend, 언어

// 소분류
// - CS
// network 네트워크, os 운영체제, database 데이터베이스, structure 자료구조, computer 컴퓨터구조

// - Algorithm
// algorithm 알고리즘

// - Backend
// spring , jpa, server  ( + 추가예정)

// - Frontend 
// vue.js, react  ( + 추가예정)

// - 언어 (언어는 따로 퀴즈는없고 학습만 할 수 있음)
// java, python, javascript (+ C++??)


// 2. Quiz (study와 비슷, 분류대로 나눠지고 문제선택후 풀고 제출)
// CS, Algorithm, Backend, Frontend 


// 3. 코딩 테스트
// -> 알고리즘 문제 리스트
// -> 문제 선택후 언어선택, 코드 복붙 -> 제출 -> 백에서 결과받기


// 4. AI 면접

import React, {useEffect} from "react";
import "./SelfStudy.css";
import styled from "styled-components";
import background from "../../asset/images/SelfstudyImg/SelfStudyBackground.png";
import btn from "../../asset/images/SelfstudyImg/버튼.png";
import { getSelfStudyProgress, getStudyInfo, getQuizInfo } from "../../slices/selfstudySlice";
import { useDispatch } from 'react-redux';
import { Link, useNavigate } from "react-router-dom";


const SelfStudyBlock = styled.div`
  position: fixed;
  display: ;
  height: 100vh;
  width: 100vw;
  /* background-color: #352208; */
  background: url(${background}) center no-repeat;
  background-size: 100vw 100vh;
`;

const TypeLink = styled(Link)`
& {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 3vw;
  color: white;
  vertical-align: center;
  margin-bottom: 1.5vw;
  height: 7vw;
  width: 20vw;
  z-index: 1;
}  
  
&:after {  
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0.6;
  background: url(${btn}) center no-repeat;
  background-size: 100% 100%;
  z-index: -1;
} 
`;

const Type = styled.div`
& {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 3vw;
  color: white;
  vertical-align: center;
  margin-bottom: 1.5vw;
  height: 7vw;
  width: 20vw;
  z-index: 1;
}  
  
&:after {  
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0.6;
  background: url(${btn}) center no-repeat;
  background-size: 100% 100%;
  z-index: -1;
} 
`;


const SelfStudy = () => {

  // const dispatch = useDispatch();
  const navigate = useNavigate();
  const dispatch = useDispatch();

  const userGetStudy = async () => {
    // await dispatch(getStudyList())
    // console.log('newStudyList')
    // console.log(newStudyList)
    // console.log(studyList.payload)
    // await navigate("/selfstudy/cs", {state: {studyList: newStudyList}});
    navigate("/selfstudy/study");
    // console.log('???????????')
  };

  useEffect(() => {
    dispatch(getSelfStudyProgress())
    dispatch(getStudyInfo())
    // dispatch(getQuizInfo())
  }, [dispatch])

  return (
    <SelfStudyBlock>
      <Type onClick={userGetStudy} style={{ textDecoration: "none", cursor: "pointer", }}>
        스터디
      </Type>
      <TypeLink to="/selfstudy/algo" style={{ textDecoration: "none" }}>
        알고리즘
      </TypeLink>
      <TypeLink to="/selfstudy/quiz" style={{ textDecoration: "none" }}>
        퀴즈
      </TypeLink>
      <TypeLink to="/selfstudy/lang-frame" style={{ textDecoration: "none" }}>
        면접 test
      </TypeLink>
    </SelfStudyBlock>
  );
};

export default SelfStudy;
