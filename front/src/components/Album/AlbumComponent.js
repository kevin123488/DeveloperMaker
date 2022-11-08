import React, { useEffect, useState } from "react";
import { useDispatch } from "react-redux/es/exports";
import BronzeLogo from "../../asset/images/Album/RatingLogo/BronzeLogo.png"
import SilverLogo from "../../asset/images/Album/RatingLogo/SilverLogo.png"
import GoldLogo from "../../asset/images/Album/RatingLogo/GoldLogo.png"
import NoAlbumImg from "../../asset/images/Album/NoAlbumImg.png"
import NewAlbumLogo from "../../asset/images/Album/NewAlbumLogo.png"
import { deleteNew } from "../../slices/albumSlice";

const AlbumComponent = (props) => {
  const [show, setShow] = useState(false)
  const dispatch = useDispatch()
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
    // if (album.isOwned && album.isRead) {
    //   if (album.theme === "study") {
    //     dispatch({type: 'album/checkNew', story: false })
    //   } else {
    //     dispatch({type: 'album/checkNew', story: album.theme })
    //   }
    //   dispatch({type: 'album/checkNew', })
    // }
  }, [album.ownerRate])

    return (
      <div className="albumLine">
        <div className="albumCard">
          {(album.isOwned && !album.isRead) && <img className="albumNewLogo" src={NewAlbumLogo} alt="" />}
          <img src={album.isOwned ? album.albumImg : NoAlbumImg} onClick={()=>{ if (album.isOwned) {setShow(true);
          if (!album.isRead) { dispatch(deleteNew(album.albumId))}}}}
          className={"albumImg" + (album.isOwned? " albumImgOwned" : "")} alt="앨범" />
          <p className="albumTitle">{album.albumTitle}</p>
          <img className="albumRating" src={logoImg[rating]} alt="등급" />
        </div>
        {show && <img className="albumDetail" onClick={()=>{setShow(false)}} src={album.albumImg} alt="" />}
      </div>
    )

}

export default AlbumComponent;