import axiosInstance from "./axios";


// 스터디 정보
// 카테고리, 카테고리별 서브젝트, 서브젝트별 아이템 갯수
export const getStudyInfoApi = async () => {
  const res = await axiosInstance.get(`/study`);
  return res;
};

// 퀴즈 정보
// 카테고리, 카테고리별 서브젝트, 서브젝트별 아이템 갯수
export const getQuizInfoApi = async () => {
  const res = await axiosInstance.get(`/quiz`);
  return res;
};

// 스터디 리스트 요청
// studyRequestDto = {category: "", subject: "", offset: int, limit: int}
export const getStudyListApi = async (studyRequestDto) => {
  const res = await axiosInstance.post(`/study`, studyRequestDto);
  return res;
};

// 퀴즈리스트 요청
// quizRequestDto = {category: "", subject: "", offset: int, limit: int}
export const getQuizListApi = async (quizRequestDto) => {
  const res = await axiosInstance.post(`/quiz`, quizRequestDto);
  return res;
};

// 퀴즈 풀기
export const postQuizSolveApi = async (solveInfo) => {
  const res = await axiosInstance.post(`/quiz/submit`, solveInfo);
  return res;
};



// 코테 리스트 조회
export const getCodingTestListApi = async (coteListRequestDto) => {
  const res = await axiosInstance.get("/cote", coteListRequestDto);
  return res;
};

// 코테 답 제출
export const postCodingTestSolveApi = async (solveInfo) => {
  const res = await axiosInstance.post(`/cote/${solveInfo}`);
  return res;
};

// 진행도 조회
export const getSelfStudyProgressApi = async () => {
  const res = await axiosInstance.get("/progress");
  return res;
}