import React, { useEffect, useState } from "react";
import { useSelector, useDispatch } from 'react-redux';
import "./SelfStudy.css";
import { getSelfStudyProgress, getQuizList, postQuizSolve } from "../../slices/selfstudySlice";
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
  position: fixed;
  display: ;
  height: 100vh;
  width: 100vw;
  /* background-color: #352208; */
  background: url(${background}) center no-repeat;
  background-size: 100vw 100vh;
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

const Quiz = () => {
  // const location = useLocation()
  const study = useSelector((state) => state.study)
  const [showingQuiz, setShowingQuiz] = useState('')
  const [isShowQuiz, setIsShowQuiz] = useState(false)
  const [checkedAnswer, setCheckedAnswer] = useState(null)

  const quizList = study.quizList
  const dispatch = useDispatch();
  
  const showQuiz = (n) => {
    setShowingQuiz(quizList[n])
    setIsShowQuiz(true)
    const checkboxes = document.getElementsByName('quizRadio');
    // 체크박스 목록을 순회하며 checked 값을 초기화
    checkboxes.forEach((checkbox) => {
      checkbox.checked = false;
    })
    setCheckedAnswer(null)
  }
  
  const checkAnswer = (answer) => {
    setCheckedAnswer(answer)
  }

  const sendAnswer = async() => {
    if (checkedAnswer !== null) {
      const solveInfo = { quizId: showingQuiz.quizId, answer: {answer: checkedAnswer} }
      const solveResult = await dispatch(postQuizSolve(solveInfo))
      await alert(solveResult.payload)
      window.location.reload();
    } else {
      alert('정답을 체크해주세요!')
    }
  }

  const closeQuiz = () => {
    setIsShowQuiz(false)
  }

  useEffect(() => {
    const userGetStudy = async () => {
      const res = await dispatch(getSelfStudyProgress())
      // const res = await dispatch(getQuizList('network'))
      // const newQuizList = res.payload
      // console.log("퀴즈 리스트:", newQuizList)
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
        <div className="QuizContainer">
          <div className="container">
            <div className="row justify-content-center">
              {quizList.map((quiz, index) => (
                <div key={index} className={"col-3 quizcomp" + quiz.correct} onClick={showQuiz.bind(null, index)}>
                  {quiz.title}
                </div>
              ))}
            </div>
          </div>
          {
            isShowQuiz
            ? 
            <div className="showingQuiz">
              <div onClick={closeQuiz} className="CloseQuiz">X</div>
              {showingQuiz.problem}
              <br/>
              <div className="form-radio-wrap">
                  <p id="quizCheckBox" className="form-sub-title">선택지: </p>
                    {showingQuiz.example.map((example, index) => (
                      <div key={index} className="col-3 QuizCompnent">
                        <span className="form-inline"><input onClick={checkAnswer.bind(null, example)} type="radio" className="input-radio" name="quizRadio" id={index}/><label htmlFor={index} className="form-radio">{example}</label></span>
                      </div>
                    ))}
              </div>
              <button onClick={sendAnswer}>제출</button>
            </div>

            : null
          }
        </div>

      </CsStudyBackground>
    </>
  );
};

export default Quiz;
