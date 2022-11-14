import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { interviewFaceCheck, interviewSubject } from "../common/interview";


// 앨범 정보를 받아오는 경우
export const interviewCheck = createAsyncThunk(
  "interview/checkFace",
  async (imageFile, { rejectWithValue }) => {
    try {
      const response = await interviewFaceCheck(imageFile);
      console.log(response)
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

export const getInterviewQuestion = createAsyncThunk(
  "interview/question",
  async (subject, { rejectWithValue }) => {
    try {
      const response = await interviewSubject(subject);
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
  name: "interview",
  // 앨범 리스트를 받을 시작 리스트
  initialState: {
    isLoding: false,
    check: {face: false, voice: false, ready: false},
    Question: {no: null, subject: null ,content: null, stage:0, answer: null,},
    points: 0,
  },
  reducers: {
    checkVoice: (state, action) => {
      state.check[`${action.select}`] = true
    },
    changeStage: (state, action) => {
      state.stage += 1
    },
  },
  extraReducers: (builder) => {
    builder
      // 얼굴인식 요청 성공
      .addCase(interviewCheck.fulfilled, (state, action) => {
        // 얼굴을 인식한 경우
        if (action.payload) {
          state.check.face = true;
        }
        state.isLoding = false;
      })
      // 얼굴인식 요청 중
      .addCase(interviewCheck.pending, (state, action) => {
        state.isLoding = true
      })
      // 문제를 받아온 경우
      .addCase(getInterviewQuestion.fulfilled, (state, action) => {
        console.log(action.payload)
        state.Question.no = action.payload.aiqId;
        state.Question.content = action.payload.question
        state.Question.subject = action.payload.subject
        state.Question.stage += 1
        state.Question.answer = action.payload.keyword
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