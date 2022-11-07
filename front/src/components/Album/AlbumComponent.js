import React, { useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux/es/exports";
import BronzeLogo from "../../asset/images/Album/RatingLogo/BronzeLogo.png"
import SilverLogo from "../../asset/images/Album/RatingLogo/SilverLogo.png"
import GoldLogo from "../../asset/images/Album/RatingLogo/GoldLogo.png"
import NoAlbumImg from "../../asset/images/Album/NoAlbumImg.png"
import NewAlbumLogo from "../../asset/images/Album/NewAlbumLogo.png"
import { deleteNew, readAlbum } from "../../slices/albumSlice";

const AlbumComponent = (props) => {
  const [show, setShow] = useState(false)
  const dispatch = useDispatch()
  const album = props.album
  const [rating, setRating] = useState(0)
  const logoImg = [BronzeLogo, SilverLogo, GoldLogo]

  // New 인지 여부 확인
  const newAlbum = useSelector((state) => {
    return state.album.newAlbum
  })

  // 앨범획득 로직

  useEffect(()=>{
    if (album.ownerRate > 66) {
      setRating(0)
    } else if (album.ownerRate > 33) {
      setRating(1)
    } else {
      setRating(2)
    }
  }, [album.ownerRate])
  // 소유한 경우 보여줄 카드
  // if (album.isOwned) {
    return (
      <div className="albumLine">
        <div className="albumCard">
          {(newAlbum.albumId === album.albumId) && <img className="albumNewLogo" src={NewAlbumLogo} alt="" />}
          <img src={album.isOwned ? album.albumImg : NoAlbumImg} onClick={()=>{ if (album.isOwned) {setShow(true)}
            if (newAlbum.albumId === album.albumId) { dispatch(deleteNew(album.albumId)); dispatch(readAlbum())} }}
          className={"albumImg" + (album.isOwned? " albumImgOwned" : "")} alt="앨범" />
          <p className="albumTitle">{album.albumTitle}</p>
          <img className="albumRating" src={logoImg[rating]} alt="등급" />
        </div>
        {show && <img className="albumDetail" onClick={()=>{setShow(false)}} src={album.albumImg} alt="" />}
      </div>
    )
  // 소유하지 못한 경우 보여줄 부분
  // } else {
  //   return (
  //     <div className="albumNocard"></div>
  //   )
  // }
}

export default AlbumComponent;