import React from "react";
import { createRoot } from "react-dom/client";
import { Provider } from "react-redux";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import Main from "./pages/Main/Main.js";
import SelfStudy from "./pages/SelfStudy/SelfStudy.js";
import Study from "./pages/SelfStudy/Study.js";
import AlgorithmSelfStudy from "./pages/SelfStudy/AlgorithmSelfStudy.js";
import LangFrameSelfStudy from "./components/SelfStudy/LangFrameSelfStudy.js";
import Album from "./pages/Album/Album.js";
import Story from "./pages/Story/Story.js";
import GameLoad from "./pages/Game/GameLoad.js";
import Profile from "./pages/Profile/Profile.js";
import "bootstrap/dist/css/bootstrap.css";
import store from "./slices/index.js";
import { PersistGate } from "redux-persist/integration/react";
import { persistStore } from "redux-persist";
import PrivateRoute from "./components/Routes/PrivateRoute.js";
import Quiz from "./pages/SelfStudy/Quiz";


export const persistor = persistStore(store);

const container = document.getElementById("root");
const root = createRoot(container);


root.render(
  <Provider store={store}>
    <PersistGate loading={null} persistor={persistor}>
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Main />} />
          <Route path="/Game" element={<PrivateRoute><GameLoad /></PrivateRoute>} />
          <Route path="/SelfStudy" element={<PrivateRoute><SelfStudy /></PrivateRoute>}/>
          <Route path="/SelfStudy/study" element={<Study />} />
          <Route path="/SelfStudy/algo" element={<AlgorithmSelfStudy />} />
          <Route
            path="/SelfStudy/lang-frame"
            element={<LangFrameSelfStudy />}
          />
          <Route path="/Album" element={<Album />} />
          <Route path="/Story" element={<Story />} />
          <Route path='/Story' element={<Story />} />
          <Route path="/SelfStudy/lang-frame" element={<LangFrameSelfStudy />}/>
          <Route path="/Album"element={<PrivateRoute><Album /></PrivateRoute>} />
          <Route path="/Profile" element={<Profile />} />
          <Route path="/SelfStudy/quiz" element={<Quiz />} />
        </Routes>
      </BrowserRouter>
    </PersistGate>
  </Provider>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
