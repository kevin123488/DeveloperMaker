import React from "react";
import "./Main.css";
import MainForm from "../../components/MainForm/MainForm";
import Styled from "styled-components";
import { useSelector } from "react-redux";
import { SignupForm } from "../../components/SignupForm/SignupForm";

const Title = Styled.p`
  font-family: "Lobster";
  font-size: 590%;
  color: ghostwhite;
  text-align: center;
`;
const Main = () => {
  const userInfo = useSelector((state) => state.user.userInfo);

  return (
    <div className="MainContainerWrapper">
      <div className="MainContainer">
        <div className="MainFormWrapper">
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
    </div>
  );
};
export default Main;
