import React from "react";
import { createRoot } from "react-dom/client";
import { Provider } from "react-redux";
import { BrowserRouter, Route, Routes, useLocation } from "react-router-dom";
import { TransitionGroup, CSSTransition } from 'react-transition-group';
import Main from "./pages/Main/Main.js";
import SelfStudy from "./pages/SelfStudy/SelfStudy.js";
import Study from "./pages/SelfStudy/Study.js";
import Interview from "./pages/Interview/Interview.js";
import Album from "./pages/Album/Album.js";
import Story from "./pages/Story/Story.js";
import GameLoad from "./pages/Game/GameLoad.js";
import Profile from "./pages/Profile/Profile.js";
import "bootstrap/dist/css/bootstrap.css";
import store from "./slices/index.js";
import { PersistGate } from "redux-persist/integration/react";
import { persistStore } from "redux-persist";
import PrivateRoute from "./components/Routes/PrivateRoute.js";
import "./index.css"

// BGM
// import mainBGM from "./asset/soundEffects/mainBGM.mp3";
import mainBGM_v1 from "./asset/soundEffects/mainBGM_v1.mp3";
import mainTheme from "./asset/soundEffects/Running_in_the_Sky.mp3";
import gameLoadTheme from "./asset/soundEffects/Lovely_Wind.mp3";
import albumTheme from "./asset/soundEffects/Under_the_Sky.mp3";
import { useEffect } from "react";


export const persistor = persistStore(store);

const container = document.getElementById("root");
const root = createRoot(container);

root.render(
  <Provider store={store}>
    <PersistGate loading={null} persistor={persistor}>
      <BrowserRouter>

        <App></App>

      </BrowserRouter>
    </PersistGate>
  </Provider>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
function App() {
  const location = useLocation();

  useEffect(() => {
    const mainBGM = document.getElementById('mainBGM')
    mainBGM.volume = 0.4;
    mainBGM.muted = true;

    // let images = [];

    // function preload() {
    //   for(let i = 0; i < preload.arguments.lenght; i++) {
    //     images[i] = new Image();
    //     images[i].src = preload.arguments.src;
    //   }
    // }

    // preload(
    //   "./asset/images/Main/mainSpringBackground.png",
    //   "./asset/images/Main/mainSummerBackground.png",
    //   "./asset/images/Main/mainFallBackground.png",
    //   "./asset/images/Main/muted.png",
    //   "./asset/images/Main/playing.png",
    //   "./asset/images/Main/developermakerLogo.png",
    // )

  }, [])

  // 음소거 함수 
  const changeVolumeBox = () => {
    const mainBGM = document.getElementById('mainBGM')
    mainBGM.muted = !mainBGM.muted
    const changeBox = document.getElementById('changeVolumeBox')
    if (mainBGM.muted) {
      changeBox.className = "muted"
    } else {
      mainBGM.play()
      changeBox.className = "playing"
    }
  }

  const playSelfstudyBGM = () => {
    // console.log('들어오나')
    const mainBGM = document.getElementById('mainBGM')
    mainBGM.src = mainBGM_v1
  }

  const playGameLoadBGM = () => {
    const mainBGM = document.getElementById('mainBGM')
    mainBGM.src = gameLoadTheme
  }

  const playAlbumBGM = () => {
    const mainBGM = document.getElementById('mainBGM')
    mainBGM.src = albumTheme
  }

  return (
    <div>
      <audio 
      src={mainTheme} loop={true} autoPlay={true} id="mainBGM" 
      style={{
        position: "absolute",
        zIndex: '2000',
      }}>mainBGM</audio>
      
      {/* 음소거 버튼 */}
      <div onClick={changeVolumeBox}
      id="changeVolumeBox"
      className="muted"
      ></div>

      <TransitionGroup>
        <CSSTransition key={location.key} classNames="pageSlider" timeout={500}>
          <Routes style={{ backgroundColor: "black", position: "relative" }} location={location}>
            <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/" element={<Main />} />
            <Route onChange={playGameLoadBGM} style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Game" element={<PrivateRoute><GameLoad /></PrivateRoute>} />
            <Route onChange={playSelfstudyBGM} style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/SelfStudy" element={<PrivateRoute><SelfStudy /></PrivateRoute>}/>
            <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/SelfStudy/study" element={<Study />} />
            <Route onChange={playAlbumBGM} style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Album" element={<Album />} />
            <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Story" element={<Story />} />
            <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Interview" element={<Interview />}/>
            <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Album"element={<PrivateRoute><Album /></PrivateRoute>} />
            <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Profile" element={<Profile />} />
          </Routes>
        </CSSTransition>
      </TransitionGroup>
    </div>
  );
}