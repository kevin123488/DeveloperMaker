import React from "react";
import { createRoot } from "react-dom/client";
import { Provider } from "react-redux";
import { store } from "./slices/index.js";
import Main from "./pages/Main/Main.js";

const container = document.getElementById("root");
const root = createRoot(container);

root.render(
  <Provider store={store}>
    <Main />
  </Provider>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
