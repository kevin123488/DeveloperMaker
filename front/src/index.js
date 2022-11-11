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

export const persistor = persistStore(store);

const container = document.getElementById("root");
const root = createRoot(container);

root.render(
  <Provider store={store}>
    <PersistGate loading={null} persistor={persistor}>
      <BrowserRouter>

        <App></App>

        {/* <Routes>
          <Route path="/" element={<Main />} />
          <Route path="/Game" element={<PrivateRoute><GameLoad /></PrivateRoute>} />
          <Route path="/SelfStudy" element={<PrivateRoute><SelfStudy /></PrivateRoute>}/>
          <Route path="/SelfStudy/study" element={<Study />} />
          <Route path="/Album" element={<Album />} />
          <Route path="/Story" element={<Story />} />
          <Route path="/Interview" element={<Interview />}/>
          <Route path="/Album"element={<PrivateRoute><Album /></PrivateRoute>} />
          <Route path="/Profile" element={<Profile />} />
        </Routes>  */}


      </BrowserRouter>
    </PersistGate>
  </Provider>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
function App() {
  const location = useLocation();

  return (
        <TransitionGroup>
          <CSSTransition key={location.key} classNames="pageSlider" timeout={300}>
          <Routes style={{ backgroundColor: "black", position: "relative" }} location={location}>

              <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/" element={<Main />} />
              <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Game" element={<PrivateRoute><GameLoad /></PrivateRoute>} />
              <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/SelfStudy" element={<PrivateRoute><SelfStudy /></PrivateRoute>}/>
              <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/SelfStudy/study" element={<Study />} />
              <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Album" element={<Album />} />
              <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Story" element={<Story />} />
              <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Interview" element={<Interview />}/>
              <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Album"element={<PrivateRoute><Album /></PrivateRoute>} />
              <Route style={{ backgroundColor: "black", position: "absolute", top: "0vh", left: "0vw", }} path="/Profile" element={<Profile />} />
              </Routes>

          </CSSTransition>
        </TransitionGroup>
  );
}