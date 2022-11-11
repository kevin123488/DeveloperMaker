import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { interviewFaceCheck } from "../common/interview";


// 앨범 정보를 받아오는 경우
export const interviewCheck = createAsyncThunk(
  "album/read",
  async (imageFile, { rejectWithValue }) => {
    try {
      const response = await interviewFaceCheck(imageFile);
      return response.data.data
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

const interview = createSlice({
  name: "album",
  // 앨범 리스트를 받을 시작 리스트
  initialState: {
    stage: 0,
  },
  reducers: {
    changeStage: (state, action) => {
      state.stage += 1
    },
  },
  extraReducers: (builder) => {
    builder
      .addCase(interviewCheck.fulfilled, (state, action) => {
        state.stage = 1
      })
      // .addCase(getAlbumCheck.fulfilled, (state, action) => {
      //   state.haveCheck = [action.payload];
      //   console.log(state.haveCheck);
      // })
      // // 거절됨
      // .addCase(readAlbum.rejected, (state, action) => {
      //   state.isLoading = false;
      // })
      // // 로딩중
      // .addCase(readAlbum.pending, (state, action) => {
      //   state.isLoading = true;
      //   console.log("Now Loading");
      // })
  },
});

export default interview.reducer;