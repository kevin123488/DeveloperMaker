import React from "react";
import Styled from "styled-components";

import GameRuleImg from "../../asset/images/GameRuleBtn.png";
import GameStartImg from "../../asset/images/GameStartBtn.png";
import LogoutBtnImg from "../../asset/images/LogoutBtn.png";

import { useSelector } from "react-redux";

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

  const purge = async () => {
    window.location.reload();
    await persistor.purge();
  };

  return (
    <GameButtons>
      <BtnArea>
        <GameBtn src={GameRuleImg} alt="GameRule" />
      </BtnArea>
      <BtnArea>
        <GameBtn src={GameStartImg} alt="GameStart" />
      </BtnArea>
      {userInfo ? (
        <BtnArea>
          <GameBtn
            src={LogoutBtnImg}
            alt="naverLoginImg"
            onClick={async () => purge()}
          />
        </BtnArea>
      ) : (
        <div></div>
      )}
    </GameButtons>
  );
};

export default GameButtonsArea;
