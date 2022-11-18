import axiosInstance from "./axios";

export const interviewFaceCheck = async (data) => {
  // 데이터를 넣어보낼 폼데이터 생성
  const formData = new FormData();
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

// InterviewText라는 이름을 사용해야 함
export const interviewSubmit = async (subjectNo, image, interviewText) => {
  // 데이터를 넣어보낼 폼데이터 생성
  const formData = new FormData();
  // 파일 형태 추가
  formData.append('file', image);
  // Blob으로 내용 script 추가
  formData.append('aiInterviewRequestDto', new Blob([JSON.stringify({ interviewText })], {type: 'application/json'}),);
  // 헤더 추가
  const config = {headers: {'Content-Type': 'multipart/form-data'} };
  const response = await axiosInstance.post(`/ai/${subjectNo}`, formData, config);
  return response
}