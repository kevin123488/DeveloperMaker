import React, { useEffect } from "react";
import "../Main/Main.css";
import Styled from "styled-components";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import styled from "styled-components";
import { userGetMemory } from "../../slices/storySlice";

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
  const story = useSelector((state) => state.story);
  const storySlots = story.userStoryData;
  console.log(storySlots)
  // story라는 이름의 reducer에 있는 state의 userStoryData를 story라는 변수에 넣어두자는 뜻

  const dispatch = useDispatch();
  // dispatch를 쓰기 위해 dispatch를 선언해주어야 함
  const backBtnhandler = () => {
    navigate("/");
  };

  // 스토리 시작하는 함수
  const startStory1 = () => {
    navigate("/Story");
    dispatch({type: "story/choiceSlot", slotNum: 1});
    console.log("왜 스토리로 넘어가짐?")
  };
  const startStory2 = () => {
    navigate("/Story");
    dispatch({type: "story/choiceSlot", slotNum: 2});
    console.log("왜 스토리로 넘어가짐?")
  };
  const startStory3 = () => {
    navigate("/Story");
    dispatch({type: "story/choiceSlot", slotNum: 3});
    console.log("왜 스토리로 넘어가짐?")
  };

  useEffect(() => {
    // dispatch(userGetMemory());
    // console.log(storySlots);
    const dispatchUserMemory = async () => {
      await dispatch(userGetMemory());
    };
    dispatchUserMemory();
  }, [dispatch]);

  return (
    <div className="MainContainerWrapper">
      <div className="MainContainer">
        {/* {storySlots.map((story, idx) => (
          <div key={idx}>{story.script}</div>
        ))} */}
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
            <GameFileLoadList onClick={startStory1}>
              <SaveTitleContainer>
                <SaveTitle>저장 데이터1</SaveTitle>
              </SaveTitleContainer>
              <LoadFileInfo>
                <LoadFileChapter>
                  <LoadFileChapterP>chaper</LoadFileChapterP>
                </LoadFileChapter>
                <LoadFileChapterName>
                  <LoadFileChapterNameP>chapter {storySlots[0].chapter}</LoadFileChapterNameP>
                </LoadFileChapterName>
              </LoadFileInfo>
            </GameFileLoadList>

            <GameFileLoadList onClick={startStory2}>
              <SaveTitleContainer>
                <SaveTitle>저장 데이터2</SaveTitle>
              </SaveTitleContainer>
              <LoadFileInfo>
                <LoadFileChapter>
                  <LoadFileChapterP>chaper</LoadFileChapterP>
                </LoadFileChapter>
                <LoadFileChapterName>
                  <LoadFileChapterNameP>chapter {storySlots[1].chapter}</LoadFileChapterNameP>
                </LoadFileChapterName>
              </LoadFileInfo>
            </GameFileLoadList>

            <GameFileLoadList onClick={startStory3}>
              <SaveTitleContainer>
                <SaveTitle>저장 데이터3</SaveTitle>
              </SaveTitleContainer>
              <LoadFileInfo>
                <LoadFileChapter>
                  <LoadFileChapterP>chaper</LoadFileChapterP>
                </LoadFileChapter>
                <LoadFileChapterName>
                  <LoadFileChapterNameP>chapter {storySlots[2].chapter}</LoadFileChapterNameP>
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
