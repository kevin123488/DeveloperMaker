import React, { useState } from "react";
import Styled from "styled-components";

import GameRuleImg from "../../asset/images/Main/GameRuleBtn.png";
import GameStartImg from "../../asset/images/Main/GameStartBtn.png";
import LogoutBtnImg from "../../asset/images/Main/LogoutBtn.png";
import ProfileBtnImg from "../../asset/images/Main/ProfileBtn.png";
import StudyBtnImg from "../../asset/images/Main/StudyBtn.png";
import AlbumBtnImg from "../../asset/images/Main/AlbumBtn.png";
import NewAlbumLogo from "../../asset/images/Album/NewAlbumLogo.png"
import { getNew } from "../../slices/albumSlice"
import { useEffect } from "react";

import { useSelector, useDispatch } from "react-redux";
import { useNavigate } from "react-router-dom";

const GameButtons = Styled.div`
  margin-top: 10%;
  height: 40%;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
`;
const LoginGameButtons = Styled.div`
  margin-top: -5%;
  height: 100%;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
`;
const BtnArea = Styled.div`
  margin-top: 5%;
  height: 40%;
  width: 50%;
  border-radius: 50%;
`;
const GameBtn = Styled.div`
  height: 100%;
  width: 100%;
  text-align: center;
  font-size: 2vw;
  cursor: pointer;

  // 텍스트 효과부분
  // // box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.2 );
  // backdrop-filter: blur( 6.5px );
  // -webkit-backdrop-filter: blur( 6.5px );
  // border-radius: 1vw;
  text-shadow: 0.1vw 0.1vw #000, 0.1vw 0.1vw #000, 0.1vw 0.1vw #000, 0.1vw 0.1vw #000;



  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
  overflow: hidden;
  border: 0ch;
  color: white;
  transition: all ease 0.1s;

  &:hover {
    transform: scale(1.05);
  }
`;

const NewAlbum = Styled.img`
  position: absolute;
  height: 3vw;
  width: 3vw;
`;

const GameButtonsArea = () => {
  const userInfo = useSelector((state) => state.user.userInfo);
  // 새앨범 여부 확인
  const [newAlbum, setNewAlbum] = useState(false)
  const dispatch = useDispatch()
  useEffect(()=> {
    // userInfo가 없이 실행될 경우 토큰을 보내지 않아서 album/new 요청이 안됨 new가 무조건 생기게 됨
    if (userInfo) {
      const newCheck = async() => {
        const response = await dispatch(getNew())
        setNewAlbum(response.payload)
      }
      newCheck()
    }
  }, [dispatch, userInfo])

  const navigate = useNavigate();

  const purge = async () => {
    await sessionStorage.clear();
    window.location.reload();
  };

  // 이동 함수
  const goGame = () => {
    navigate("/Game")
  }
  const goProfile = () =>{
    navigate("/Profile")
  }
  const goSelfStudy = () => {
    navigate("/SelfStudy")
  }
  const goAlbum = () => {
    navigate("/Album")
  }
  const goGameRule = () => {
    navigate("/GameRule")
  }

  return (
    <>
      {userInfo ? (
        <LoginGameButtons>
          <BtnArea>
            <GameBtn src={GameStartImg} alt="GameStart" onClick={goGame}>게임시작</GameBtn>
          </BtnArea>
          <BtnArea>
            <GameBtn src={ProfileBtnImg} alt="Profile" onClick={goProfile}>내정보</GameBtn>
          </BtnArea>
          <BtnArea>
            <GameBtn src={StudyBtnImg} alt="Study" onClick={goSelfStudy}>자율학습</GameBtn>
          </BtnArea>
          <BtnArea>
            {newAlbum && <NewAlbum src={NewAlbumLogo} alt="New" />}
            <GameBtn src={AlbumBtnImg} alt="Album" onClick={goAlbum}>사진첩</GameBtn>
          </BtnArea>
          <BtnArea>
            <GameBtn src={LogoutBtnImg} alt="Logout" onClick={purge}>로그아웃</GameBtn>
          </BtnArea>
        </LoginGameButtons>
      ) : (
        <GameButtons>
          <BtnArea>
            <GameBtn src={GameRuleImg} alt="GameRule" onClick={goGameRule} />
          </BtnArea>
          <BtnArea>
            <GameBtn src={GameStartImg} alt="GameStart" onClick={goGame} />
          </BtnArea>
        </GameButtons>
      )}
    </>
  );
};

export default GameButtonsArea;
