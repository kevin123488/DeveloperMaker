import axiosInstance from "./axios";

export const albumList = async () => {
  const response = await axiosInstance.get("/album");
  return response;
};

export const albumCreate = async (albumNum) => {
  const response = await axiosInstance.post(`/album/${albumNum}`);
  return response;
};

export const albumCheck = async (albumId) => {
  const response = await axiosInstance.get(`/album/find/${albumId}`);
  return response;
};

export const getNewAlbum = async () => {
  const response = await axiosInstance.get(`/album/new`)
  return response
}

export const deleteNewAlbum = async (albumId) => {
  const response = await axiosInstance.get(`/album/new/${albumId}`)
  return response
}


