import React from "react";
import { Navigate } from "react-router-dom";
import { useSelector } from "react-redux";

const PrivateRoute = ({ children }) => {
  const isLogin = useSelector((state) => state.user.isLogIn);
  if (!isLogin) {
    alert("로그인 후 이용가능합니다.");
  }
  return !isLogin ? <Navigate to="/" /> : children;
};

export default PrivateRoute;
