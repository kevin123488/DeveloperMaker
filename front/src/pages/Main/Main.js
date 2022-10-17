import React from "react";
import "./Main.css";

const Main = () => {
  return (
    <div className="MainContainerWrapper">
      <div className="MainContainer">
        <div className="MainFormWrapper">
          <div className="MainLogo">
            <text className="MainTitleText">Developer Maker</text>
          </div>
          <div className="MainButtonForm">
            <div className="MainGameButtons">
              <button className="GameRuleBtn" />
              <button className="GameStartBtn" />
            </div>
            <div className="MainLoginButtons">
              <div className="KakaoLoginButton" />
              <div className="NaverLoginButton" />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};
export default Main;
