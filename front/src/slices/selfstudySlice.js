import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { 
  getStudyListApi, 
  getStudyInfoApi,
  getQuizListApi,
  postQuizSolveApi,
  putQuizSolveApi,
  getCodingTestListApi,
 } from "../common/selfstudy";


export const getStudyList = createAsyncThunk(
  "study/list",
  async (access_token, { rejectWithValue }) => {
    try {
      const { studyList } = await getStudyListApi({ access_token });
      return studyList
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
};

const selfstudySlice = createSlice({
  name: "user",
  initialState,
  reducers: {},
  // extraReducers: (builder) => {
  //   builder
  //     .addCase(userLoginKakao.pending, (state, action) => {
  //       state.isLoading = true; //로딩중
  //     })
  //     .addCase(userLoginKakao.fulfilled, (state, action) => {
  //       state.isLoading = false;
  //     })
  //     .addCase(userLoginKakao.rejected, (state, action) => {
  //       state.isLoading = false;
  //     })
  //     .addCase(getUser.pending, (state, action) => {
  //       state.isLoading = true;
  //       console.log("Now Loading");
  //     })
  //     .addCase(getUser.fulfilled, (state, { payload }) => {
  //       state.userInfo = payload.data;
  //     })
  //     .addCase(getUser.rejected, (state, { payload }) => {
  //       state.isLoading = false;
  //       state.error = payload.data;
  //     })
  //     .addCase(PURGE, () => initialState);
  //   },
});
  
export const { logout } = selfstudySlice.actions;
export default selfstudySlice.reducer;
