import React from "react";
import '../../pages/Album/Album.css';
import { useSelector } from "react-redux";
import AlbumComponent from "./AlbumComponent";

const SelectionAlbum = () => {
  const springAlbumList = useSelector((state)=> {
    return state.album.studyAlbumList
  })
    return (
      <div>
        {/* 실제 앨범 */}
        <div className="albumCardList">
          {springAlbumList.map(album => {return (<AlbumComponent key={album.albumId} album={album} />)})}
        </div>
      </div>
    )
}

export default SelectionAlbum;
