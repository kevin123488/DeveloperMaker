import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { loginKakao, loginNaver, getUserInfo, signUp } from "../common/user";
import { PURGE } from "redux-persist";

export const userLoginKakao = createAsyncThunk(
  "user/loginKakao",
  async (access_token, { rejectWithValue }) => {
    try {
      const response = await loginKakao({ access_token });
      sessionStorage.setItem("accessToken", response.data["token"]);
      console.log("data", response);
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
      sessionStorage.setItem("accessToken", response.data["token"])
      console.log("naver Data", response)
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
      console.log(data);
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
  isLogIn: false,
  error: null,
};

const userSlice = createSlice({
  name: "user",
  initialState,
  reducers: {
    signUpUser: (state, action) => {
      signUp(action.payload);
      state.userInfo.language = action.payload.language;
      state.userInfo.nickname = action.payload.nickname;
      state.isLogIn = true;
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
        state.isLogIn = true;
      })
      .addCase(getUser.rejected, (state, { payload }) => {
        state.isLoading = false;
        state.error = payload.data;
        state.isLogIn = false;
      })
      .addCase(PURGE, () => initialState);
  },
});

export const { signUpUser } = userSlice.actions;
export default userSlice.reducer;
