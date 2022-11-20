import React, {useState} from "react";
import { useEffect } from "react";
import styled, { keyframes } from "styled-components";
import "./GameRole.css";
import GameRole1 from "../../../asset/images/GameRole/1.png"
import GameRole2 from "../../../asset/images/GameRole/2.png"
import GameRole3 from "../../../asset/images/GameRole/3.png"
import GameRole4 from "../../../asset/images/GameRole/4.png"
import GameRole5 from "../../../asset/images/GameRole/5.png"
import GameRole6 from "../../../asset/images/GameRole/6.png"
import GameRole7 from "../../../asset/images/GameRole/7.png"
import GameRole8 from "../../../asset/images/GameRole/8.png"
import GameRole9 from "../../../asset/images/GameRole/9.png"
import charInfo1 from "../../../pages/Game/charInfo1.png";
import charInfo2 from "../../../pages/Game/charInfo2.png";
import charInfo3 from "../../../pages/Game/charInfo3.png";
import charInfo4 from "../../../pages/Game/charInfo4.png";

const GameRoleModalEffect = keyframes`
  from {
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(0.5);
  }
  to {
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(1);
  }
`;

const GameRoleModal = styled.div`
  z-index: 6;
  position: absolute;
  cursor: pointer;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  height: 80vh;
  width: 80vw;
  // padding-left: 5vw
  background: white;
  overflow: auto;
  border-radius: 10px;
  border: 5px solid #e9559054;
  transition: 0.2s;
  animation: ${GameRoleModalEffect} 0.25s;
  &::-webkit-scrollbar {
    width: 0.5vw;
    height: 0;
    background-color: white;
  }
  &::-webkit-scrollbar-thumb {
    background-color: #e95590;
    border-radius: 20px;
  }
`;

const GameRoleDiv1 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${GameRole1});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const GameRoleDiv2 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${GameRole2});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const GameRoleDiv3 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${GameRole3});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const GameRoleDiv4 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${GameRole4});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const GameRoleDiv5 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${GameRole5});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const GameRoleDiv6 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${GameRole6});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const GameRoleDiv7 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${GameRole7});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const GameRoleDiv8 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${GameRole8});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const GameRoleDiv9 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${GameRole9});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const CharInfo1 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${charInfo1});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const CharInfo2 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${charInfo2});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const CharInfo3 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${charInfo3});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;
const CharInfo4 = styled.div`
  margin-left: 5vw;
  height: 70vh;
  width: 70vw;
  background-image: url(${charInfo4});
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
`;

const GameRole = () => {

  useEffect(() => {
    
  }, [])

  return (
    <>
      <GameRoleModal>
          <GameRoleDiv1></GameRoleDiv1>
          <br />
          <GameRoleDiv2></GameRoleDiv2>
          <br />
          <GameRoleDiv3></GameRoleDiv3>
          <br />
          <GameRoleDiv4></GameRoleDiv4>
          <br />
          <GameRoleDiv5></GameRoleDiv5>
          <br />
          <GameRoleDiv6></GameRoleDiv6>
          <br />
          <GameRoleDiv7></GameRoleDiv7>
          <br />
          <GameRoleDiv8></GameRoleDiv8>
          <br />
          <GameRoleDiv9></GameRoleDiv9>
          <br />
          <CharInfo1></CharInfo1>
          <br />
          <CharInfo2></CharInfo2>
          <br />
          <CharInfo3></CharInfo3>
          <br />
          <CharInfo4></CharInfo4>
      </GameRoleModal>
    </>
  );
};
export default GameRole;
