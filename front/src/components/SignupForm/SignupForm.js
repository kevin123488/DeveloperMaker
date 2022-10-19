import React, { useState } from "react";
import styled from "styled-components";
import { signUp } from "../../common/user";

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

const ContentArea = styled.div`
  margin-top: 5%;
`;

const Input = styled.input``;

const SubmitBtn = styled.button``;

export const SignupForm = () => {
  const [period, setPeriod] = useState("NONE");
  const [nickname, setNickName] = useState("");

  const onPeriodChange = (e) => {
    const { value } = e.target;
    setPeriod(value);
  };

  const onNicknameChange = (e) => {
    const input = e.target.value;
    setNickName(input);
  };

  const periodOptions = [
    { value: "Java" },
    { value: "Python" },
    { value: "C++" },
    { value: "JavaScript" },
  ];

  const submitHandler = () => {
    const data = {
      nickname: nickname,
      language: period,
    };
    signUp(data);
  };

  return (
    <Form>
      <ContentArea>
        <p>닉네임</p>
        <input onChange={onNicknameChange}></input>
      </ContentArea>
      <ContentArea>
        <p>언어 선택</p>
        <select value={period} onChange={onPeriodChange}>
          {periodOptions.map((period) => (
            <option value={period.value}>{period.value}</option>
          ))}
        </select>
        <ContentArea>
          <button onSubmit={submitHandler}>확인</button>
        </ContentArea>
      </ContentArea>
    </Form>
  );
};
