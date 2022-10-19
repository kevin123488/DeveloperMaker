import React from "react";
import Styled from "styled-components";

import GameButtonsArea from "../GameButtonsArea/GameButtonsArea";
import LoginButtonsArea from "../LoginButtonsArea/LoginButtonsArea";

const Form = Styled.div`
  height: 50%;
  width: 100%;
  border: solid 1px;
  border-color: rgba(0, 0, 0, 0.1);
  border-radius: 10%;
  align-items: center;
  justify-content: flex-start;
  display: flex;
  flex-direction: column;
  margin-top: 5%;
  margin-bottom: 5%;
`;

const MainForm = ({ userInfo }) => {
  return (
    <Form>
      <GameButtonsArea />
      {!userInfo ? <LoginButtonsArea /> : <div></div>}
    </Form>
  );
};

export default MainForm;
