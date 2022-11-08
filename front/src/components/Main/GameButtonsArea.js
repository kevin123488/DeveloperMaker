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
const GameBtn = Styled.img`
  height: 100%;
  width: 100%;
  cursor: pointer;
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
  overflow: hidden;
  border: 0ch;
  color: white;
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
            <GameBtn src={GameStartImg} alt="GameStart" onClick={goGame}/>
          </BtnArea>
          <BtnArea>
            <GameBtn src={ProfileBtnImg} alt="Profile" onClick={goProfile} />
          </BtnArea>
          <BtnArea>
            <GameBtn src={StudyBtnImg} alt="Study" onClick={goSelfStudy} />
          </BtnArea>
          <BtnArea>
            {newAlbum ? <NewAlbum src={NewAlbumLogo} alt="New" /> : null}
            <GameBtn src={AlbumBtnImg} alt="Album" onClick={goAlbum} />
          </BtnArea>
          <BtnArea>
            <GameBtn src={LogoutBtnImg} alt="Logout" onClick={purge}/>
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
