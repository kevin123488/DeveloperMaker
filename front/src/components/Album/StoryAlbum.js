import React, { useState } from "react";
import '../../pages/Album/Album.css';

const StoryAlbum = (props) => {
  const album = props.album
  const [front, setFront] = useState(true)
  function change() {
    setFront(!front)
  }
  if (front) {
    return (
      <div onClick={change} className="albumCard">
        <img src={album.albumImg} className="albumImg" alt="앨범" />
        <h4 className="albumTitle">{album.albumTitle}</h4>
        <hr />
      </div>
    )
  } else {
    return (
      <div className="albumCard" onClick={change} onMouseOut={change}>
        <h1>뒷면</h1>
      </div>
    )
  }
}

export default StoryAlbum;
