import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { loginKakao, getUserInfo, signUp } from "../common/user";
import { PURGE } from "redux-persist";

export const userLoginKakao = createAsyncThunk(
  "user/loginKakao",
  async (access_token, { rejectWithValue }) => {
    try {
      const { data } = await loginKakao({ access_token });
      sessionStorage.setItem("accessToken", data["token"]);
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

export const getUser = createAsyncThunk(
  "user/userInfo",
  async (temp, { rejectWithValue }) => {
    try {
      const { data } = await getUserInfo();
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

const initialState = {
  userInfo: null,
  isLoading: false,
  error: null,
  isStart: false,
};

const userSlice = createSlice({
  name: "user",
  initialState,
  reducers: {
    signUpUser: (state, action) => {
      state.userInfo.language = action.payload.language;
      state.userInfo.nickname = action.payload.nickname;
    },
    startGame: (state) => {
      state.isStart = true;
    },
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
        console.log("Now Loading");
      })
      .addCase(getUser.fulfilled, (state, { payload }) => {
        state.userInfo = payload.data;
      })
      .addCase(getUser.rejected, (state, { payload }) => {
        state.isLoading = false;
        state.error = payload.data;
      })
      .addCase(PURGE, () => initialState);
  },
});

export const { signUpUser, startGame } = userSlice.actions;
export default userSlice.reducer;
