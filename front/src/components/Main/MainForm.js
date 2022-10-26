import React from "react";
import Styled from "styled-components";

import GameButtonsArea from "./GameButtonsArea";
import LoginButtonsArea from "./LoginButtonsArea";

const Form = Styled.div`
  height: 50%;
  width: 100%;
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
