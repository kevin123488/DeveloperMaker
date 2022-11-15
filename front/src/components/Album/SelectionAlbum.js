import React from "react";
import '../../pages/Album/Album.css';
import { useSelector } from "react-redux";
import AlbumComponent from "./AlbumComponent";

const SelectionAlbum = () => {
  const studyAlbumList = useSelector((state)=> {
    return state.album.studyAlbumList
  })
    return (

      <div>
        {/* 공간먹는용 */}
        <div className="albumStoryTypeBtnBack">
          <div className="albumSelectionDumyArea"></div>
        </div>

        {/* 실제 앨범 */}
        <div className="albumCardList">
          {studyAlbumList.map(album => {return (<AlbumComponent key={album.albumId} album={album} />)})}
        </div>
      </div>
    )
}

export default SelectionAlbum;
