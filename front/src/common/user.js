import axiosInstance from "./axios";

export const loginKakao = async (data) => {
  const response = await axiosInstance.post("/user/kakao", data);
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

export const putUserInfo = async (data) => {
  // 데이터를 넣어보낼 폼데이터 생성
  const formData = new FormData();
  // 폼데이터에 유저 정보를 변경할 내용을 JSON으로 담기
  formData.append(
    'userDto',
    new Blob([JSON.stringify(data)], { type: 'application/json' }),
  );
  // 헤더 추가
  const config = {
    headers: {
      'Content-Type': 'multipart/form-data',
    },
  };
  const res = await axiosInstance.put('/user', formData, config);
  return res;
};

export const signUp = (data) => {
  const res = axiosInstance.put("/user/signup", data);
  return res;
};

export const studyProgress = () => {
  const res = axiosInstance.get("/progress")
  return res
}

export const albumProgress = async () => {
  const response = await axiosInstance.get("album/progress")
  return response
}

export const logout = async () => {
  const response = await axiosInstance.get("user/logout")
  return response
}


export const userDelete = async () => {
  const response = await axiosInstance.delete("user/")
  return response
}


// 랭킹정보 요청
export const getRankingInfo = async () => {
  const response = await axiosInstance.get("progress/rank")
  return response
}