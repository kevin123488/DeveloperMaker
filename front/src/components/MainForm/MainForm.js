import React from "react";
import styled from "styled-components";

import GameButtonsArea from "../GameButtonsArea/GameButtonsArea";
import LoginButtonsArea from "../LoginButtonsArea/LoginButtonsArea";

const MainForm = () => {
  const Form = styled.div`
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

  return (
    <Form>
      <GameButtonsArea />
      <LoginButtonsArea />
    </Form>
  );
};

export default MainForm;
