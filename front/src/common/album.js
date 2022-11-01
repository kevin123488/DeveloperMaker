import axiosInstance from "./axios";

export const albumList = async () => {
  const response = await axiosInstance.get("/album");
  console.log("albumList-response", response);
  return response;
};

export const albumCreate = async (albumNum) => {
  const response = await axiosInstance.put(`/album/${albumNum}`);
  console.log("album create", response);
  return response;
};


