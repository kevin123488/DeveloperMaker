import axiosInstance from "./axios";

export const interviewFaceCheck = async (data) => {
  // 데이터를 넣어보낼 폼데이터 생성
  const formData = new FormData();
  // 폼데이터에 유저 정보를 변경할 내용을 JSON으로 담기
  // formData.append(
  //   'JPGimage',
  //   new Blob([JSON.stringify(data)], { type: 'application/json' }),
  // );
  formData.append("file", data);
  // 헤더 추가
  const config = {
    headers: {
      'Content-Type': 'multipart/form-data',
    },
  };
  const res = await axiosInstance.post('/ai/isFaceImage', formData, config);
  return res;
};

export const interviewSubject = async (subject) => {
  const response = await axiosInstance.get(`/ai/${subject}`);
  return response
}

export const interviewSubmit = async (subjectNo) => {
  const response = await axiosInstance.post(`/ai/${subjectNo}`);
  return response
}

