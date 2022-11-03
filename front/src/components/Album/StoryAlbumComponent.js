import React from "react";
import { useState } from "react";

const StoryAlbumComponent = (props) => {
  const [show, setShow] = useState(false)
  
  const album = props.album
  // 소유한 경우 보여줄 카드
  // if (album.isOwned) {
    return (
      <div>
        <div className="albumCard">
          <img onClick={()=>{setShow(true)}} src={album.albumImg} className="albumImg" alt="앨범" />
          <h4 className="albumTitle">{album.albumTitle}</h4>
          <hr />
        </div>
        {show ? <img className="albumDetail" onClick={()=>{setShow(false)}} src={album.albumImg} alt="" />: <div></div>}
      </div>
    )
  // 소유하지 못한 경우 보여줄 부분
  // } else {
  //   return (
  //     <div className="albumCard">
  //       <h1>없음</h1>
  //     </div>
  //   )
  // }
}

export default StoryAlbumComponent;