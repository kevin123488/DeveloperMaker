import React, { useEffect, useState } from "react";
import { useSelector, useDispatch } from 'react-redux';
import "./SelfStudy.css";
import { getStudyList, getQuizList, getStudyInfo, getQuizInfo } from "../../slices/selfstudySlice";
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
const CSselfStudy = () => {
  const dispatch = useDispatch();
  // const location = useLocation()
  useEffect(() => {
    const startGetStudyInfo = async () => {
      await dispatch(getStudyInfo())
    }
    startGetStudyInfo()
    // dispatch(getQuizList())
    const getInitialStudy = async () => {
      //  CS, ALGORITHM, BACKEND, FRONTEND, LANGUAGE
      const initialStudyInfo = {
        category: category,
        subject: subject,
        offset: offset,
        limit: limit,
      }
      const res = await dispatch(getStudyList(initialStudyInfo))
      const newStudyList = res.payload
      console.log("스터디 리스트:", newStudyList)
    };
    getInitialStudy()
    // setStudyInfo(study.studyInfo)
    // setStudyList(study.studyList.studyInfo)
  }, [dispatch])

  const study = useSelector((state) => state.study)
  const studyList = useSelector((state) => state.study.studyList.studyInfo)
  const studyInfo = useSelector((state) => state.study.studyInfo)

  // const [studyInfo, setStudyInfo] = useState(study.studyInfo)
  // const [studyList, setStudyList] = useState(study.studyList.studyInfo)
  const [showingMarkdown, setShowingMarkdown] = useState('')
  const [category, setCategory] = useState(0)
  const [subject, setSubject] = useState('network')
  const [offset, setOffset] = useState(0)
  const [limit, setlimit] = useState(6)
  const [nowpage, setNowpage] = useState(0)
  const [maxpage, setMaxpage] = useState(0)
  const [pages, setPages] = useState([1, 2, 3, 4])

  useEffect(() => {
    console.log('study바뀜')
    // setStudyInfo(study.studyInfo)
    // setStudyList(study.studyList.studyInfo)
    // console.log("study 바뀐거임",studyInfo)
  }, [study])
  
  // md정리창 보여주는 문법
  const showMarkdown = (n) => {
    setShowingMarkdown(studyList[n].content)
  }
  
  // 카테고리 변경하는 함수 pageInfo = {category: category, subject: subject,} 
  const changeCategory = async (pageInfo) => {
    await setOffset(0)
    await setNowpage(0)
    await setCategory(pageInfo.category)
    await setSubject(pageInfo.subject)
    await setMaxpage()
  }

  // 서브젝트 변경하는 함수 pageInfo = {category: category, subject: subject,} 
  const changeSubject = async (subject) => {
    await setOffset(0)
    await setNowpage(0)
    await setSubject(subject)
    await setMaxpage()
    await changeStudyList(subject)
  }

  // 페이지 변경하는 함수
  const changePage = async (page) => {
    console.log(page)
    await setOffset(page-1)
    await setNowpage(0)
    await setMaxpage()
  }

  // 보는 페이지 변경하는 함수
  const changeStudyList = (subject) => {
    const studyInfo = {
      category: category,
      subject: subject,
      offset: offset,
      limit: limit,
    }
    dispatch(getStudyList(studyInfo))
  }

  // 왼쪽 화살표 클릭
  const leftArrow = () => {
    console.log('왼')
    console.log("study 바뀐거임",studyInfo)

  }

  // 오른쪽 화살표 클릭
  const rightArrow = () => { 
    console.log('오')
  }

  

  return (
    <>
      <CsStudyBackground>
        <div>{studyInfo[0].category}</div>
        <Type onClick={changeCategory.bind(null, {category: 0, subject: "network",})} style={{ textDecoration: "none", cursor: "pointer", }}>
          CS
        </Type>
        <Type onClick={changeCategory.bind(null, {category: 1, subject: "algorithm",})} style={{ textDecoration: "none", cursor: "pointer", }}>
          알고리즘
        </Type>
        <Type onClick={changeCategory.bind(null, {category: 2, subject: "spring",})} style={{ textDecoration: "none", cursor: "pointer", }}>
          백앤드
        </Type>
        <Type onClick={changeCategory.bind(null, {category: 3, subject: "vue",})} style={{ textDecoration: "none", cursor: "pointer", }}>
          프론트앤드
        </Type>
        <Type onClick={changeCategory.bind(null, {category: 4, subject: "java",})} style={{ textDecoration: "none", cursor: "pointer", }}>
          프로그래밍 언어
        </Type>

        {/* <Type onClick={changeCategory.bind(null, {category: "CS", subject: "network",})} style={{ textDecoration: "none", cursor: "pointer", }}>
          CS
        </Type>
        <Type onClick={changeCategory.bind(null, {category: "ALGORITHM", subject: "algorithm",})} style={{ textDecoration: "none", cursor: "pointer", }}>
          알고리즘
        </Type>
        <Type onClick={changeCategory.bind(null, {category: "BACKEND", subject: "spring",})} style={{ textDecoration: "none", cursor: "pointer", }}>
          백앤드
        </Type>
        <Type onClick={changeCategory.bind(null, {category: "FRONTEND", subject: "vue",})} style={{ textDecoration: "none", cursor: "pointer", }}>
          프론트앤드
        </Type>
        <Type onClick={changeCategory.bind(null, {category: "LANGUAGE", subject: "java",})} style={{ textDecoration: "none", cursor: "pointer", }}>
          프로그래밍 언어
        </Type> */}

        <div className="StudyContainer">

          {/* 과목 목록 */}
          <div className="subjectbar">
            {studyInfo[category].subjectList.map((subject, index) => (
              <p key={index} className="subjectItem" onClick={changeSubject.bind(null, subject.subject)}>
                {subject.subject}
              </p>
            ))}
          </div>

          <div className="studyItems container">
            <div className="row justify-content-center">
              {studyList.map((study, index) => (
                <div key={index} className="col-3 StudyCompnent" onClick={showMarkdown.bind(null, index)}>
                  {study.title}
                  zz
                </div>
              ))}
            </div>
          </div>
          {/* <div className="showingMarkdown">
            <ReactMarkdown children = {showingMarkdown} remarkPlugins={[remarkGfm]}>
            </ReactMarkdown>  
          </div> */}
          <div className="paginationBar">
            <p className="paginationItem" onClick={leftArrow}> {`<`} </p>
            {pages.map((page, index) => (
              <p key={index} className="paginationItem" onClick={changePage.bind(null, page + nowpage * 4)}>
                {page + nowpage * 4}
              </p>
              ))}
            <p className="paginationItem" onClick={rightArrow}>{`>`}</p>
          </div>
        </div>
      </CsStudyBackground>
    </>
  );
};

export default CSselfStudy;
