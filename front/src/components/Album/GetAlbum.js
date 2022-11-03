import React, {useEffect, useState} from "react";
import "../../pages/Album/Album.css"
import openbook from "../../asset/images/Album/OpenBookImage.png"
import Profile from "../../asset/images/Profile/Profile.png";
import { useDispatch } from "react-redux";

function GetAlbum () {
  const dispatch = useDispatch()
  const [mode, setMode] = useState(true)
  useEffect(()=>{
    setTimeout(()=>{ setMode(false) }, 1000);
  });
  const Openbook = openbook
  const img = Profile
  const title = "앨범"

  function changeShow() {
    dispatch({type:'album/changeMode'})
  }

  if (mode) {
    return (
      <div className="GetAlbumBack">
        <img className="GetAlbumCover" src={require("../../asset/images/Album/AlbumCover.png")} alt="" />
      </div>
    )
  }
  else {
    return (
      <div className="GetAlbum">
        <img className="GetAlbumOpenBook" src={Openbook} alt="" />
        <div className="GetAlbumImgTransfer">
          <img className="GetAlbumImg" src={img} alt="" />
          <p className="GetAlbumTitle">{title}</p>
          <button onClick={()=>{changeShow()}} className="btn btn-primary">획득</button>
        </div>
      </div>
    )
  }
}

export default GetAlbum