import axiosInstance from "./axios";



// 스터디 리스트 요청
export const getStudyListApi = async () => {
  const res = await axiosInstance.get("/study/network");
  return res;
};
  
// 해당과목 내용 불러오기
export const getStudyInfoApi = async (studyId) => {
  const res = await axiosInstance.get(`/study/${studyId}`);
  return res;
};



// 퀴즈리스트 요청
export const getQuizListApi = async () => {
  const res = await axiosInstance.get("/quiz/list");
  return res;
};

// 퀴즈 풀기
export const postQuizSolveApi = async () => {
  const res = await axiosInstance.post("/quiz");
  return res;
};

// 퀴즈 다시 풀기
export const putQuizSolveApi = async () => {
  const res = await axiosInstance.put("/quiz");
  return res;
};



// 코테 리스트 조회
export const getCodingTestListApi = async () => {
  const res = await axiosInstance.get("/cote");
  return res;
};