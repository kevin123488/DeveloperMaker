import React, { useEffect } from "react";
import { useState } from "react";
import BronzeLogo from "../../asset/images/Album/RatingLogo/BronzeLogo.png"
import SilverLogo from "../../asset/images/Album/RatingLogo/SilverLogo.png"
import GoldLogo from "../../asset/images/Album/RatingLogo/GoldLogo.png"

const AlbumComponent = (props) => {
  const [show, setShow] = useState(false)
  const album = props.album
  const [rating, setRating] = useState(0)
  const logoImg = [BronzeLogo, SilverLogo, GoldLogo]

  useEffect(()=>{
    if (album.ownerRate > 66) {
      setRating(0)
    } else if (album.ownerRate > 33) {
      setRating(1)
    } else {
      setRating(2)
    }
  }, [album.ownerRate])

  if (album)
  // 소유한 경우 보여줄 카드
  if (album.isOwned) {
    return (
      <div className="albumLine">
        <div className="albumCard" onClick={()=>{setShow(true)}}>
          <img src={album.albumImg} className="albumImg" alt="앨범" />
          <p className="albumTitle">{album.albumTitle}</p>
          <img className="albumRating" src={logoImg[rating]} alt="등급" />
          <hr />
        </div>
        {show ? <img className="albumDetail" onClick={()=>{setShow(false)}} src={album.albumImg} alt="" />: <div></div>}
      </div>
    )
  // 소유하지 못한 경우 보여줄 부분
  } else {
    return (
      <div className="albumNocard"></div>
    )
  }
}

export default AlbumComponent;