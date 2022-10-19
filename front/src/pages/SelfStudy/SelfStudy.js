// 캐릭터별로 있고 마우스 올리면 표정, 자세 바뀌면서 어떤분야 자울학습하는건지 가르쳐주는 거 괜찮을듯

import React from "react";
import "./SelfStudy.css";
import styled from "styled-components";
import background from './SelfStudyBackground.gif';
import btn from './버튼.png';
import { Link } from 'react-router-dom';


const SelfStudyBlock = styled.div`
  position: fixed;
  display: ;
  height: 100vh;
  width: 100vw;
  /* background-color: #352208; */
  background: url(${background}) center no-repeat;
  background-size: 100vw 100vh;
`;

const TypeLink = styled(Link)`
font-family: "Lobster";
color: black;
margin: 0 auto;
display : flex;
justify-content : center;
align-items : center;
font-size: 3vw;
vertical-align: center;
margin: 3vw;
height: 10vw;
width: 25vw;
background: url(${btn}) center no-repeat;
background-size: 100% 100%; 
`;

const SelfStudy = () => {
  return (
    <SelfStudyBlock>
      <TypeLink to="/selfstudy/cs" style={{ textDecoration: 'none' }}>
        CS
      </TypeLink>
      <TypeLink to="/selfstudy/algo" style={{ textDecoration: 'none' }}>
        알고리즘
      </TypeLink>
      <TypeLink to="/selfstudy/lang-frame" style={{ textDecoration: 'none' }}>
        언어/프레임워크
      </TypeLink>
    </SelfStudyBlock>
  );
};
  
export default SelfStudy;