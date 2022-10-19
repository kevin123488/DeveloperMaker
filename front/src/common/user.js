import axiosInstance from "./axios";

export const loginKakao = async (data) => {
  const response = await axiosInstance.post("/user/kakao", data);
  console.log("response", response);
  return response;
};

export const getUserInfo = async () => {
  const res = await axiosInstance.get("/user");
  return res;
};
