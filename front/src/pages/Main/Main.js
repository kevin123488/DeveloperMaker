import React from "react";
import "./Main.css";
import MainForm from "../../components/Main/MainForm";
import { useSelector } from "react-redux";
import { SignupForm } from "../../components/Main/SignupForm";
// import Characters from "../../asset/images/Main/Characters.png";
import MainLogo from "../../asset/images/Main/developermakerLogo.png";
import styled from "styled-components";
import { useEffect } from "react";
import mainBGM from "../../asset/soundEffects/mainBGM.mp3";
import mainTheme from "../../asset/soundEffects/Running_in_the_Sky.mp3";


// const Title = Styled.p`
//   font-family: "Lobster";
//   text-shadow: 5px 5px #16345A, 8px 8px #284D8E, 11px 11px #4D8CBF, 14px 14px #5FA9D9;
//   font-size: 590%;
//   color: ghostwhite;
//   text-align: center;
// `;

const TitleDivision = styled.div`
  position: absolute;
  top: 25%;
  left: 17%;
  transform: translate(-50%, -50%);
  height: 25vh;
  width: 50vh;
  background-image: url(${MainLogo});
  background-size: 50vh 25vh;
`;

// const TitleDivision2 = styled.div`
//   position: absolute;
//   top: 80%;
//   left: 70%;
//   transform: translate(-50%, -50%);
//   height: 30vh;
//   width: 60vh;
//   background-image: url(${MainLogo});
//   background-size: 60vh 30vh;
// `;

// const CharacterImg = Styled.img`
//   height: 95%;
//   width: 80%;
//   background-size: contain;
//   background-repeat: no-repeat;
//   float: bottom;
// `;

const Main = () => {
  const userInfo = useSelector((state) => state.user.userInfo);

  useEffect(() => {
    const BGM = document.getElementById('mainBGM')
    // console.log(BGM.innerText)
    console.log(BGM.played.length)
    if (BGM.innerText !== 'mainBGM'){
      BGM.innerText = 'mainBGM'
      BGM.src = mainTheme
    }
    if (BGM.played.length === 0) {
      // BGM.muted = true;
      BGM.load()
      // BGM.muted = false;
    }
  }, [])

  return (
    <>
          {/* 흰색 물결 */}
          {/* <svg className="wave" xmlns="http://www.w3.org/2000/svg" width="1600" height="198">
            <defs>
              <linearGradient id="a" x1="50%" x2="50%" y1="-10.959%" y2="100%">
                <stop stop-color="#eeeeee" stop-opacity=".25" offset="0%"/>
                <stop stop-color="#eeeeee" offset="100%"/>
              </linearGradient>
            </defs>
            <path fill="url(#a)" fill-rule="evenodd" d="M.005 121C311 121 409.898-.25 811 0c400 0 500 121 789 121v77H0s.005-48 .005-77z" transform="matrix(-1 0 0 1 1600 0)"/>
          </svg>
          <svg className="wave" xmlns="http://www.w3.org/2000/svg" width="1600" height="198">
            <defs>
              <linearGradient id="a" x1="50%" x2="50%" y1="-10.959%" y2="100%">
                <stop stop-color="#eeeeee" stop-opacity=".25" offset="0%"/>
                <stop stop-color="#eeeeee" offset="100%"/>
              </linearGradient>
            </defs>
            <path fill="url(#a)" fill-rule="evenodd" d="M.005 121C311 121 409.898-.25 811 0c400 0 500 121 789 121v77H0s.005-48 .005-77z" transform="matrix(-1 0 0 1 1600 0)"/>
          </svg> */}
    <div style={{ position: "absolute", top: "0vh", left: "0vw", }} className="MainContainerWrapper">
      <div className="MainContainer">
      </div>
        <div className="backFlow">
          <TitleDivision></TitleDivision>

          {/* <div class="ocean">
            <div class="wave"></div>
            <div class="wave"></div>
          </div> */}



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
