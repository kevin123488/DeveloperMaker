  import React, { useEffect } from 'react';
  import { useRef } from 'react';
  import { useDispatch } from 'react-redux';
  import { useLocation, useNavigate } from 'react-router-dom';
  import NaverImg from "../../asset/images/Main/NaverLogoImg.png";
  import {userLoginNaver, getUser} from "../../slices/userSlice"

  const NaverLogin = () => {
    const { naver } = window;
    const naverRef = useRef();
    const location = useLocation();
    const dispatch = useDispatch()
    const navigate = useNavigate();

    const initializeNaverLogin = () => {
      // 네이버 로그인 띄우기
      const naverLogin = new naver.LoginWithNaverId({
        // 로컬용
        clientId: "FlXgJpptQwh3MWRLNBRZ",
        // callbackUrl: "http://localhost:3000",
        // 배포URL
        callbackUrl: "http://k7e103.p.ssafy.io",
        isPopup: false,
        loginButton: { color: 'green', type: 3, height: 58 },
        callbackHandle: true,
      });
      naverLogin.init();
    };

    // 로그인 후 리다이렉트 된 Naver 로그인 API의 토큰 잡기
    const getNaverToken = async () => {
      if (!location.hash) return;
      const token = location.hash.split('=')[1].split('&')[0];
      await dispatch(userLoginNaver(token));
      await dispatch(getUser());
      await navigate('/')
    };

    useEffect(() => {
        initializeNaverLogin();
        getNaverToken()
    }, []);

    const handleClick = () => {
      naverRef.current.children[0].click();
    };

    return (
      <div style={{cursor: "pointer"}}>
        <div ref={naverRef} id="naverIdLogin" style={{display: "none"}}  />
        <img src={NaverImg} alt="naver" onClick={handleClick} style={{borderRadius: "0.25em"}} />
      </div>
    );
  };

  export default NaverLogin;
