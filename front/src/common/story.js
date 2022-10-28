import axiosInstance from "./axios";

export const getUserMemory = async () => {
  const res = await axiosInstance.get("/memory");
  return res;
};

export const putUserMemory = async (data) => {
  // data 양식: slot, script, chapter, num, likeSpring, likeSummer, likeAutumn, likeWinter
  // -> 몇번째 슬롯?, 스크립트 이름?, 몇 챕터?, 인덱스?, 캐릭터별 호감도?
  // 
  const res = await axiosInstance.put("/memory", data);
  return res;
};