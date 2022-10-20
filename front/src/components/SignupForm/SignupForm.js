import React, { useState, useEffect } from "react";
import styled from "styled-components";
import { useNavigate } from "react-router-dom";
import { signUpUser } from "../../slices/userSlice";
import { useDispatch } from "react-redux/es/exports";
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
  const [period, setPeriod] = useState("JAVA");
  const [nickname, setNickName] = useState("");
  const [userInfo, setUserInfo] = useState("");

  const dispatch = useDispatch();

  useEffect(() => {}, [userInfo]);

  const navigate = useNavigate();
  const onPeriodChange = (e) => {
    const { value } = e.target;
    setPeriod(value);
    console.log(period);
  };

  const onNicknameChange = (e) => {
    const input = e.target.value;
    setNickName(input);
  };

  const periodOptions = [
    { value: "JAVA", print: "Java" },
    { value: "PYTHON", print: "Python" },
    { value: "C", print: "C++" },
    { value: "JS", print: "JavaScript" },
  ];

  const submitHandler = () => {
    const data = {
      nickname: nickname,
      language: period,
    };

    const res = dispatch(signUpUser(data));
    console.log(res);
  };

  return (
    <Form>
      <ContentArea>
        <p>닉네임</p>
        <input onChange={onNicknameChange} maxLength="10"></input>
      </ContentArea>
      <ContentArea>
        <p>언어 선택</p>
        <select value={period} onChange={onPeriodChange}>
          {periodOptions.map((period, index) => (
            <option key={index} value={period.value}>
              {period.print}
            </option>
          ))}
        </select>
        <ContentArea>
          <button onClick={submitHandler}>확인</button>
        </ContentArea>
      </ContentArea>
    </Form>
  );
};
