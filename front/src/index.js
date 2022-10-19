import React from "react";
import { createRoot } from "react-dom/client";
import { Provider } from "react-redux";
import { store } from "./slices/index.js";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import Main from "./pages/Main/Main.js";
import SelfStudy from "./pages/SelfStudy/SelfStudy.js";
import CsSelfStudy from "./pages/SelfStudy/CsSelfStudy.js";
import AlgorithmSelfStudy from "./pages/SelfStudy/AlgorithmSelfStudy.js";
import LangFrameSelfStudy from "./pages/SelfStudy/LangFrameSelfStudy.js";
import 'bootstrap/dist/css/bootstrap.css';

const container = document.getElementById("root");
const root = createRoot(container);

root.render(
  <Provider store={store}>
    <BrowserRouter>
      <Routes>      
        <Route path='/' element={<Main />} />
        <Route path='/SelfStudy' element={<SelfStudy />} />
        <Route path='/SelfStudy/cs' element={<CsSelfStudy />} />
        <Route path='/SelfStudy/algo' element={<AlgorithmSelfStudy />} />
        <Route path='/SelfStudy/lang-frame' element={<LangFrameSelfStudy />} />
      </Routes>
    </BrowserRouter>
  </Provider>
);





// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
