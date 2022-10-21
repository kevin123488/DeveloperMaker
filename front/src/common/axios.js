import Axios from "axios";

const axiosInstance = Axios.create({
  baseURL: "http://localhost:8080/api/",
  headers: {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Content-Type",
    "Content-Type": "application/json",
  },
});

axiosInstance.interceptors.request.use((config) => {
  const accessToken = "Bearer " + sessionStorage.getItem("accessToken");
  config.headers["access-token"] = accessToken;
  return config;
});

export default axiosInstance;
