import React from "react";
import styled from "styled-components";

import GameRuleImg from "../../asset/images/GameRuleBtn.png";
import GameStartImg from "../../asset/images/GameStartBtn.png";

export const GameButtonsArea = () => {
  const GameButtons = styled.div`
    margin-top: 10%;
    height: 40%;
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-between;
  `;
  const BtnArea = styled.div`
    height: 40%;
    width: 50%;
    border-radius: 50%;
  `;
  const GameBtn = styled.img`
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

  return (
    <GameButtons>
      <BtnArea>
        <GameBtn src={GameRuleImg} />
      </BtnArea>
      <BtnArea>
        <GameBtn src={GameStartImg} />
      </BtnArea>
    </GameButtons>
  );
};

export default GameButtonsArea;
