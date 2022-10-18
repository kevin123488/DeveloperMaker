import React from "react";
import styled from "styled-components";

import KaKaoImg from "../../asset/images/KakaoLogoImg.png";
import NaverImg from "../../asset/images/NaverLogoImg.png";

export const LoginButtonsArea = () => {
  const SocialLoginButtons = styled.div`
    margin-top: 10%;
    width: 100%;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-evenly;
  `;
  const LoginButton = styled.img`
    width: 3em;
    height: 3em;
    background-image: url("../../asset/images/KakaoLogoImg.png");
    background-size: contain;
    background-repeat: no-repeat;
    cursor: pointer;
  `;
  return (
    <SocialLoginButtons>
      <LoginButton src={KaKaoImg} />
      <LoginButton src={NaverImg} />
    </SocialLoginButtons>
  );
};

export default LoginButtonsArea;
