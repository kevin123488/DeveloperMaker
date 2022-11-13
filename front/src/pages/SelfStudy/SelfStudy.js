import React, { useEffect, useState } from "react";
import { useSelector, useDispatch } from 'react-redux';
import { useNavigate } from "react-router";
import "./SelfStudy.css";
import Study from "./Study.js";
import { putAlbumList, getAlbumCheck } from "../../slices/albumSlice";
import GetAlbum from "../../components/Album/GetAlbum";
import { 
  getSelfStudyProgress, 
  getStudyInfo, 
  getQuizInfo, 
  getQuizList, 
  postQuizSolve, 
  getCodingTestList, 
  postCodingTestSolve,
  postCodingTestTest,
 } from "../../slices/selfstudySlice";
import styled from "styled-components";
import speechBalloon from "../../asset/images/SelfstudyImg/speechBalloon.png";
import ReactMarkdown from "react-markdown";
import rehypeRaw from "rehype-raw";
import remarkGfm from "remark-gfm";
import CodeTextarea from "./CodeTextarea";

// 효과음 
import btnSound from "../../asset/soundEffects/buttonClick.wav";
import btnCuteSound from "../../asset/soundEffects/buttonCute.wav";
import btnSimpleSound from "../../asset/soundEffects/buttonSimple.wav";
import changePageSound from "../../asset/soundEffects/Selfstudy/changePage.wav";
import showMarkdownSound from "../../asset/soundEffects/Selfstudy/showMarkdown.wav";
import mainBGM_v1 from "../../asset/soundEffects/mainBGM_v1.mp3";
import rightAnswer from "../../asset/soundEffects/Selfstudy/rightAnswer.wav";
import wrongAnswer from "../../asset/soundEffects/Selfstudy/wrongAnswer.wav";


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
    const BGM = document.getElementById('mainBGM')
    if (BGM.innerText !== 'selfstudyBGM'){
      BGM.innerText = 'selfstudyBGM'
      BGM.src = mainBGM_v1
    }

    const startGetQuizInfo = async () => {
      await dispatch(getSelfStudyProgress())
      await dispatch(getStudyInfo())
      await dispatch(getQuizInfo())
      // await dispatch(getQuizInfo())
    }
    startGetQuizInfo()
    
    // console.log('유저정보', user.language)
    // 초기 유저 선택 언어 설정
    if (user.language === 'PYTHON') {
      changeLang('python')
    } else if (user.language === 'JAVA') {
      changeLang('java')
    } else if (user.language === 'C') {
      changeLang('C')
    } else if (user.language === 'JS') {
      changeLang('javascript')
    }

  }, [dispatch])


  const user = useSelector((state)=> state.user.userInfo)
  const study = useSelector((state) => state.study)
  const progress = useSelector((state) => state.study.progress)
  const quizList = useSelector((state) => state.study.quizList.quizInfo)
  // console.log(quizList)
  const quizInfo = useSelector((state) => state.study.quizInfo)
  // console.log(quizInfo)
  const maxPage = useSelector((state) => state.study.quizList.totalPage)


  // 스터디할지, 문제풀지 고르는 창 나오는거
  const [isShowNpcBalloon, setIsShowNpcBalloon] = useState(false)
  const [workType, setWorkType] = useState('')
  const [npcBalloonContent, setNpcBalloonContent] = useState('')
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
  const [isShowingAlgo, setIsShowingAlgo] = useState(false)
  const [showingAlgo, setShowingAlgo] = useState([])
  // 테스트 실행해볼 input값
  const [inputValue, setInputValue] = useState('')
  const [outputValue, setOutputValue] = useState('')

  // 알고문제 언어선택
  const [lang, changeLang] = useState('python')


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
    playBtnCuteSound()
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
    // console.log("categoryballoon", categoryballoon)
    categoryballoon.style.display = 'none'

    setTimeout(() => {
      setShowWork(true)
      setShowWorkChoice(true)
    }, 200)
    setIsShowQuizProblem(false)
    setIsShowingAlgo(false)
    changeQuizList(newQuizInfo)
    await setOffset(0)
    await setNowpage(0)
    await setCategory(pageInfo.category)
    await setSubject(pageInfo.subject)

  }

  // 서브젝트 변경하는 함수 pageInfo = {category: category, subject: subject,} 
  const changeSubject = async (info) => {
    playChangePageSound()
    const newQuizInfo = {
      category: quizInfo[category].category,
      subject: info.subject,
      offset: 0,
      limit: limit,
    }
    setIsShowQuizProblem(false)
    setIsShowingAlgo(false)
    await setOffset(0)
    await setNowpage(0)
    await setSubject(info.subject)
    await changeQuizList(newQuizInfo)

    const pageNums = document.querySelectorAll('#pageNums')
    pageNums.forEach((pageNum, idx) => {

      // console.log(pageNum)
      if (idx === 0) {
        pageNum.style.color = '#80b9ff'
      } else {
        pageNum.style.color = 'white'
      }
    })
  }

  // 페이지 변경하는 함수
  const changePage = async (page) => {
    playChangePageSound()
    const pageNums = document.querySelectorAll('#pageNums')
    pageNums.forEach((pageNum) => {
      if (parseInt(pageNum.innerText) === page) {
        // console.log(pageNum.innerText)
        pageNum.style.color = '#80b9ff'
      } else {
        pageNum.style.color = 'white'
      }
    })

    // console.log('페이지누름')
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
    // 알고리즘이면 요청보내는게 다름
    const quizInfo = {
      category: newQuizInfo.category,
      subject: newQuizInfo.subject,
      offset: newQuizInfo.offset,
      limit: newQuizInfo.limit,
    }
    // console.log('카테고리 확인', newQuizInfo.category)
    setIsShowQuizProblem(false)
    setIsShowingAlgo(false)
    if (newQuizInfo.category === 1 || newQuizInfo.category === "ALGORITHM") {
      // console.log('알고리즘 퀴즈 리스트 변경', newQuizInfo.category)
      dispatch(getCodingTestList(quizInfo))
    }
    else {
      // console.log('그냥 퀴즈 리스트 변경')
      dispatch(getQuizList(quizInfo))
    }
  }

  // 왼쪽 화살표 클릭
  const leftArrow = () => {
    
    if (nowpage > 0) {
      playChangePageSound()
      const pageNums = document.querySelectorAll('#pageNums')
      pageNums.forEach((pageNum, idx) => {
        if (idx === 0) {
          // console.log(pageNum.innerText)
          pageNum.style.color = '#80b9ff'
        } else {
          pageNum.style.color = 'white'
        }
      })

      const newQuizInfo = {
        category: category,
        subject: subject,
        offset: (nowpage - 1) * 4,
        limit: limit,
      }
      setPages([(nowpage - 1) * 4 + 1, (nowpage - 1) * 4 + 2, (nowpage - 1) * 4 + 3, (nowpage - 1) * 4 + 4])
      changeQuizList(newQuizInfo)
      setNowpage(nowpage - 1)
    }
    setIsShowingAlgo(false)
  }

  // 오른쪽 화살표 클릭
  const rightArrow = () => {
    
    if ((nowpage + 1) * 4 + 1 <= maxPage){
      playChangePageSound()
      const pageNums = document.querySelectorAll('#pageNums')
      pageNums.forEach((pageNum, idx) => {
        if (idx === 0) {
          // console.log(pageNum.innerText)
          pageNum.style.color = '#80b9ff'
        } else {
          pageNum.style.color = 'white'
        }
      })
      
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
    setIsShowingAlgo(false)
  }


  const showQuiz = (quiz) => {
    playShowMarkdownSound()

    // 알고리즘이면 다른 페이지로
    if (category === 1 || category === "ALGORITHM"){
      // navigate('/SelfStudy/algo', )
      setOutputValue('')
      setIsShowingAlgo(true)
      setShowingAlgo(quiz)
      // console.log('알고문제', quiz)
    }
    else {
      // console.log("퀴즈누름", quiz)
      setShowingQuiz(quiz)
      setIsShowQuizProblem(true)
      const checkboxes = document.getElementsByName('quizRadio');
      // 체크박스 목록을 순회하며 checked 값을 초기화
      checkboxes.forEach((checkbox) => {
        checkbox.checked = false;
      })
      setCheckedAnswer(null)
    }
  }
  
  const checkAnswer = (answer) => {
    playBtnSimpleSound()
    setCheckedAnswer(answer)
  }

  // 퀴즈 답 제출
  const solveQuiz = async() => {
    if (checkedAnswer !== null) {
      playBtnSimpleSound()
      // console.log(showingQuiz)
      const solveInfo = { quizId: showingQuiz.quizId, answer: checkedAnswer }
      const solveResult = await dispatch(postQuizSolve(solveInfo))
      const newQuizInfo = {
        category: category,
        subject: subject,
        offset: offset,
        limit: limit,
      }
      // console.log('풀이결과', solveResult.payload)
      // console.log("채점결과", solveResult.payload)
      dispatch(getQuizList(newQuizInfo))
      setNpcBalloonContent(solveResult.payload.answer)
      setIsShowNpcBalloon(true)
      setTimeout(() => {
        setIsShowNpcBalloon(false)
      }, 2000)
      // window.location.reload();

      // 정오답 소리
      if (solveResult.payload.result) {
        playRightAnswer()
      } else {
        playWrongAnswer()
      }

      // 프로그래스가 분기를 넘었는지 판별
      await dispatch(getSelfStudyProgress())
      const solveCategory = quizInfo[category].category.toLowerCase()
      const progressPer = parseInt(progress[solveCategory] / 25)
      // console.log(progressPer)
      if (progressPer !== 0) {
        const checkAlbumNum = category * 4
        checkAlbum(checkAlbumNum)
      }

    } else {
      setNpcBalloonContent("정답을 체크해줘")
      setIsShowNpcBalloon(true)
      setTimeout(() => {
      setIsShowNpcBalloon(false)
      }, 2000)
    }
  }

  const closeQuiz = () => {
    playBtnSimpleSound()
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
    playBtnSound()
    // 선택한 카테고리 캐릭터 이동하는 함수
    const characterList = ['spring', 'fall', 'summer', 'winter', 'hero',]
    characterList.forEach((character) => {
      const characterTag = document.getElementById(character)
      characterTag.className = character
      characterTag.style = ''
    })
    const categoryballoon = document.getElementById('categoryballoon')
    // console.log("categoryballoon", categoryballoon)
    categoryballoon.style.display = 'block'
    setWorkType('')
    setShowWork(false)
    setShowWorkChoice(false)
    setIsShowQuiz(false)
    setIsShowStudy(false)
    setIsSelectedCategory(false)
    setIsShowQuizProblem(false)
    setIsShowingAlgo(false)

  } 

  const goHome = () => {
    playBtnSound()
    setTimeout(() => {
      navigate('/')
    }, 200)
  }

  const goInterviewTest = () => {
    playBtnSound()
    setTimeout(() => {
      navigate('/Interview')
    }, 200)
  }

  // 스터디, 퀴즈 골랐을 때 실행될 함수
  const choiceWork = (work) => {
    playBtnSimpleSound()
    setShowWorkChoice(false)
    // 스터디 골랐을 때
    if (work === 'study'){
      // console.log('스터디')
      setWorkType('공부')
      setIsShowStudy(true)
    }
    
    // 퀴즈 골랐을 때
    else {
      // console.log('퀴즈')
      setWorkType('퀴즈')
      setIsShowQuiz(true)
      // 알고리즘이면
      if (category === 1){
        dispatch(getCodingTestList({limit: limit, offset: 0}))
      }
    }
    setIsSelectedCategory(true)

    setTimeout(() => {
      const pageNum = document.getElementById('pageNums')
      // console.log('스타일', pageNum.style)
      pageNum.style.color = '#80b9ff'
    }, 100)
  }

  // 스터디 or 퀴즈 선택하는 창
  const resetWork = () => {
    playBtnSound()
    setWorkType('')
    setTimeout(() => {
      setIsSelectedCategory(false)
    }, 200)
    setIsShowQuiz(false)
    setIsShowQuizProblem(false)
    setIsShowStudy(false)
    setShowWorkChoice(true)
    setIsShowingAlgo(false)
  }

  const closeAlgo = () => {
    playBtnSimpleSound()
    setIsShowingAlgo(false)
  }

  const submitAlgo = async (solveInfo) => {
    playBtnSimpleSound()
    setNpcBalloonContent('채점중이야.')
    setIsShowNpcBalloon(true)
    const solveResult = await dispatch(postCodingTestSolve(solveInfo))
    // console.log('풀이결과', solveResult.payload)
    setNpcBalloonContent(solveResult.payload.message)
    setTimeout(() => {
    setIsShowNpcBalloon(false)
    }, 2000)

    // 정오답 소리
    if (solveResult.payload.pass) {
      playRightAnswer()
    } else {
      playWrongAnswer()
    }

    // 프로그래스가 분기를 넘었는지 판별
    await dispatch(getSelfStudyProgress())
    const solveCategory = quizInfo[category].category.toLowerCase()
    const progressPer = parseInt(progress[solveCategory] / 25)
    if (progressPer !== 0) {
      const checkAlbumNum = category * 4
      checkAlbum(checkAlbumNum)
    }
  }

  // 코드 테스트 요청
  const submitTestAlgo = async (solveInfo) => {
    playBtnSimpleSound()
    setOutputValue('실행중...')
    const coteListRequestDto = {
      code: solveInfo.code,
      input: inputValue,
      language: solveInfo.language,
    }
    const solveResult = await dispatch(postCodingTestTest(coteListRequestDto))
    setOutputValue(solveResult.payload.replace(/(?:\r\n|\r|\n)/g, '<br />'))
    // console.log('테스트 결과', solveResult.payload)
  }

  // 앨범 뽑기 보여주기용 변수
  const show = useSelector((state)=>{
    return state.album.albumPickShow
  })
  // 앨범 뽑기 함수
  const putAlbum =  async(albumId) => {
    const response = await dispatch(getAlbumCheck(albumId))
    // 중복이면 true이므로 false일 때 실행
    if (!response.payload) {
      dispatch(putAlbumList(albumId))
    }
  }

  // 체크할 엘범 번호 받아서 체크하고 띄워주는 함수
  const checkAlbum = ((checkAlbumNum) => {
    putAlbum(checkAlbumNum)
    // console.log('체크엘범 번호', checkAlbumNum)
  })




  // 효과음 gyrhkdma

  const playChangePageSound = () => {
    const sound = new Audio()
    sound.src = changePageSound
    sound.play()
  }

  const playBtnSound = () => {
    const sound = new Audio()
    sound.src = btnSound
    sound.play()
  }

  const playBtnCuteSound = () => {
    const sound = new Audio()
    sound.src = btnCuteSound
    sound.play()
  }
  
  const playBtnSimpleSound = () => {
    const sound = new Audio()
    sound.src = btnSimpleSound
    sound.play()
  }

  const playShowMarkdownSound = () => {
    const sound = new Audio()
    sound.src = showMarkdownSound
    sound.play()
  }

  const playRightAnswer = () => {
    const sound = new Audio()
    sound.src = rightAnswer
    sound.play()
  }

  const playWrongAnswer = () => {
    const sound = new Audio()
    sound.src = wrongAnswer
    sound.play()
  }
  
  return (
    <>
      <div style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} className="CsStudyBackground">
        <div className="homeBtn" onClick={goHome}></div>
        {
          !showWork?
          <div>
            <div className="infoAlarm">분야를 선택해주세요! (이거 디자인 고민좀)</div>
            <div className="interviewTestBtn" onClick={goInterviewTest}></div>
          </div>
          : null
        }

        <div className="categoryChoice" onClick={resetCategory}>과목선택</div>
        {
          isSelectedCategory?
          <div className="subjectChoice" onClick={resetWork}>스터디 OR 퀴즈</div> 
          : null
        }

        {/* 카테고리 선택 전 화면 */}
        {/* 카테고리 선택 전 화면 */}
        {/* 카테고리 선택 전 화면 */}
        <div id="spring" onClick={() => { if (!isSelectedCategory){ changeCategory({category: 0, subject: "네트워크", character: "spring", class: "springSelected",}); moveSDchractor('springCS') }}} onMouseOver={showCategory.bind(null, 'springCS')} onMouseOut={hideCategory.bind(null, 'springCS')} className="spring"></div>
        <div id="fall" onClick={() => { if (!isSelectedCategory){ changeCategory({category: 1, subject: "알고리즘", character: "fall", class: "fallSelected",}); moveSDchractor('fallAlgo') }}} onMouseOver={showCategory.bind(null, 'fallAlgo')} onMouseOut={hideCategory.bind(null, 'fallAlgo')} className="fall"></div>
        <div id="summer" onClick={() => { if (!isSelectedCategory){ changeCategory({category: 3, subject: "react", character: "summer", class: "summerSelected",}); moveSDchractor('summerBack') }}} onMouseOver={showCategory.bind(null, 'summerBack')} onMouseOut={hideCategory.bind(null, 'summerBack')} className="summer"></div>
        <div id="winter" onClick={() => { if (!isSelectedCategory){ changeCategory({category: 2, subject: "spring", character: "winter", class: "winterSelected",}) ; moveSDchractor('winterFront') }}} onMouseOver={showCategory.bind(null, 'winterFront')} onMouseOut={hideCategory.bind(null, 'winterFront')} className="winter"></div>
        <div id="hero" onClick={() => { if (!isSelectedCategory){ changeCategory({category: 4, subject: "Java", character: "hero", class: "heroSelected",}) ; moveSDchractor('heroLang') }}} onMouseOver={showCategory.bind(null, 'heroLang')} onMouseOut={hideCategory.bind(null, 'heroLang')} className="hero"></div>
        <br />
        <br />
        <br />
        <br />
        <br />

        {
          isShowNpcBalloon?
          <div className="npcSpeechBalloon">
            <div className="npcSpeechBalloonContent">
              {npcBalloonContent}
            </div>
          </div>
          : null
        }


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
            {quizInfo[category].category} 진행도: {progress[quizInfo[category].category.toLowerCase()]}%
          </div>
          : null
        }
        {
          showWork?
          <div className="workContainer">
            {
              showWorkChoice?
              <div className="container row m-0 p-0">
                <div onClick={() => {choiceWork('study')}} className="studySelectButton col-5 pop">공부하기</div>
                <div onClick={() => {choiceWork('quiz')}} className="quizSelectButton col-5 pop">문제풀기</div>
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
              <div className="popup">
                {quizList.map((quiz, index) => (
                  <div key={index} className={"quizHover quizcomp"} onClick={showQuiz.bind(null, quiz)}>
                    <p className="quizTitle">
                      {quiz.title}
                    </p> 
                    {
                      quiz.correct === 1 ?
                      <div className="correct"></div>
                      : null
                    }
                     {
                      quiz.correct === 2 ?
                      <div className="wrong"></div>
                      : null
                    }
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
                        <div key={index} className="col-3">
                          <span className="form-inline"><input onClick={checkAnswer.bind(null, example)} type="radio" className="input-radio" name="quizRadio" id={index}/><label htmlFor={index} className="form-radio">{example}</label></span>
                        </div>
                      ))}
                </div>
                <div className="quizSubmit" onClick={solveQuiz}>제출</div>
              </div>

              : null
            }

          {/* 페이지네이션 */}
          {/* 페이지네이션 */}
          {/* 페이지네이션 */}
          <div className="paginationBar">
            <p className="paginationItem" onClick={leftArrow}> {`<`} </p>
            {pages.map((page, index) => (
              <p id="pageNums" key={index} className="paginationItem" onClick={changePage.bind(null, page)}>
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


        {/* 알고리즘 화면 */}
        {/* 알고리즘 화면 */}
        {/* 알고리즘 화면 */}

        {
          isShowingAlgo?
          <div className="algoContainer">
            <div className="algoBox">
            {/* 문제보여주는 부분 */}
            <div className="algoProblem">
              <br />
              <p style={{fontSize: '2vw'}}>
                문제
              </p>
              <hr />
              <ReactMarkdown  children = {showingAlgo.problem} rehypePlugins={[rehypeRaw]} remarkPlugins={[remarkGfm]}>
              </ReactMarkdown>  
            </div>
            <div onClick={closeAlgo} className="CloseAlgo">X</div>
            <div className="langChoice">

              <div className="dropdown">
                <button className="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  {lang}
                </button>
                <ul className="dropdown-menu">
                  <li className="dropdown-item" onClick={() => {changeLang('python')}}>PYTHON</li>
                  <li className="dropdown-item" onClick={() => {changeLang('java')}}>JAVA</li>
                  <li className="dropdown-item" onClick={() => {changeLang('C / C++')}}>C / C++</li>
                  <li className="dropdown-item" onClick={() => {changeLang('javascript')}}>JavaScrpit</li>
                </ul>
              </div>
            </div>

            <div className="codeEditor">
              <CodeTextarea 
              lang = {lang} 
              algoInfo = {showingAlgo} 
              submitAlgo = {submitAlgo} 
              submitTestAlgo = {submitTestAlgo}
              ></CodeTextarea>
            </div>
            
            <div className="inputBox">
              <div style={{position: "relative",}}>
                <p className="alarmText">
                  input
                </p>
                <textarea onChange={(evn) => {setInputValue(evn.target.value)}} className="inputTextArea" cols="30" rows="10"></textarea>
              </div>
            </div>

            <div className="outputBox">
              <div>
              {/* <div style={{position: "relative",}}> */}
                <p className="alarmText">
                  output
                </p>
                <ReactMarkdown className="outputResult" children = {outputValue} rehypePlugins={[rehypeRaw]}>
                </ReactMarkdown>  
                {/* <div className="outputResult">
                  {outputValue}
                </div> */}
              </div>
            </div>
            {/* <AlgorithmSelfStudy></AlgorithmSelfStudy> */}
              
            
            </div>
          </div>
          : null
        }

        {/* 알고리즘 화면 끝 */}
        {/* 알고리즘 화면 끝 */}
        {/* 알고리즘 화면 끝 */}

        {
          IsShowStudy?
          <Study category = {category} subject = {subject}></Study>
          : null
        }


      </div>
      {/* 조건부 렌더링 */}
      {show && <GetAlbum />}
    </>
  );
};

export default Quiz;
