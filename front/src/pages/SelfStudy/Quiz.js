import React, { useEffect, useState } from "react";
import { useSelector, useDispatch } from 'react-redux';
import { useNavigate } from "react-router";
import "./SelfStudy.css";
import Study from "./Study.js";
import { getSelfStudyProgress, getStudyInfo, getQuizInfo, getQuizList, postQuizSolve, getCodingTestList } from "../../slices/selfstudySlice";
// import { useDispatch } from "react-redux";
import styled from "styled-components";
// import btn from "../../asset/images/SelfstudyImg/버튼.png";
import speechBalloon from "../../asset/images/SelfstudyImg/speechBalloon.png";
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';


const Type = styled.div`
& {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 2.5vw;
  color: #80b9ff;
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
  opacity: 1;
  background: url(${speechBalloon}) center no-repeat;
  background-size: 100% 100%;
  z-index: -1;
} 
`;

const Quiz = () => {
  const dispatch = useDispatch();
  const navigate = useNavigate()

  // const location = useLocation()

  useEffect(() => {
    const startGetQuizInfo = async () => {
      await dispatch(getSelfStudyProgress())
      await dispatch(getStudyInfo())
      await dispatch(getQuizInfo())
      // await dispatch(getQuizInfo())
    }
    startGetQuizInfo()
    

  }, [dispatch])


  
  const study = useSelector((state) => state.study)
  const quizList = useSelector((state) => state.study.quizList.quizInfo)
  // console.log(quizList)
  const quizInfo = useSelector((state) => state.study.quizInfo)
  // console.log(quizInfo)
  const maxPage = useSelector((state) => state.study.quizList.totalPage)


  // 스터디할지, 문제풀지 고르는 창 나오는거
  const [showWork, setShowWork] = useState(false)
  const [showWorkChoice, setShowWorkChoice] = useState(false)
  const [category, setCategory] = useState(0)
  const [subject, setSubject] = useState('')
  const [offset, setOffset] = useState(0)
  const [limit, setlimit] = useState(6)
  const [nowpage, setNowpage] = useState(0)
  const [pages, setPages] = useState([1, 2, 3, 4])

  // const location = useLocation()
  const [isSelectedCategory, setIsSelectedCategory] = useState(false)
  const [showingQuiz, setShowingQuiz] = useState('')
  const [isShowQuiz, setIsShowQuiz] = useState(false)
  const [isShowQuizProblem, setIsShowQuizProblem] = useState(false)
  const [IsShowStudy, setIsShowStudy] = useState(false)
  const [checkedAnswer, setCheckedAnswer] = useState(null)

  useEffect(() => {
    if (maxPage >= 4) {
      setPages([1, 2, 3, 4])
    } else {
      var pages = []
      for (var i = 1; i <= maxPage; i++) {
        pages.push(i)
      }
      setPages(pages)
    }
  }, [maxPage])

  // 카테고리 변경하는 함수 pageInfo = {category: category, subject: subject,} 
  const changeCategory = async (pageInfo) => {
    const newQuizInfo = {
      category: quizInfo[pageInfo.category].category,
      subject: pageInfo.subject,
      offset: 0,
      limit: limit,
    }

    // 선택한 카테고리 캐릭터 이동하는 함수
    const characterList = ['spring', 'fall', 'summer', 'winter', 'hero',]
    characterList.forEach((character) => {
      if (pageInfo.character !== character){
        const comp = document.getElementById(character)
        comp.style.top = '100vh'
        // console.log(comp)
      } else {
        const comp = document.getElementById(character)
        comp.className = pageInfo.class
        
        // comp.style.background = `asdgs`
        // comp.style.background = `url("../../asset/images/SelfstudyImg/${pageInfo.imgUrl}.png") center no-repeat`
        // console.log('가져온거 스타일', comp.style.left)
        // console.log('가져온거 스타일', comp.style.top)
        // console.log('가져온거 스타일', comp.style.width)
        // console.log('가져온거 스타일', comp.style.height)
        // console.log('가져온거 스타일', comp.style.background)
      }
    })
    const categoryballoon = document.getElementById('categoryballoon')
    console.log("categoryballoon", categoryballoon)
    categoryballoon.style.display = 'none'

    setTimeout(() => {
      setShowWork(true)
      setShowWorkChoice(true)
    }, 500)
    setIsShowQuizProblem(false)
    changeQuizList(newQuizInfo)
    await setOffset(0)
    await setNowpage(0)
    await setCategory(pageInfo.category)
    await setSubject(pageInfo.subject)

  }

  // 서브젝트 변경하는 함수 pageInfo = {category: category, subject: subject,} 
  const changeSubject = async (info) => {
    const newQuizInfo = {
      category: quizInfo[category].category,
      subject: info.subject,
      offset: 0,
      limit: limit,
    }
    setIsShowQuizProblem(false)
    await setOffset(0)
    await setNowpage(0)
    await setSubject(info.subject)
    await changeQuizList(newQuizInfo)
  }

  // 페이지 변경하는 함수
  const changePage = async (page) => {
    const newQuizInfo = {
      category: category,
      subject: subject,
      offset: page - 1,
      limit: limit,
    }
    await changeQuizList(newQuizInfo)
    await setOffset(page-1)
  }

  // 보는 퀴즈 변경하는 함수
  const changeQuizList = (newQuizInfo) => {
    const quizInfo = {
      category: newQuizInfo.category,
      subject: newQuizInfo.subject,
      offset: newQuizInfo.offset,
      limit: newQuizInfo.limit,
    }
    setIsShowQuizProblem(false)
    dispatch(getQuizList(quizInfo))
  }

  // 왼쪽 화살표 클릭
  const leftArrow = () => {
    console.log('왼')
    console.log(nowpage)
    if (nowpage > 0) {
      const newQuizInfo = {
        category: category,
        subject: subject,
        offset: (nowpage - 1) * 4,
        limit: limit,
      }
      console.log((nowpage - 1) * 4 + 1)
      setPages([(nowpage - 1) * 4 + 1, (nowpage - 1) * 4 + 2, (nowpage - 1) * 4 + 3, (nowpage - 1) * 4 + 4])
      changeQuizList(newQuizInfo)
      setNowpage(nowpage - 1)
    }
  }

  // 오른쪽 화살표 클릭
  const rightArrow = () => { 
    console.log('오')
    if ((nowpage + 1) * 4 + 1 <= maxPage){
      const newQuizInfo = {
        category: category,
        subject: subject,
        offset: (nowpage + 1) * 4,
        limit: limit,
      }
      if ((nowpage + 2) * 4 <= maxPage) {
        setPages([(nowpage + 1) * 4 + 1, (nowpage + 1) * 4 + 2, (nowpage + 1) * 4 + 3, (nowpage + 1) * 4 + 4,])
      } else {
        var pages = []
        for (var i = (nowpage + 1) * 4 + 1; i <= maxPage; i++) {
          pages.push(i)
        }
        setPages(pages)
      }
      changeQuizList(newQuizInfo)
      setNowpage(nowpage + 1)
    }
  }


  const showQuiz = (quiz) => {
    console.log("퀴즈누름", quiz)
    setShowingQuiz(quiz)
    setIsShowQuizProblem(true)
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
      console.log(showingQuiz)
      const solveInfo = { quizId: showingQuiz.quizId, answer: checkedAnswer }
      const solveResult = await dispatch(postQuizSolve(solveInfo))
      const newQuizInfo = {
        category: category,
        subject: subject,
        offset: nowpage,
        limit: limit,
      }
      dispatch(getQuizList(newQuizInfo))
      await alert(solveResult.payload)
      // window.location.reload();
    } else {
      alert('정답을 체크해주세요!')
    }
  }

  const closeQuiz = () => {
    setIsShowQuizProblem(false)
  }

  const showCategory = (category) => {
    const categoryDiv = document.getElementById(category)
    categoryDiv.style.opacity = '1'
    // categoryDiv.style.display = 'block'z
  }

  const hideCategory = (category) => {
    const categoryDiv = document.getElementById(category)
    categoryDiv.style.opacity = '0.6'
    // categoryDiv.style.display = 'none'
  }

  const moveSDchractor = (selectId) => {

  }

  // 과목선택부분으로 돌리는 함수
  const resetCategory = () => {
    // 선택한 카테고리 캐릭터 이동하는 함수
    const characterList = ['spring', 'fall', 'summer', 'winter', 'hero',]
    characterList.forEach((character) => {
      const characterTag = document.getElementById(character)
      characterTag.className = character
      characterTag.style = ''
    })
    const categoryballoon = document.getElementById('categoryballoon')
    console.log("categoryballoon", categoryballoon)
    categoryballoon.style.display = 'block'
    setShowWork(false)
    setShowWorkChoice(false)
    setIsShowQuiz(false)
    setIsShowStudy(false)

    setIsShowQuizProblem(false)

  } 

  const goSelfstudy = () => {
    navigate('/selfstudy')
  }

  // 스터디, 퀴즈 골랐을 때 실행될 함수
  const choiceWork = (work) => {
    setShowWorkChoice(false)
    // 스터디 골랐을 때
    if (work === 'study'){
      console.log('스터디')
      setIsShowStudy(true)
    }
    
    // 퀴즈 골랐을 때
    else {
      console.log('퀴즈')
      setIsShowQuiz(true)
      // 알고리즘이면
      if (category === 1){
        dispatch(getCodingTestList({limit: limit, offset: 0}))
      }
    }
    setIsSelectedCategory(true)
  }

  // 스터디 or 퀴즈 선택하는 창
  const resetWork = () => {
    setIsSelectedCategory(false)
    setIsShowQuiz(false)
    setIsShowQuizProblem(false)
    setIsShowStudy(false)
    setShowWorkChoice(true)
  }

  return ( 
    <>
      <div className="CsStudyBackground">
        <button onClick={goSelfstudy}>뒤로가기</button>
        <button onClick={resetCategory}>과목선택</button>
        {
          isSelectedCategory?
          <button onClick={resetWork}>스터디 OR 퀴즈</button> 
          : null
        }

        {/* 카테고리 선택 전 화면 */}
        {/* 카테고리 선택 전 화면 */}
        {/* 카테고리 선택 전 화면 */}
        <div id="spring" onClick={() => { changeCategory({category: 0, subject: "network", character: "spring", class: "springSelected",}); moveSDchractor('springCS') }} onMouseOver={showCategory.bind(null, 'springCS')} onMouseOut={hideCategory.bind(null, 'springCS')} className="spring"></div>
        <div id="fall" onClick={() => { changeCategory({category: 1, subject: "algorithm", character: "fall", class: "fallSelected",}); moveSDchractor('fallAlgo') }} onMouseOver={showCategory.bind(null, 'fallAlgo')} onMouseOut={hideCategory.bind(null, 'fallAlgo')} className="fall"></div>
        <div id="summer" onClick={() => { changeCategory({category: 3, subject: "react", character: "summer", class: "summerSelected",}); moveSDchractor('summerBack') }} onMouseOver={showCategory.bind(null, 'summerBack')} onMouseOut={hideCategory.bind(null, 'summerBack')} className="summer"></div>
        <div id="winter" onClick={() => { changeCategory({category: 2, subject: "spring", character: "winter", class: "winterSelected",}) ; moveSDchractor('winterFront') }} onMouseOver={showCategory.bind(null, 'winterFront')} onMouseOut={hideCategory.bind(null, 'winterFront')} className="winter"></div>
        <div id="hero" onClick={() => { changeCategory({category: 4, subject: "java", character: "hero", class: "heroSelected",}) ; moveSDchractor('heroLang') }} onMouseOver={showCategory.bind(null, 'heroLang')} onMouseOut={hideCategory.bind(null, 'heroLang')} className="hero"></div>
        <br />
        <br />
        <br />
        <br />
        <br />

        <div id="categoryballoon">
          <div id="springCS" className="springCS">
            <Type  style={{ textDecoration: "none", cursor: "", }}>
              CS
            </Type>
          </div>
          <div id="fallAlgo" className="fallAlgo">
            <Type style={{ textDecoration: "none", cursor: "", }}>
              알고리즘
            </Type>
          </div>
          <div id="summerBack" className="summerBack">  
            <Type style={{ textDecoration: "none", cursor: "", }}>
              프론트앤드
            </Type>
          </div>
          <div id="winterFront" className="winterFront"> 
            <Type style={{ textDecoration: "none", cursor: "", }}>
              백앤드
            </Type>
          </div>
          <div id="heroLang" className="heroLang"> 
            <Type style={{ textDecoration: "none", cursor: "", }}>
              프로그래밍언어
            </Type>
          </div>
        </div>
        {/* 카테고리 선택 전 화면 끝*/}
        {/* 카테고리 선택 전 화면 끝*/}
        {/* 카테고리 선택 전 화면 끝*/}


        {/* 스터디, 퀴즈 선택화면*/}
        {/* 스터디, 퀴즈 선택화면*/}
        {/* 스터디, 퀴즈 선택화면*/}


        {
          showWork?
          <div className="choiceInfo">
            {quizInfo[category].category}, 작업 종류
          </div>
          : null
        }
        {
          showWork?
          <div className="workContainer">
            {
              showWorkChoice?
              <div className="container row m-0 p-0">
                <div onClick={() => {choiceWork('study')}} className="studySelectButton col-6">study</div>
                <div onClick={() => {choiceWork('quiz')}} className="quizSelectButton col-6">quiz</div>
              </div>
              : null
            }
          </div>
          : null
        }

        {/* 스터디, 퀴즈 선택화면 끝*/}
        {/* 스터디, 퀴즈 선택화면 끝*/}
        {/* 스터디, 퀴즈 선택화면 끝*/}

        
        {/* 퀴즈 화면 */}
        {/* 퀴즈 화면 */}
        {/* 퀴즈 화면 */}

        {
          isShowQuiz?
          <div className="QuizContainer">

            {/* 과목 목록 */}
            <div className="subjectbar">
              {quizInfo[category].subjectList.map((subject, index) => (
                <p key={index} className="subjectItem" onClick={changeSubject.bind(null, {subject: subject.subject})}>
                  {subject.subject}
                </p>
              ))}
            </div>

            <div className="studyItems container">
              <div className="row justify-content-center">
                {quizList.map((quiz, index) => (
                  <div key={index} className={"col-3 quizcomp" + quiz.correct} onClick={showQuiz.bind(null, quiz)}>
                    {quiz.title}
                  </div>
                ))}
              {/* {quizList.category} */}
              </div>
            </div>



            {
              isShowQuizProblem
              ? 
              <div className="showingMarkdown">
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

          {/* 페이지네이션 */}
          {/* 페이지네이션 */}
          {/* 페이지네이션 */}
          <div className="paginationBar">
            <p className="paginationItem" onClick={leftArrow}> {`<`} </p>
            {pages.map((page, index) => (
              <p key={index} className="paginationItem" onClick={changePage.bind(null, page)}>
                {page}
              </p>
              ))}
            <p className="paginationItem" onClick={rightArrow}>{`>`}</p>
          </div>
        </div>
        : null
        }

        {/* 퀴즈 화면 끝*/}
        {/* 퀴즈 화면 끝*/}
        {/* 퀴즈 화면 끝*/}


      {
        IsShowStudy?
        <Study category = {category} subject = {subject}></Study>
        : null
      }


      </div>
    </>
  );
};

export default Quiz;
