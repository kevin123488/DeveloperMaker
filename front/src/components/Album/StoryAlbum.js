import React, { useState } from "react";
import '../../pages/Album/Album.css';
import { useSelector } from "react-redux";
import NewAlbumLogo from "../../asset/images/Album/NewAlbumLogo.png"
import AlbumComponent from "./AlbumComponent";
// 효과음
import btnSound from "../../asset/soundEffects/buttonClick.wav";
import btnCuteSound from "../../asset/soundEffects/buttonCute.wav";
import btnSimpleSound from "../../asset/soundEffects/buttonSimple.wav";
import changePageSound from "../../asset/soundEffects/Selfstudy/changePage.wav";
import showMarkdownSound from "../../asset/soundEffects/Selfstudy/showMarkdown.wav";

const StoryAlbum = () => {
  const [show, setShow] = useState(0)
  // new 여부 확인
  // const newAlbum = [useSelector(state=> state.albun.checkNew.total),
  //   useSelector(state=> state.albun.checkNew.spring),
  //   useSelector(state=> state.albun.checkNew.fall),
  //   useSelector(state=> state.albun.checkNew.winter)
  // ]

  const newAlbumTheme = useSelector(state=> [state.album.checkNew.total, state.album.checkNew.spring,
    state.album.checkNew.fall, state.album.checkNew.winter])

  const springAlbumList = useSelector((state)=> {
    return state.album.storyAlbumList.filter((album) => {
      return album.theme === "spring"
    }) ;
  })
  const winterAlbumList = useSelector((state)=> {
    return state.album.storyAlbumList.filter((album) => {
      return album.theme === "winter"
    }) ;
  })
  const fallAlbumList = useSelector((state)=> {
    return state.album.storyAlbumList.filter((album) => {
      return album.theme === "fall"
    }) ;
  })
  const totalAlbumList = useSelector((state)=> {
    return state.album.storyAlbumList.filter((album) => {
      return album.theme === "total"
    }) ;
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



    return (
      <div>
        {/* 캐릭터로 선택하는 창 */}
        <div className="albumStoryTypeBtnBack">
          {[0,1,2,3].map((idx)=> { return (
          <div key={`storyList-${idx}`}>
            {newAlbumTheme[idx] && <img src={NewAlbumLogo} alt="New" key={`newAlbum-${idx}`} className="albumBtnNew" />}
            <img className={"albumStoryTypeBtn" + ((show === idx) ? " albumStoryBtnSel": "" )} key={`albumStoryBtn-${idx}`}
          onClick={()=>{setShow(idx); playBtnCuteSound()}}  src={require(`../../asset/images/Album/Head/Head${idx}.png`)} alt="" />
          </div> )})}
        </div>
        {/* 실제 앨범 */}
        <div className="albumCardList">
          {(show === 0) && totalAlbumList.map(album => {return (<AlbumComponent key={album.albumId} album={album} />)})}
          {(show === 1) && springAlbumList.map(album => {return (<AlbumComponent key={album.albumId} album={album}  />)})}
          {(show === 2) && fallAlbumList.map(album => {return (<AlbumComponent key={album.albumId} album={album} />)})}
          {(show === 3) && winterAlbumList.map(album => {return (<AlbumComponent key={album.albumId} album={album} />)})}
        </div>
      </div>
    )
}

export default StoryAlbum;
