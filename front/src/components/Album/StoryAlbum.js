import React, { useState } from "react";
import '../../pages/Album/Album.css';
import { useSelector } from "react-redux";
import AlbumComponent from "./AlbumComponent";

const StoryAlbum = () => {
  const [show, setShow] = useState(0)
  const springAlbumList = useSelector((state)=> {
    return state.album.storyAlbumList.filter((album) => {
      return album.theme === "spring"
    }) ;
  })
  const winterAlbumList = useSelector((state)=> {
    return state.album.storyAlbumList.filter((album) => {
      return album.theme === "winter"
    }) ;
  })
  const fallAlbumList = useSelector((state)=> {
    return state.album.storyAlbumList.filter((album) => {
      return album.theme === "fall"
    }) ;
  })
  const totalAlbumList = useSelector((state)=> {
    return state.album.storyAlbumList.filter((album) => {
      return album.theme === "total"
    }) ;
  })

    return (
      <div>
        {/* 캐릭터로 선택하는 창 */}
        <div className="albumStoryTypeBtnBack">
          {[0,1,2,3].map((idx)=> { return <img className={"albumStoryTypeBtn" + ((show === idx) ? " albumStoryBtnSel": "" )} key={`albumStoryBtn-${idx}`}
          onClick={()=>{setShow(idx)}}  src={require(`../../asset/images/Album/Head/Head${idx}.png`)} alt="" /> })}
        </div>
        {/* 실제 앨범 */}
        <div className="albumCardList">
          {(show === 0) && totalAlbumList.map(album => {return (<AlbumComponent key={album.albumId} album={album} />)})}
          {(show === 1) && springAlbumList.map(album => {return (<AlbumComponent key={album.albumId} album={album}  />)})}
          {(show === 2) && fallAlbumList.map(album => {return (<AlbumComponent key={album.albumId} album={album} />)})}
          {(show === 3) && winterAlbumList.map(album => {return (<AlbumComponent key={album.albumId} album={album} />)})}
        </div>
      </div>
    )
}

export default StoryAlbum;
