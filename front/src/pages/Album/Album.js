import React, { useEffect, useState } from "react";
import StoryAlbum from "../../components/Album/StoryAlbum";
import SelectionAlbum from "../../components/Album/SelectionAlbum";
import { useNavigate } from "react-router";
import "./Album.css";
import { readAlbum, putAlbumList, getAlbumCheck } from "../../slices/albumSlice";
import { useDispatch, useSelector } from "react-redux";
import { getAlbumProgress } from "../../slices/userSlice";
import mainImg from "../Game/gohomeIcon.png"
import NewAlbumLogo from "../../asset/images/Album/NewAlbumLogo.png"
import GetAlbum from "../../components/Album/GetAlbum";
// 효과음
import btnSound from "../../asset/soundEffects/buttonClick.wav";
import btnCuteSound from "../../asset/soundEffects/buttonCute.wav";
import btnSimpleSound from "../../asset/soundEffects/buttonSimple.wav";
import changePageSound from "../../asset/soundEffects/Selfstudy/changePage.wav";
import showMarkdownSound from "../../asset/soundEffects/Selfstudy/showMarkdown.wav";
import albumTheme from "../../asset/soundEffects/Under_the_Sky.mp3";
  
// 로딩관리

const Album = () => {
  const [isLoaded, setIsLoaded] = useState(false)

  window.onload = function(){
    setIsLoaded(true)
  }

  const dispatch = useDispatch()
  const user = useSelector((state)=>{
    return state.user;
  })
  const newStory = useSelector((state)=>{
    return state.album.checkNew.story
  })
  const newStudy = useSelector((state)=>{
    return state.album.checkNew.study
  })

  // New 분류별로 있는지 확인하는 로직
  const storyAlbumList = useSelector((state)=>{
    return state.album.storyAlbumList
  })
  const studyAlbumList = useSelector((state)=>{
    return state.album.studyAlbumList
  })
  useEffect(()=>{
    storyAlbumList.forEach((album)=>{
      if (album.isOwned && !album.isRead) {
        dispatch({type: "album/changeCheckNew", data: album.theme})
      }
    })
    // setIsLoaded(true)
  },[storyAlbumList, dispatch])
  useEffect(()=>{
    studyAlbumList.forEach((album)=>{
      if (album.isOwned && !album.isRead) {
        dispatch({type: "album/changeCheckNew", data: album.theme})
      }
    })
  },[studyAlbumList, dispatch])
  const navigate = useNavigate()


  // 페이지 렌더링 시 1회 실행(앨범 받기 + 앨범 진행도)
  useEffect(()=>{
    const BGM = document.getElementById('mainBGM');
    if (BGM.innerText !== 'albumBGM') {
      BGM.innerText = 'albumBGM';
      BGM.src = albumTheme;
    }
      dispatch(readAlbum());
      dispatch(getAlbumProgress())
  }, [dispatch]);

  // 현재 보고 싶은 앨범 유형 선택 스토리 or 컬렉션
  const [selType, setSelType] = useState(true);
  function changeType(state) {
    setSelType(state)
  }
  
  // 메인화면
  const goMain = () => {
    playBtnSound()
    setTimeout(() => {
      navigate('/')
    }, 100)
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



  // 효과음 gyrhkdma

  // const playChangePageSound = () => {
  //   const sound = new Audio()
  //   sound.src = changePageSound
  //   sound.play()
  // }

  const playBtnSound = () => {
    const sound = new Audio()
    sound.src = btnSound
    sound.play()
  }

  // const playBtnCuteSound = () => {
  //   const sound = new Audio()
  //   sound.src = btnCuteSound
  //   sound.play()
  // }
  
  // const playBtnSimpleSound = () => {
  //   const sound = new Audio()
  //   sound.src = btnSimpleSound
  //   sound.play()
  // }

  const playShowMarkdownSound = () => {
    const sound = new Audio()
    sound.src = showMarkdownSound
    sound.play()
  }


  return (
    <div className="albumBack">
      {/* {
        !isLoaded?
        <div className="loadingPage"></div>
        : null
      } */}
      <img src="" alt="" />
      {/* <p onClick={()=>{ putAlbum(4)}} className="albumMainTitle"> {user.userInfo.nickname}'s Collection</p> */}
      <div className="albumModeSel">
        <div>
          {newStory && <img src={NewAlbumLogo} alt="New" className={"albumBtnNew" + (!selType ? " albumBtnSel" : "")}/>}
          <p className={"albumBtn" + (!selType ? " albumBtnSel" : "")} onClick={() => {changeType(true); playShowMarkdownSound()}}>스토리({user.progress.album.storyAlbum}%)</p>
        </div>
        <div>
          {newStudy && <img src={NewAlbumLogo} alt="New" className={"albumBtnNew" + (selType ? " albumBtnSel" : "")} />}
          <p className={"albumBtn" + (selType ? " albumBtnSel" : "")} onClick={() => {changeType(false); playShowMarkdownSound()}}>스터디({user.progress.album.studyAlbum}%)</p>
        </div>
      </div>
      <img className="albumMainBtn" src={mainImg} alt="" onClick={goMain} />
      <div>
        {selType ? <StoryAlbum />: <SelectionAlbum/>}
      </div>
      {/* 조건부 렌더링 */}
      {show && <GetAlbum />}
    </div>
  );
} 
export default Album;
