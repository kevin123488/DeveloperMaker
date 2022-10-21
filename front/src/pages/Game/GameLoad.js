import React from "react";
import "../Main/Main.css";
import MainForm from "../../components/MainForm/MainForm";
import Styled from "styled-components";
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { SignupForm } from "../../components/SignupForm/SignupForm";
import Characters from "../../asset/images/Characters.png";
import styled from "styled-components";

const GameLoadHeader = styled.div`
  width: 100%;
  height: 15%;
  position: fixed;
  display: inline-flex;
  align-items: center;
  padding-left: 5%;
  padding-right: 5%;
  white-space: nowrap;
  overflow: hidden;
`;

const HeaderBtnContents = styled.div`
  width: 30%;
  display: flex;
  align-items: center;
`;

const HeaderTitleContents = styled.div`
  width: fit-content;
  display: inline-block;
  align-items: center;
`;

const BackBtn = styled.button`
  display: flex;
  align-self: center;
`;

const Title = Styled.p`
  font-family: "Lobster";
  text-shadow: 5px 5px #16345A, 8px 8px #284D8E, 11px 11px #4D8CBF, 14px 14px #5FA9D9;
  font-size: 450%;
  color: ghostwhite;
  text-align: center;
`;

const GameLoadBody = styled.div`
  margin-top: 8%;
  width: 100%;
  height: 85%;
  overflow: hidden;
  display: flex;
  align-content: center;
  justify-content: center;
`;

const GameLoadContainer = styled.div`
  background-color: rgba(255, 255, 255, 0.6);
  width: 100%;
  height: 85%;
  border-radius: 5em;
  padding: 3em;
  margin: 5%;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
`;

const GameFileLoadList = styled.div`
  //margin-top: 3em;
  background-color: rgba(140, 200, 255);
  border-style: solid;
  border-color: rgba(0, 0, 0, 0.8);
  border-width: 0.05em;
  border-radius: 1em;
`;

const SaveTitleContainer = styled.div`
  margin-left: 5%;
`;

const SaveTitle = styled.p`
  font-size: x-large;
`;

const LoadFileInfo = styled.div`
  display: flex;
  flex-direction: row;
`;

const LoadFileChapter = styled.div`
  width: 30%;
`;

const LoadFileChapterP = styled.p`
  text-align: center;
  font-family: "Pacifico";
  font-size: xx-large;
`;
const LoadFileChapterName = styled.div`
  display: inline-block;
  width: 70%;
`;
const LoadFileChapterNameP = styled.p`
  font-size: xx-large;
`;

const GameLoad = () => {
  const navigate = useNavigate();

  const backBtnhandler = () => {
    navigate("/");
  };
  return (
    <div className="MainContainerWrapper">
      <div className="MainContainer">
        <GameLoadHeader>
          <HeaderBtnContents>
            <BackBtn onClick={backBtnhandler}>뒤로가기</BackBtn>
          </HeaderBtnContents>
          <HeaderTitleContents>
            <Title> Developer Maker </Title>
          </HeaderTitleContents>
          <HeaderBtnContents />
        </GameLoadHeader>

        <GameLoadBody>
          <GameLoadContainer>
            <GameFileLoadList>
              <SaveTitleContainer>
                <SaveTitle>저장 데이터1</SaveTitle>
              </SaveTitleContainer>
              <LoadFileInfo>
                <LoadFileChapter>
                  <LoadFileChapterP>chaper</LoadFileChapterP>
                </LoadFileChapter>
                <LoadFileChapterName>
                  <LoadFileChapterNameP>chaperName</LoadFileChapterNameP>
                </LoadFileChapterName>
              </LoadFileInfo>
            </GameFileLoadList>

            <GameFileLoadList>
              <SaveTitleContainer>
                <SaveTitle>저장 데이터2</SaveTitle>
              </SaveTitleContainer>
              <LoadFileInfo>
                <LoadFileChapter>
                  <LoadFileChapterP>chaper</LoadFileChapterP>
                </LoadFileChapter>
                <LoadFileChapterName>
                  <LoadFileChapterNameP>chaperName</LoadFileChapterNameP>
                </LoadFileChapterName>
              </LoadFileInfo>
            </GameFileLoadList>

            <GameFileLoadList>
              <SaveTitleContainer>
                <SaveTitle>저장 데이터3</SaveTitle>
              </SaveTitleContainer>
              <LoadFileInfo>
                <LoadFileChapter>
                  <LoadFileChapterP>chaper</LoadFileChapterP>
                </LoadFileChapter>
                <LoadFileChapterName>
                  <LoadFileChapterNameP>chaperName</LoadFileChapterNameP>
                </LoadFileChapterName>
              </LoadFileInfo>
            </GameFileLoadList>
          </GameLoadContainer>
        </GameLoadBody>
      </div>
    </div>
  );
};
export default GameLoad;
