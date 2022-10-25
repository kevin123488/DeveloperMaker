import React, {useEffect} from "react";
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
    });
  };

  // 네이버 로그인
  const { naver } = window;
  // 네이버 로그인 기본 설정
  const initializeNaverLogin = () => {
    const naverLogin = new naver.LoginWithNaverId({
      clientId: "%REACT_APP_NAVER_LOGIN_API_ID%",
      callbackUrl: "%REACT_APP_NAVER_LOGIN_API_CALLBACK_URL%", 
      isPopup: false, // popup 형식으로 띄울것인지 설정
      loginButton: { color: 'white', type: 1, height: '47' },
      //버튼의 스타일, 타입, 크기를 지정
    });
    naverLogin.init();
  };
  // 네이버 로그인 시작하기 설정
  useEffect(() => {
    initializeNaverLogin();
  }, []);

  return (
    <SocialLoginButtons>
      <LoginButton src={KaKaoImg} alt="kakaoLoginImg" onClick={getKakaoToken} />
      <LoginButton src={NaverImg} alt="naverLoginImg" />
      <div id='naverIdLogin' />
    </SocialLoginButtons>
  );
};

export default LoginButtonsArea;
