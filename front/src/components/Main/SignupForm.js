import React, { useState } from "react";
import styled from "styled-components";
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
  width: 80%;
  height: 20%;
  margin-top: 5%;
  display: flex;
  flex-direction: column;
`;

const BtnArea = styled.div`
  width: 80%;
  height: 20%;
  display: flex;
  flex-direction: column;
  align-items: center;
`;

const TitleObject = styled.p`
  font-family: "Lobster";
  text-align: center;
  display: flex;
  justify-content: flex-start;
`;
const Input = styled.input`
  width: 100%;
`;
const Select = styled.select`
  width: 100%;
`;
const Button = styled.button`
  margin-top: 15%;
  width: 50%;
`;

export const SignupForm = () => {
  const dispatch = useDispatch();
  // 변수 설정
  const [period, setPeriod] = useState("JAVA");
  const [nickname, setNickName] = useState("");
  const [errorMSG, setErrorMSG] = useState("")

  // 언어 변경
  const onPeriodChange = (e) => {
    const { value } = e.target;
    setPeriod(value);
  };

  // 닉네임 변경
  const onNicknameChange = (e) => {
    const input = e.target.value.trim();
    setNickName(input);
  };

  // 언어 변수
  const periodOptions = [
    { value: "JAVA", print: "Java" },
    { value: "PYTHON", print: "Python" },
    { value: "C", print: "C++" },
    { value: "JS", print: "JavaScript" },
  ];

  // 제출
  const submitHandler = () => {
    // 무입력 방지
    if (nickname.length > 0)
    {
      const data = {
        nickname: nickname,
        language: period,
      };
      setErrorMSG("")
      dispatch(signUpUser(data));
    }
    // 에러 MSG 입력
    else {
      setErrorMSG("닉네임은 1자 이상 10자 이하로 입력해 주세요")
    }
  };

  return (
    <Form>
      <ContentArea>
        <TitleObject>닉네임</TitleObject>
        <Input onChange={onNicknameChange} maxLength="10"></Input>
      </ContentArea>
      <ContentArea>
        <TitleObject>언어 선택</TitleObject>
        <Select value={period} onChange={onPeriodChange}>
          {periodOptions.map((period, index) => (
            <option key={index} value={period.value}>
              {period.print}
            </option>
          ))}
        </Select>
      </ContentArea>
      <BtnArea>
        <Button onClick={submitHandler}>확인</Button>
      </BtnArea>
      <p>{errorMSG}</p>
    </Form>
  );
};
