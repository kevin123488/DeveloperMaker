import React, { useEffect, useState } from "react";
import { useSelector, useDispatch } from 'react-redux';
import "./SelfStudy.css";
import { getCodingTestList } from "../../slices/selfstudySlice";
import styled from "styled-components";
import background from "../../asset/images/SelfstudyImg/AlgoStudyBackground.png";
import CodeTextarea from "./CodeTextarea";
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';

const AlgoStudyBackground = styled.div`
  position: fixed;
  display: ;
  height: 100vh;
  width: 100vw;
  /* background-color: #352208; */
  background: url(${background}) center no-repeat;
  background-size: 100vw 100vh;
`;

const AlgoStudy = () => {
  const [lang, changeLang] = useState('py')
  const study = useSelector((state) => state.study)
  const coteList = study.coteList
  const dispatch = useDispatch();
  
  
  useEffect(() => {
    const userGetCote = async () => {
      const res = await dispatch(getCodingTestList())
      const newCoteList = res.payload
      console.log("코테 리스트:", newCoteList)
    };
    userGetCote()
  }, [dispatch])

  return (
    <>
      <AlgoStudyBackground>
        <div className="container">
          <div className="row justify-content-center">
            {coteList.map((cote, index) => (
              <div key={index} className="col-3 StudyCompnent">
                <p>
                  <p></p>
                  {cote.a}
                </p>
                <p>{cote.b}</p>
              </div>
            ))}
          </div>
        </div>

        <div className="dropdown" style={{marginLeft: "55vw", marginTop: "5vh"}}>
          <button className="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            {lang}
          </button>
          <ul className="dropdown-menu">
            <li className="dropdown-item" onClick={() => {changeLang('py')}}>PYTHON</li>
            <li className="dropdown-item" onClick={() => {changeLang('java')}}>JAVA</li>
          </ul>
        </div>

        <CodeTextarea lang = {lang}></CodeTextarea>
      </AlgoStudyBackground>
    </>
  );
};

export default AlgoStudy;
