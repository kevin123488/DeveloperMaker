import React from "react";
import Styled from "styled-components";

import GameRuleImg from "../../asset/images/GameRuleBtn.png";
import GameStartImg from "../../asset/images/GameStartBtn.png";
import LogoutBtnImg from "../../asset/images/LogoutBtn.png";
import ProfileBtnImg from "../../asset/images/ProfileBtn.png";
import StudyBtnImg from "../../asset/images/StudyBtn.png";
import AlbumBtnImg from "../../asset/images/AlbumBtn.png";

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

  const startHandler = () => {
    navigate("/Game");
  };

  return (
    <>
      {userInfo ? (
        <LoginGameButtons>
          <BtnArea>
            <GameBtn src={GameStartImg} alt="GameStart" onClick={startHandler}/>
          </BtnArea>
          <BtnArea>
            <GameBtn src={ProfileBtnImg} alt="Profile" />
          </BtnArea>
          <BtnArea>
            <GameBtn src={StudyBtnImg} alt="Study" onClick={() => navigate("/SelfStudy")} />
          </BtnArea>
          <BtnArea>
            <GameBtn src={AlbumBtnImg} alt="Album" onClick={() => navigate("/Album")} />
          </BtnArea>
          <BtnArea>
            <GameBtn src={LogoutBtnImg} alt="Logout" onClick={async () => purge()}/>
          </BtnArea>
        </LoginGameButtons>
      ) : (
        <GameButtons>
          <BtnArea>
            <GameBtn src={GameRuleImg} alt="GameRule" />
          </BtnArea>
          <BtnArea>
            <GameBtn src={GameStartImg} alt="GameStart" onClick={startHandler} />
          </BtnArea>
        </GameButtons>
      )}
    </>
  );
};

export default GameButtonsArea;
