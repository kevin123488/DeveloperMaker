import React from "react";
import "./Main.css";
import MainForm from "../../components/MainForm/MainForm";
import Styled from "styled-components";
import { useSelector } from "react-redux";
import { SignupForm } from "../../components/SignupForm/SignupForm";
import Characters from "../../asset/images/Characters.png";


const Title = Styled.p`
  font-family: "Lobster";
  text-shadow: 5px 5px #16345A, 8px 8px #284D8E, 11px 11px #4D8CBF, 14px 14px #5FA9D9;
  font-size: 590%;
  color: ghostwhite;
  text-align: center;
`;

const CharacterImg = Styled.img`
  height: 95%;
  width: 80%;
  background-size: contain;
  background-repeat: no-repeat;
  float: bottom;
`;

const Main = () => {
  const userInfo = useSelector((state) => state.user.userInfo);
  return (
    <div className="MainContainerWrapper">
      <div className="MainContainer">
        <div className="MainFormWrapper">
          <div className="MainLayoutWrapper">
            <div className="MainLogo">
              <Title> Developer Maker </Title>
            </div>
            {userInfo !== null && userInfo.language === "NONE" ? (
              <SignupForm />
            ) : (
              <MainForm userInfo={userInfo} />
            )}
          </div>
        </div>
        <div className="MainCharacterWrapper">
          <CharacterImg src={Characters}></CharacterImg>
        </div>
      </div>
    </div>
  );
};
export default Main;
