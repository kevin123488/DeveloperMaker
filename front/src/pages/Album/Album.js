import React, { useEffect, useState } from "react";
import StoryAlbum from "../../components/Album/StoryAlbum";
import SelectionAlbum from "../../components/Album/SelectionAlbum";
import { useNavigate } from "react-router";
import "./Album.css";
import { readAlbum } from "../../slices/albumSlice";
import { useDispatch, useSelector } from "react-redux";
import GetAlbum from "../../components/Album/GetAlbum";

const Album = () => {
  const dispatch = useDispatch()
  // 페이지 렌더링 시 1회 실행
  useEffect(()=>{
      dispatch(readAlbum());
  }, [dispatch]);
  const albumList = useSelector((state)=> {
    return state.album.storyAlbumList;
  })
  const show = useSelector((state)=>{
    return state.album.albumPickShow
  })
  const user = useSelector((state)=>{
    return state.user.userInfo;
  })
  const navigate = useNavigate()

  // 현재 보고 싶은 앨범 유형 선택 스토리 or 컬렉션
  const [selType, setSelType] = useState(true);
  function changeType(state) {
    setSelType(state)
  }
  // 메인화면
  function goMain() {
    navigate('/')
  }
  // 화면뽑기 보기
  function changeShow() {
    dispatch({type:'album/changeMode'})
  }
  return (
    <div className={"albumBack"+ (show ? "albumOpacity": "")}>
      <div className="albumMenu" >
        <h1 onClick={changeShow}> {user.nickname} 's Album</h1>
        <div>
          <button onClick={() => {changeType(true)}}>스토리</button>
          <button onClick={() => {changeType(false)}}>컬렉션</button>
        </div>
        <button onClick={goMain}>메인 화면</button>
      </div>
      <div>
        {selType ? <StoryAlbum />: <SelectionAlbum/>}
      </div>
      {/* 조건부 렌더링 */}
      {show && <GetAlbum />}
    </div>
  );
} 
export default Album;
