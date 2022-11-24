import React, { useState } from "react";
import { useDispatch } from "react-redux/es/exports";
import NoAlbumImg from "../../asset/images/Album/NoAlbumImg.png"
import NewAlbumLogo from "../../asset/images/Album/NewAlbumLogo.png"
import { deleteNew } from "../../slices/albumSlice";
// 효과음
import btnSimpleSound from "../../asset/soundEffects/buttonSimple.wav";
import { useEffect } from "react";

const AlbumComponent = (props) => {
  const [show, setShow] = useState(false)
  const [preloadPath] = useState([
    `../../asset/images/Album/Collection/1.png`,
    `../../asset/images/Album/Collection/2.png`,
    `../../asset/images/Album/Collection/3.png`,
    `../../asset/images/Album/Collection/4.png`,
    `../../asset/images/Album/Collection/5.png`,
    `../../asset/images/Album/Collection/6.png`,
    `../../asset/images/Album/Collection/7.png`,
    `../../asset/images/Album/Collection/8.png`,
    `../../asset/images/Album/Collection/9.png`,
    `../../asset/images/Album/Collection/10.png`,
    `../../asset/images/Album/Collection/11.png`,
    `../../asset/images/Album/Collection/12.png`,
    `../../asset/images/Album/Collection/13.png`,
    `../../asset/images/Album/Collection/14.png`,
    `../../asset/images/Album/Collection/15.png`,
    `../../asset/images/Album/Collection/16.png`,
    `../../asset/images/Album/Collection/17.png`,
    `../../asset/images/Album/Collection/18.png`,
    `../../asset/images/Album/Collection/19.png`,
    `../../asset/images/Album/Collection/20.png`,
    `../../asset/images/Album/Collection/21.png`,
    `../../asset/images/Album/Collection/22.png`,
    `../../asset/images/Album/Collection/23.png`,
    `../../asset/images/Album/Collection/24.png`,
    `../../asset/images/Album/Collection/25.png`,
    `../../asset/images/Album/Collection/26.png`,
    `../../asset/images/Album/Collection/27.png`,
    `../../asset/images/Album/Collection/28.png`,
    `../../asset/images/Album/Collection/29.png`,
    `../../asset/images/Album/Collection/30.png`,
    `../../asset/images/Album/Collection/31.png`,
    `../../asset/images/Album/Collection/32.png`,
    `../../asset/images/Album/Collection/33.png`,
    `../../asset/images/Album/Collection/34.png`,
    `../../asset/images/Album/Collection/35.png`,
    `../../asset/images/Album/Collection/36.png`,
    `../../asset/images/Album/Collection/37.png`,
    `../../asset/images/Album/Collection/38.png`,
    `../../asset/images/Album/Collection/39.png`,
    `../../asset/images/Album/Collection/40.png`,
    `../../asset/images/Album/Collection/41.png`,
    `../../asset/images/Album/Collection/42.png`,
    `../../asset/images/Album/Collection/43.png`,
    `../../asset/images/Album/Collection/44.png`,
    `../../asset/images/Album/Collection/45.png`,
    `../../asset/images/Album/Collection/46.png`,
    `../../asset/images/Album/Collection/47.png`,
    `../../asset/images/Album/Collection/48.png`,
    `../../asset/images/Album/Collection/49.png`,
    `../../asset/images/Album/Collection/50.png`,
    `../../asset/images/Album/Collection/51.png`,
    `../../asset/images/Album/Collection/52.png`,
  ])
  const [imgs, setimgs] = useState([])
  const dispatch = useDispatch()
  const album = props.album

  const images = [
    `../../asset/images/Album/Collection/1.png`,
    `../../asset/images/Album/Collection/2.png`,
    `../../asset/images/Album/Collection/3.png`,
    `../../asset/images/Album/Collection/4.png`,
    `../../asset/images/Album/Collection/5.png`,
    `../../asset/images/Album/Collection/6.png`,
    `../../asset/images/Album/Collection/7.png`,
    `../../asset/images/Album/Collection/8.png`,
    `../../asset/images/Album/Collection/9.png`,
    `../../asset/images/Album/Collection/10.png`,
    `../../asset/images/Album/Collection/11.png`,
    `../../asset/images/Album/Collection/12.png`,
    `../../asset/images/Album/Collection/13.png`,
    `../../asset/images/Album/Collection/14.png`,
    `../../asset/images/Album/Collection/15.png`,
    `../../asset/images/Album/Collection/16.png`,
    `../../asset/images/Album/Collection/17.png`,
    `../../asset/images/Album/Collection/18.png`,
    `../../asset/images/Album/Collection/19.png`,
    `../../asset/images/Album/Collection/20.png`,
    `../../asset/images/Album/Collection/21.png`,
    `../../asset/images/Album/Collection/22.png`,
    `../../asset/images/Album/Collection/23.png`,
    `../../asset/images/Album/Collection/24.png`,
    `../../asset/images/Album/Collection/25.png`,
    `../../asset/images/Album/Collection/26.png`,
    `../../asset/images/Album/Collection/27.png`,
    `../../asset/images/Album/Collection/28.png`,
    `../../asset/images/Album/Collection/29.png`,
    `../../asset/images/Album/Collection/30.png`,
    `../../asset/images/Album/Collection/31.png`,
    `../../asset/images/Album/Collection/32.png`,
    `../../asset/images/Album/Collection/33.png`,
    `../../asset/images/Album/Collection/34.png`,
    `../../asset/images/Album/Collection/35.png`,
    `../../asset/images/Album/Collection/36.png`,
    `../../asset/images/Album/Collection/37.png`,
    `../../asset/images/Album/Collection/38.png`,
    `../../asset/images/Album/Collection/39.png`,
    `../../asset/images/Album/Collection/40.png`,
    `../../asset/images/Album/Collection/41.png`,
    `../../asset/images/Album/Collection/42.png`,
    `../../asset/images/Album/Collection/43.png`,
    `../../asset/images/Album/Collection/44.png`,
    `../../asset/images/Album/Collection/45.png`,
    `../../asset/images/Album/Collection/46.png`,
    `../../asset/images/Album/Collection/47.png`,
    `../../asset/images/Album/Collection/48.png`,
    `../../asset/images/Album/Collection/49.png`,
    `../../asset/images/Album/Collection/50.png`,
    `../../asset/images/Album/Collection/51.png`,
    `../../asset/images/Album/Collection/52.png`,
];

  const preload = (images) => () => {
    console.log('프리로드 실행')
      images.forEach((image) => {
          const img = new Image();
          img.src = image;
      });
  };

  useEffect(() => {
    preload(images)
  }, [])

  // const preload = () => {
  //   for(let i = 0; i < preloadPath.length; i++) {
  //     const loadImg = new Image();
  //     loadImg.src = preloadPath[i];
  //     let tempImg = imgs
  //     tempImg.push(loadImg)
  //     console.log(tempImg)
  //     setimgs(tempImg)
  //   }
  // }


  // 효과음 tkdnsem
  
  const playBtnSimpleSound = () => {
    const sound = new Audio()
    sound.src = btnSimpleSound
    sound.play()
  }

  const showTitle = (id) => {
    const title = document.getElementById(`${id}`)
    title.innerText = album.albumTitle
  }

  const showOwnerRate = (id) => {
    const title = document.getElementById(`${id}`)
    title.innerText = `${parseInt((album.ownerRate)*100)}%의 유저가 획득했습니다`
  }

    return (
      <div className="albumLine">
        <div className="albumCard">
          {(album.isOwned && !album.isRead) && <img className="albumNewLogo" src={NewAlbumLogo} alt="" />}
          <img src={album.isOwned ? require(`../../asset/images/Album/Collection/${album.albumId}.png`): NoAlbumImg} onClick={()=>{ if (album.isOwned) {setShow(true);
          if (!album.isRead) { dispatch(deleteNew(album.albumId))}}; playBtnSimpleSound()}}
          onMouseOver={showOwnerRate.bind(null, album.albumId)}
          onMouseOut={showTitle.bind(null, album.albumId)}
          className={"albumImg" + (album.isOwned? " albumImgOwned" : "")} alt="앨범" />
          
          {/* <img src={album.isOwned ? imgs[album.albumId - 1] : NoAlbumImg} onClick={()=>{ if (album.isOwned) {setShow(true);
          if (!album.isRead) { dispatch(deleteNew(album.albumId))}}; playBtnSimpleSound()}}
          onMouseOver={showOwnerRate.bind(null, album.albumId)}
          onMouseOut={showTitle.bind(null, album.albumId)}
          className={"albumImg" + (album.isOwned? " albumImgOwned" : "")} alt="앨범" /> */}

          <p id={album.albumId} className="albumTitle">{album.albumTitle}</p>
          {/* <img className="albumRating" src={logoImg[rating]} alt="등급" /> */}
        </div>
        {show && <img className="albumDetail" onClick={()=>{setShow(false)}} src={require(`../../asset/images/Album/Collection/${album.albumId}.png`)} alt="" />}
      </div>
    )

}

export default AlbumComponent;