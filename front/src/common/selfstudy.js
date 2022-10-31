import axiosInstance from "./axios";



// 스터디 리스트 요청
export const getStudyListApi = async (subject) => {
  const res = await axiosInstance.get(`/study/${subject}`);
  return res;
};
  
// 해당과목 내용 불러오기
export const getStudyInfoApi = async (studyId) => {
  const res = await axiosInstance.get(`/study/${studyId}`);
  return res;
};



// 퀴즈리스트 요청
export const getQuizListApi = async (subject) => {
  const res = await axiosInstance.get(`/quiz/${subject}`);
  return res;
};

// 퀴즈 풀기
export const postQuizSolveApi = async (solveInfo) => {
  const res = await axiosInstance.post(`/quiz/${solveInfo.quizId}`, solveInfo.answer);
  return res;
};

// 퀴즈 다시 풀기
export const putQuizSolveApi = async (quizId) => {
  const res = await axiosInstance.put(`/quiz/${quizId}`);
  return res;
};



// 코테 리스트 조회
export const getCodingTestListApi = async () => {
  const res = await axiosInstance.get("/cote");
  return res;
};

// 진행도 조회
export const getSelfStudyProgressApi = async () => {
  const res = await axiosInstance.get("/progress");
  return res;
}