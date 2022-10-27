import React from "react";
import Styled from "styled-components";

import GameRuleImg from "../../asset/images/Main/GameRuleBtn.png";
import GameStartImg from "../../asset/images/Main/GameStartBtn.png";
import LogoutBtnImg from "../../asset/images/Main/LogoutBtn.png";
import ProfileBtnImg from "../../asset/images/Main/ProfileBtn.png";
import StudyBtnImg from "../../asset/images/Main/StudyBtn.png";
import AlbumBtnImg from "../../asset/images/Main/AlbumBtn.png";

import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { persistor } from "../../index";

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

const GameButtonsArea = () => {
  const userInfo = useSelector((state) => state.user.userInfo);

  const navigate = useNavigate();

  const purge = async () => {
    window.location.reload();
    await persistor.purge();
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
            <GameBtn src={AlbumBtnImg} alt="Album" onClick={goAlbum} />
          </BtnArea>
          <BtnArea>
            <GameBtn src={LogoutBtnImg} alt="Logout" onClick={async () => purge()}/>
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
