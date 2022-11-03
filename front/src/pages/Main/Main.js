import React, { useState } from "react";
import "./Main.css";
import MainForm from "../../components/Main/MainForm";
import Styled from "styled-components";
import { useSelector } from "react-redux";
import { SignupForm } from "../../components/Main/SignupForm";
import Characters from "../../asset/images/Main/Characters.png";
// import { getNewAlbum} from "../../slices/albumSlice"
// import { useEffect } from "react";
import MainLogo from "../../asset/images/Main/developermakerLogo.png";
import styled from "styled-components";


const Title = Styled.p`
  font-family: "Lobster";
  text-shadow: 5px 5px #16345A, 8px 8px #284D8E, 11px 11px #4D8CBF, 14px 14px #5FA9D9;
  font-size: 590%;
  color: ghostwhite;
  text-align: center;
`;

const TitleDivision = styled.div`
  position: absolute;
  top: 25%;
  left: 20%;
  transform: translate(-50%, -50%);
  height: 30vh;
  width: 60vh;
  background-image: url(${MainLogo});
  background-size: 60vh 30vh;
`;

const TitleDivision2 = styled.div`
  position: absolute;
  top: 80%;
  left: 70%;
  transform: translate(-50%, -50%);
  height: 30vh;
  width: 60vh;
  background-image: url(${MainLogo});
  background-size: 60vh 30vh;
`;

const CharacterImg = Styled.img`
  height: 95%;
  width: 80%;
  background-size: contain;
  background-repeat: no-repeat;
  float: bottom;
`;

const Main = () => {
  const userInfo = useSelector((state) => state.user.userInfo);

  // 새앨범 여부 확인
  // const dispatch = useDispatch()
  // useEffect(()=> {
  //   dispatch(getNewAlbum())
  // }, [])

  return (
    <>
    <TitleDivision></TitleDivision>
    <div className="MainContainerWrapper">
      <div className="MainContainer">
        <div className="MainFormWrapper">
          <div className="MainLayoutWrapper">
            <div className="MainLogo">
              {/* <Title> Developer Maker </Title> */}
            </div>
            {userInfo !== null && userInfo.language === "NONE" ? (
              <SignupForm />
            ) : (
              <MainForm userInfo={userInfo} />
            )}
          </div>
        </div>
      </div>
    </div>
    </>
  );
};
export default Main;
