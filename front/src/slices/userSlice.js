import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { loginKakao, loginNaver, getUserInfo, signUp, putUserInfo, studyProgress, albumProgress, userDelete, logout } from "../common/user";
import { PURGE } from "redux-persist";
import sessionStorage from "redux-persist/es/storage/session";
import { useNavigate } from "react-router-dom";

export const userLoginKakao = createAsyncThunk(
  "user/loginKakao",
  async (access_token, { rejectWithValue }) => {
    try {
      const response = await loginKakao({ access_token });
      sessionStorage.setItem("accessToken", response.data["accessToken"]);
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

export const userLoginNaver = createAsyncThunk(
  'user/loginNaver',
  async (access_token, {rejectWithValue}) => {
    try {
      const response = await loginNaver({access_token});
      sessionStorage.setItem("accessToken", response.data["accessToken"])
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
)

export const getUser = createAsyncThunk(
  "user/userInfo",
  async (temp, { rejectWithValue }) => {
    try {
      const { data } = await getUserInfo();
      // C로 저장되어 있으면 C++로 변경
      if (data.data.language === "C") {
        data.data.language = "C++"
      }
      return data;
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

export const getProgress = createAsyncThunk(
  "user/studyProgress",
  async (temp, {rejectWithValue}) => {
    try {
      const {data} = await studyProgress()
      return data.data
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
)

export const getAlbumProgress = createAsyncThunk(
  "user/albumProgress",
  async (temp, {rejectWithValue}) => {
    try {
      const {data} = await albumProgress()
      return data.data
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
)

export const userLogout = createAsyncThunk(
  'user/logout',
  async (temp, {rejectWithValue}) => {
    try {
      const {data} = await logout()
      console.log('로그아웃 결과',data)
      return data.data
    } catch(error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
)

export const DeleteUser = createAsyncThunk(
  'user/delete',
  async (temp, {rejectWithValue}) => {
    try {
      const {data} = await userDelete()
      console.log('탈퇴 결과',data)
      return data.data
    } catch(error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
)


const initialState = {
  userInfo: null,
  isLogIn: false,
  error: null,
  progress: {study: {algorithm:0,backend:0,cs:0, frontend:0, language:0}, album: {} }
};

const userSlice = createSlice(
  {
  name: "user",
  initialState,
  reducers: {
    // 회원가입
    signUpUser: (state, action) => {
      signUp(action.payload);
      state.userInfo.language = action.payload.language;
      state.userInfo.nickname = action.payload.nickname;
      state.isLogIn = true;
    },
    // 설정 변경
    changeInfo: (state, action) => {
      // DB 변경 요청
      putUserInfo(action.payload)
      // Redux 변경
      if (action.payload.language === "C") {
        state.userInfo.language = "C++"
      } else { 
        state.userInfo.language = action.payload.language
      }
      state.userInfo.nickname = action.payload.nickname
    }
  },
  extraReducers: (builder) => {
    builder
      .addCase(userLoginKakao.pending, (state, action) => {
        state.isLoading = true; //로딩중
      })
      .addCase(userLoginKakao.fulfilled, (state, action) => {
        state.isLoading = false;
      })
      .addCase(userLoginKakao.rejected, (state, action) => {
        state.isLoading = false;
      })
      .addCase(getUser.pending, (state, action) => {
        state.isLoading = true;
      })
      .addCase(getUser.fulfilled, (state, { payload }) => {
        state.userInfo = payload.data;
        state.isLogIn = true;
      })
      .addCase(getUser.rejected, (state, { payload }) => {
        state.isLoading = false;
        state.error = payload.data;
        state.isLogIn = false;
      })
      .addCase(PURGE, () => initialState)
      .addCase(getProgress.fulfilled, (state, {payload})=>{
        state.progress.study = payload
      })
      .addCase(getAlbumProgress.fulfilled, (state, {payload}) => {
        state.progress.album = payload
      })
      .addCase(userLogout.fulfilled, (state, {payload})=> {
        state = initialState
        sessionStorage.clear();
        window.location.reload()
      })
      .addCase(DeleteUser.fulfilled, (state, {payload})=> {
        state = initialState
        sessionStorage.clear();
        const navigate = useNavigate()
        navigate('/')
      })
  },
});

export const { signUpUser } = userSlice.actions;
export const { changeInfo } = userSlice.actions;
export default userSlice.reducer;
