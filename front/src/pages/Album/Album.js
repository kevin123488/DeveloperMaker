import React, { useEffect, useState } from "react";
import StoryAlbum from "../../components/Album/StoryAlbum";
import SelectionAlbum from "../../components/Album/SelectionAlbum";
import { useNavigate } from "react-router";
import "./Album.css";
import { readAlbum } from "../../slices/albumSlice";
import { useDispatch, useSelector } from "react-redux";
import GetAlbum from "../../components/Album/GetAlbum";
import {putAlbumList, getAlbumCheck} from "../../slices/albumSlice"


const Album = () => {
  const dispatch = useDispatch()
  const user = useSelector((state)=>{
    return state.user.userInfo;
  })
  const navigate = useNavigate()
  // 페이지 렌더링 시 1회 실행
  useEffect(()=>{
      dispatch(readAlbum());
  }, [dispatch]);

  // 현재 보고 싶은 앨범 유형 선택 스토리 or 컬렉션
  const [selType, setSelType] = useState(true);
  function changeType(state) {
    setSelType(state)
  }
  // 메인화면
  function goMain() {
    navigate('/')
  }
  // 앨범 뽑기 보여주기용 변수
  const show = useSelector((state)=>{
    return state.album.albumPickShow
  })

  function changeShow() {
    dispatch({type:'album/changeMode'})
  }
  // 앨범 뽑기 함수
  const putAlbum =  async(albumId) => {
    const response = await dispatch(getAlbumCheck(albumId))
    // 중복이면 true이므로 false일 때 실행
    if (!response.payload) {
      dispatch(putAlbumList(albumId))
    }
  }

  return (
    <div className="albumBack">
      <div className="albumMenu" >
        <p onClick={changeShow} className="albumMainTitle"> {user.nickname}'s Collection</p>
        <button onClick={()=>{ putAlbum(4)}}>테스트</button>
        <div>
          <button className={"albumBtn" + (!selType ? " albumBtnSel" : "")} onClick={() => {changeType(true)}}>스토리</button>
          <button className={"albumBtn" + (selType ? " albumBtnSel" : "")} onClick={() => {changeType(false)}}>스터디</button>
        </div>
        <button className="albumBtn" onClick={goMain}>Home</button>
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
