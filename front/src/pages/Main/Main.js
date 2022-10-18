import React from "react";
import "./Main.css";
import MainForm from "../../components/MainForm/MainForm";

const Main = () => {
  return (
    <div className="MainContainerWrapper">
      <div className="MainContainer">
        <div className="MainFormWrapper">
          <div className="MainLogo">
            <text className="MainTitleText">Developer Maker</text>
          </div>
          <MainForm />
        </div>
      </div>
    </div>
  );
};
export default Main;
