import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { interviewFaceCheck, interviewSubject, interviewSubmit } from "../common/interview";


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

export const subInterviewData = createAsyncThunk(
  "interview/submit",
  async (data, { rejectWithValue }) => {
    try {
      console.log(data)
      const {subjectNo, image, script} = data
      const response = await interviewSubmit(subjectNo, image, script);
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
    // 환경 설정을 위한 단계들 얼굴인식, 목소리 인식, 최종 시작
    check: {face: false, voice: false, ready: false},
    // 현재 받아온 문제
    question: {no: null, subject: null ,content: null},
    // 스토리에서 왔는 지 여부
    isStory: false,
    // 각 단계 인식 결과
    result: [{totalScore: 0, pass: false, imageScore: 0,}, {totalScore: 0, pass: false, imageScore: 0,}, {totalScore: 0, pass: false, imageScore: 0,}],
    // 현재 단계
    stage: 1,
  },
  reducers: {
    checkVoice: (state, action) => {
      state.check[`${action.select}`] = true
    },
    // 내용 초기화
    checkInitialize: (state, action) => {
      state.isLoding = false;
      state.check = {face: false, voice: false, ready: false};
      state.question = {no: null, subject: null , question: null, };
      state.isStory = false;
      // 1번 결과[0] 2번 결과[1] 3번 결과[2]
      state.result =  [{totalScore: 0, pass: false, imageScore: 0,}, {totalScore: 0, pass: false, imageScore: 0,}, {totalScore: 0, pass: false, imageScore: 0,}]
      state.stage = 1;
    },
    changeStage: (state, action) => {
      state.stage += 1
    },
    changeStory: (stage, action) => {
      stage.isStory = action.payload
    }
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
        state.question.no = action.payload.aiqId;
        state.question.question = action.payload.question
        state.question.subject = action.payload.subject
      })
      // 답안 제출 결과 경신
      .addCase(subInterviewData.fulfilled, (state, action) => {
        console.log('답안 제출 결과', action.payload)
        state.result[state.stage-1] = action.payload
        // 로딩 끝
        state.isLoding = false
        // 단계 넘기기
        state.stage += 1
      })
      .addCase(subInterviewData.pending, (state, action) => {
        state.isLoding = true
      })
      // 답안 제출 결과 인식 실패 ===> 스테이지만 올리기
      .addCase(subInterviewData.rejected, (state, action) => {
        // 로딩 끝
        state.isLoding = false
        // 임의의 값 넣기
        // 단계 넘기기
        state.stage += 1
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