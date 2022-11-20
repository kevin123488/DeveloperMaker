import React, { useEffect, useState } from "react";
import { useSelector, useDispatch } from 'react-redux';
import "./SelfStudy.css";
import { getStudyList, getStudyInfo, } from "../../slices/selfstudySlice";
// import { useDispatch } from "react-redux";
// import styled from "styled-components";
// import background from "../../asset/images/SelfstudyImg/CsStudyBackground.png";
// import btn from "../../asset/images/SelfstudyImg/버튼.png";
import ReactMarkdown from "react-markdown";
import rehypeRaw from "rehype-raw";
import remarkGfm from "remark-gfm";
// import styled from "styled-components";
// 각 주인공 나오는 배경 만들면 될듯
// import background from './SelfStudyBackground.gif';
// import { Link } from 'react-router-dom';
// import btnSound from "../../asset/soundEffects/buttonClick.wav";
// import btnCuteSound from "../../asset/soundEffects/buttonCute.wav";
import btnSimpleSound from "../../asset/soundEffects/buttonSimple.wav";
import changePageSound from "../../asset/soundEffects/Selfstudy/changePage.wav";
import showMarkdownSound from "../../asset/soundEffects/Selfstudy/showMarkdown.wav";


const CSselfStudy = (prop) => {

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
      // console.log('스터디 요청정보', initialStudyInfo)
      // console.log(studyInfo)
      await dispatch(getStudyList(initialStudyInfo))
      // const newStudyList = res.payload
    };
    getInitialStudy()

    setTimeout(() => {
      const pageNum = document.getElementById('pageNums')
      // console.log('스타일', pageNum.style)
      pageNum.style.color = '#80b9ff'
    }, 100)
  
  }, [dispatch])

  // const study = useSelector((state) => state.study)
  const studyList = useSelector((state) => state.study.studyList.studyInfo)
  const studyInfo = useSelector((state) => state.study.studyInfo)
  const maxPage = useSelector((state) => state.study.studyList.totalPage)
  // const [studyInfo, setStudyInfo] = useState(study.studyInfo)
  // const [studyList, setStudyList] = useState(study.studyList.studyInfo)
  const [showingMarkdown, setShowingMarkdown] = useState('')
  const [isShowMarkdown, setIsShowMarkdown] = useState(false)
  const [category,] = useState(studyInfo[prop.category].category)
  const [subject, setSubject] = useState(prop.subject)
  const [offset, setOffset] = useState(0)
  const [limit,] = useState(6)
  const [nowpage, setNowpage] = useState(0)
  const [pages, setPages] = useState([1, 2, 3, 4])

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
  
  useEffect(() => {
  }, [studyList])

  // md정리창 보여주는 함수
  const showMarkdown = (content) => {
    playShowMarkdownSound()

    setShowingMarkdown(content)
    setIsShowMarkdown(true)
  }
  const closeStudy = () => {
    playBtnSimpleSound()
    setIsShowMarkdown(false)
  }
  
  // 카테고리 변경하는 함수 pageInfo = {category: category, subject: subject,} 
  // const changeCategory = async (pageInfo) => {
  //   const newStudyInfo = {
  //     category: studyInfo[pageInfo.category].category,
  //     subject: pageInfo.subject,
  //     offset: 0,
  //     limit: limit,
  //   }
  //   setIsShowMarkdown(false)
  //   changeStudyList(newStudyInfo)
  //   await setOffset(0)
  //   await setNowpage(0)
  //   await setCategory(pageInfo.category)
  //   await setSubject(pageInfo.subject)

  // }

  // 서브젝트 변경하는 함수 pageInfo = {category: category, subject: subject,} 
  const changeSubject = async (info) => {
    playChangePageSound()

    const newStudyInfo = {
      category: category,
      subject: info.subject,
      offset: 0,
      limit: limit,
    }
    setIsShowMarkdown(false)
    await setOffset(0)
    await setNowpage(0)
    await setSubject(info.subject)
    await changeStudyList(newStudyInfo)

    const pageNums = document.querySelectorAll('#pageNums')
    pageNums.forEach((pageNum, idx) => {

      // console.log(pageNum)
      if (idx === 0) {
        pageNum.style.color = '#80b9ff'
      } else {
        pageNum.style.color = 'white'
      }
    })

    const subjects = document.querySelectorAll(`.subjectItem`)
    // console.log(subjects)
    subjects.forEach((subject) => {
      if (subject.innerText === info.subject) {
        subject.style.color = 'white'
      } else {
        subject.style.color = 'black'
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

    const newStudyInfo = {
      category: category,
      subject: subject,
      offset: page - 1,
      limit: limit,
    }
    // console.log(newStudyInfo)
    await changeStudyList(newStudyInfo)
    await setOffset(page-1)
  }

  // 보는 페이지 변경하는 함수
  const changeStudyList = (newStudyInfo) => {
    const studyInfo = {
      category: newStudyInfo.category,
      subject: newStudyInfo.subject,
      offset: newStudyInfo.offset,
      limit: newStudyInfo.limit,
    }
    setIsShowMarkdown(false)
    dispatch(getStudyList(studyInfo))
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

      const newStudyInfo = {
        category: category,
        subject: subject,
        offset: (nowpage - 1) * 4,
        limit: limit,
      }
      setPages([(nowpage - 1) * 4 + 1, (nowpage - 1) * 4 + 2, (nowpage - 1) * 4 + 3, (nowpage - 1) * 4 + 4])
      changeStudyList(newStudyInfo)
      setNowpage(nowpage - 1)
    }
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

      const newStudyInfo = {
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
      changeStudyList(newStudyInfo)
      setNowpage(nowpage + 1)
    }
  }

  // 효과음 gyrhkdma

  const playChangePageSound = () => {
    const sound = new Audio()
    sound.src = changePageSound
    sound.play()
  }

  // const playBtnSound = () => {
  //   const sound = new Audio()
  //   sound.src = btnSound
  //   sound.play()
  // }

  // const playBtnCuteSound = () => {
  //   const sound = new Audio()
  //   sound.src = btnCuteSound
  //   sound.play()
  // }
  
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

  return (
    <>
      {/* <CsStudyBackground>
        <br />
        <br />
        <br />
        <br />
        <br /> */}

        <div className="StudyContainer">

          {/* 과목 목록 */}
          <div className="subjectbar">
            {studyInfo[prop.category].subjectList.map((subject, index) => (
              <p key={index} className="subjectItem" onClick={changeSubject.bind(null, {subject: subject.subject})}>
                {subject.subject}
              </p>
            ))}
          </div>

          <div className="studyItems container">
            <div className="">
              {studyList.map((study, index) => (
                <div key={index} className=" StudyCompnent" onClick={showMarkdown.bind(null, study.content)}>
                  <p className="studyTitle">
                    {study.title}
                  </p>
                </div>
              ))}
            </div>
          </div>

          {
            isShowMarkdown
            ?
            <>
              <div className="tabletFrame"></div>
              <div className="showingMarkdown">
                  <div onClick={closeStudy} className="CloseQuiz">X</div>
                <ReactMarkdown children = {showingMarkdown} rehypePlugins={[rehypeRaw]} remarkPlugins={[remarkGfm]}>
                </ReactMarkdown>  
              </div>
            </>
            : null
          }


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
      {/* </CsStudyBackground> */}
    </>
  );
};

export default CSselfStudy;
