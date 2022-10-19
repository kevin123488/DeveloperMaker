import React from "react";
import Styled from "styled-components";

import KaKaoImg from "../../asset/images/KakaoLogoImg.png";
import NaverImg from "../../asset/images/NaverLogoImg.png";

import { useDispatch } from "react-redux";
import { useNavigate } from "react-router-dom";
import { userLoginKakao, getUser } from "../../slices/userSlice";

const SocialLoginButtons = Styled.div`
  margin-top: 10%;
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
    });
  };

  return (
    <SocialLoginButtons>
      <LoginButton src={KaKaoImg} alt="kakaoLoginImg" onClick={getKakaoToken} />
      <LoginButton src={NaverImg} alt="naverLoginImg" />
    </SocialLoginButtons>
  );
};

export default LoginButtonsArea;
