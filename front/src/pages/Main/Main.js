import React from "react";
import "./Main.css";
import MainForm from "../../components/MainForm/MainForm";
import Styled from "styled-components";

const Title = Styled.p`
  font-family: "Lobster";
  font-size: 590%;
  color: ghostwhite;
  text-align: center;
`;
const Main = () => {
  return (
    <div className="MainContainerWrapper">
      <div className="MainContainer">
        <div className="MainFormWrapper">
          <div className="MainLogo">
            <Title> Developer Maker </Title>
          </div>
          <MainForm />
        </div>
      </div>
    </div>
  );
};
export default Main;
