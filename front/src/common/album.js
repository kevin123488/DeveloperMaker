import axiosInstance from "./axios";

export const albumList = async () => {
  const response = await axiosInstance.get("/album");
  console.log("albumList-response", response);
  return response;
};

export const albumCreate = async (albumNum) => {
  const response = await axiosInstance.post(`/album/${albumNum}`);
  console.log("album create", response);
  return response;
};

export const albumCheck = async (albumId) => {
  const response = await axiosInstance.get(`/album/find/${albumId}`);
  console.log("album-check", response);
  return response;
};

export const getNewAlbum = async () => {
  const response = await axiosInstance.get("/album/new")
  console.log("get new Album")
  return response
}


