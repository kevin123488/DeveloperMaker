import React, {useEffect, useState} from "react";
import "../../pages/Album/Album.css"
import openbook from "../../asset/images/Album/AlbumPick/OpenBookImage.png"
import BronzeLogo from "../../asset/images/Album/RatingLogo/BronzeLogo.png"
import SilverLogo from "../../asset/images/Album/RatingLogo/SilverLogo.png"
import GoldLogo from "../../asset/images/Album/RatingLogo/GoldLogo.png"
import { useDispatch, useSelector } from "react-redux";

function GetAlbum () {
  const dispatch = useDispatch()
  const album = useSelector((state)=> {
    return state.album.newAlbum
  })
  // 앨범 커버 보이기 앨범 자체 보이기 변수
  const [showCover, setShowCover] = useState(false)
  const [showAlbum, setShowAlbum] = useState(false)
  // 디테일 보일 지 여부
  const [show, setShow] = useState(false)
  // 로고 이미지
  const [rating, setRating] = useState(0)
  const logoImg = [BronzeLogo, SilverLogo, GoldLogo]
  // 획들 배경

  useEffect(()=>{
    // 앨범 레이팅 계산
    if (album.ownerRate > 66) {
      setRating(0)
    } else if (album.ownerRate > 33) {
      setRating(1)
    } else {
      setRating(2)
    }

    setTimeout(()=>{ setShowCover(true) }, 500)
    setTimeout(()=>{ setShowCover(false);
      setShowAlbum(true)} , 2000);
  },[album.ownerRate]);

  function changeShow() {
    dispatch({type:'album/closeShow'})
  }
    return (
      <div className="GetAlbum">
        <img className="GetAlbumBack" src={require(`../../asset/images/Album/AlbumPick/${album.theme}Back.png`)} alt="" />
        {showCover && <img className="GetAlbumCover" src={require("../../asset/images/Album/AlbumPick/AlbumCover.png")} alt=""/>}
        {showAlbum &&
        <div>
          <img className="GetAlbumOpenBook" src={openbook} alt="" />
          <div className="GetAlbumImgTransfer">
            <img src={album.albumImg} onClick={()=>{ {setShow(true)} }}
            className="albumImg albumImgOwned"  alt="앨범" />
            <p className="GetAlbumTitle">{album.albumTitle}</p>
            <img className="albumRating" src={logoImg[rating]} alt="등급" />
            <span className="albumCloseBtn" onClick={()=>{changeShow()}}>획득</span>
          </div>
        </div>}
        {show && <img className="albumDetail" onClick={()=>{setShow(false)}} src={album.albumImg} alt="" />}
      </div>
    )
}

export default GetAlbum