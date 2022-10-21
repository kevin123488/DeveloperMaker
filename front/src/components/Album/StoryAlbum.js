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
        <img src={require(`../../asset/images/Album/변환${album.id}.png`)} className="albumImg" alt="앨범" />
        <h4 className="albumTitle">{album.title}</h4>
        <hr />
        <p className="albumSubtitle">{album.subtitle}</p>
      </div>
    )
  } else {
    return (
      <div className="albumCard" onClick={change} onMouseOut={change}>
        <h1>뒷면</h1>
        <p>{album.content}</p>
      </div>
    )
  }
}

export default StoryAlbum;
