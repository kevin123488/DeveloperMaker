import React, { useEffect, useState } from "react";
import StoryAlbum from "../../components/Album/StoryAlbum";
import SelectionAlbum from "../../components/Album/SelectionAlbum";
import { useNavigate } from "react-router";
import "./Album.css";
import { readAlbum } from "../../slices/albumSlice";
import { useDispatch, useSelector } from "react-redux";

const Album = () => {
  const dispatch = useDispatch()
  // 페이지 렌더링 시 1회 싨행
  useEffect(()=>{
      dispatch(readAlbum());
  }, [dispatch]);
  const albumList = useSelector((state)=> {
    return state.album.albumList;
  })
  const user = useSelector((state)=>{
    return state.user.userInfo;
  })
  const navigate = useNavigate()

  // 현재 보고 싶은 앨범 유형 선택 스토리 or 컬렉션
  const [selType, setSelType] = useState(true);
  function changeType() {
    setSelType(!selType)
  }
  // 뽑기 화면
  function goPick() {
    navigate('/pick')
  }
  // 메인화면
  function goMain() {
    navigate('/')
  }
  return (
    <div className="albumBack">
      <div className="albumMenu" >
        <h1> {user.nickname} 's Album</h1>
        <button onClick={goPick}>뽑기</button>
        <button onClick={goMain}>메인 화면</button>
      </div>
      <div>
        <button onClick={changeType}>스토리</button>
        <button onClick={changeType}>컬렉션</button>
      </div>
      <div className="albumCardList">
        {selType ? albumList.map(album => {return (<StoryAlbum key={album.albumId} album={album} />)}):
        <SelectionAlbum/>}
      </div>
    </div>
  );
}
export default Album;
