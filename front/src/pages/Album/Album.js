import React, { useState } from "react";
import StoryAlbum from "../../components/Album/StoryAlbum";
import SelectionAlbum from "../../components/Album/SelectionAlbum";
import { useNavigate } from "react-router";
import "./Album.css";

const Album = () => {
  const navigate = useNavigate()
  const AlbumData =[
    {id: 1, title: "Chapter1", subtitle:"서봄은 서프링", content: 'wow' },
    {id: 2, title: "Chapter2", subtitle:"차가을은 차가움", content: 'good' },
    {id: 3, title: "Chapter3", subtitle:"한여름은 한여울", content: 'oh' },
    {id: 4, title: "Chapter4", subtitle:"한겨울은 몰라", content: 'yes' },
    {id: 5, title: "Chapter5", subtitle:"그냥 부제목", content: 'vamos' },
    {id: 6, title: "Chapter6", subtitle:"집어 넣기용", content: 'olleh' },
  ]
  // 현재 보고 싶은 앨범 유형 선택 스토리 or 컬렉션
  const [selType, setSelType] = useState(true);
  function changeType() {
    setSelType(!selType)
  }
  // 뽑기 화면
  function goPick() {
    navigate('/pick')
  }
  return (
    <div className="albumBack">
      <div className="albumMenu" >
        <h1> user.name 's Album</h1>
        <button onClick={goPick}>뽑기</button>
        <button>메인 화면</button>
      </div>
      {}
      <div>
        <button onClick={changeType}>스토리</button>
        <button onClick={changeType}>컬렉션</button>
      </div>
      <div className="albumCardList">
        {selType ? AlbumData.map(album => {return (<StoryAlbum key={album.id} album={album} />)}):
        <SelectionAlbum/>}
      </div>
    </div>
  );
}
export default Album;
