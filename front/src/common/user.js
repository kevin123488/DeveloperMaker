import axiosInstance from "./axios";

export const loginKakao = async (data) => {
  const response = await axiosInstance.post("/user/kakao", data);
  console.log("response", response);
  return response;
};

export const loginNaver = async (data) => {
  const response = await axiosInstance.post("/user/naver", data);
  return response
}

export const getUserInfo = async () => {
  const res = await axiosInstance.get("/user");
  return res;
};

export const signUp = (data) => {
  const res = axiosInstance.put("/user/signup", data);
  return res;
};
