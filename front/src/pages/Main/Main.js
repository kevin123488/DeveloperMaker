import React, {useState} from "react";
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
  const [isLoaded, setIsLoaded] = useState(false)

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

    // 이미지 미리 로드
    // let images = [];

    // const preload = (imageList) => {
    //   // console.log(imageList.length)
    //   for(let i = 0; i < imageList.length; i++) {
    //     images[i] = new Image();
    //     images[i].src = imageList[i];
    //     console.log('프리로드', i)
        
    //   }
    //   setIsLoaded(true)
    // }

    // preload([
    //   "../../asset/images/Main/mainSpringBackground.png",
    //   "../../asset/images/Main/mainSummerBackground.png",
    //   "../../asset/images/Main/mainFallBackground.png",
    //   "../../asset/images/Main/mainWinterBackground.png",
    //   "../../asset/images/Main/muted.png",
    //   "../../asset/images/Main/playing.png",
    //   "../../asset/images/Main/developermakerLogo.png",
    // ])
    // console.log('프리로드 끝남')
    
  }, [])

  return (
    <>
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
              <img src={require("../../asset/images/Main/mainWinterBackground.png")} style={{display: 'none', width: '10vw', height: '10vh',}} alt=""
              onLoad={() => {
                console.log('로드끝');
                const loadingP = document.querySelector('.loadingPage')
                // console.log("로딩페이지",loadingP)
                // loadingP.st = 'loadingPageEnd'
                loadingP.className = 'loadingPageEnd'
                setTimeout(() => {
                  setIsLoaded(true);
                }, 500) 
                }} />
              <div className="MainLogo">
              </div>
              {userInfo !== null && userInfo.language === "NONE" ? (
                <SignupForm />
              ) : (
                <MainForm/>
              )}    
              {
                !isLoaded?
                <div className="loadingPage">
                  {/* <p>로딩중...</p> */}
                </div>
                : null
              }
            </div>
          </div>
        </div>
    </div>
    </>
  );
};
export default Main;
