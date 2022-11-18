import React from "react";
import Styled from "styled-components";

import KaKaoImg from "../../asset/images/Main/KakaoLogoImg.png";

import { useDispatch } from "react-redux";
import { useNavigate } from "react-router-dom";
import { userLoginKakao, getUser } from "../../slices/userSlice";
import NaverLogin from "./NaverLogin";

const SocialLoginButtons = Styled.div`
  margin-top: 5%;
  width: 50%;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-evenly;
`;

const LoginButton = Styled.img`
  width: 3em;
  height: 3em;
  background-size: contain;
  background-repeat: no-repeat;
  cursor: pointer;
`;

const LoginButtonsArea = () => {
  // 카카오 로그인
  const { Kakao } = window;
  const dispatch = useDispatch();
  const navigate = useNavigate();

  const getKakaoToken = () => {
    Kakao.Auth.login({
      success: async (authObj) => {
        await dispatch(userLoginKakao(authObj.access_token));
        await dispatch(getUser());
        await navigate("/");
      },
      // 실패시 새로고침
      fail: () => {
        window.location.reload(false)
      }
    });
  };

  return (
    <SocialLoginButtons>
      <LoginButton src={KaKaoImg} alt="kakaoLoginImg" onClick={getKakaoToken} />
      <NaverLogin />
    </SocialLoginButtons>
  );
};

export default LoginButtonsArea;
