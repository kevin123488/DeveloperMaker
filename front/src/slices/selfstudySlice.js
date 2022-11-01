import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { 
  getStudyListApi,
  getStudyInfoApi,
  getQuizListApi,
  getQuizInfoApi,
  postQuizSolveApi,
  getCodingTestListApi,
  getSelfStudyProgressApi,
} from "../common/selfstudy";


// 스터디 대분류, 소분류 정보 가져오기
export const getStudyInfo = createAsyncThunk(
  "study/list",
  async (temp, { rejectWithValue }) => {
    try {
      const { data } = await getStudyInfoApi();
      console.log(data)
      return data.data
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

// 퀴즈 대분류, 소분류 가져오기
export const getQuizInfo = createAsyncThunk(
  "quiz/list",
  async (temp, { rejectWithValue }) => {
    try {
      const { data } = await getQuizInfoApi();
      console.log(data)
      return data.data
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

// 페이지 옮길때 마다 스터디 목록 가져올 함수
export const getStudyList = createAsyncThunk(
  "study/info",
  async (studyRequestDto, { rejectWithValue }) => {
    try {
      const { data } = await getStudyListApi(studyRequestDto);
      return data.data
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

// 페이지 옮길때 마다 퀴즈 목록 가져올 함수
export const getQuizList = createAsyncThunk(
  "quiz/info",
  async (quizRequestDto, { rejectWithValue }) => {
    try {
      const { data } = await getQuizListApi(quizRequestDto);
      return data.data
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

export const postQuizSolve = createAsyncThunk(
  "quiz/solve",
  async (solveInfo, { rejectWithValue }) => {
    try {
      const { data } = await postQuizSolveApi(solveInfo);
      console.log(data.data)
      return data.data
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

export const getCodingTestList = createAsyncThunk(
  "cote/list",
  async (temp, { rejectWithValue }) => {
    try {
      const { data } = await getCodingTestListApi();
      return data.data
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

export const getSelfStudyProgress = createAsyncThunk(
  "study/progress",
  async (temp, { rejectWithValue }) => {
    try {
      const  { data } = await getSelfStudyProgressApi();
      return data.data
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
  studyList: {studyInfo: [1, 2]},
  studyInfo:  [
    {
      "category": "ㅇㅂㅇ",
      "subjectList": [
        {
            "subject": "network",
            "count": 4
        },
        {
            "subject": "computer",
            "count": 2
        },
        {
            "subject": "database",
            "count": 3
        }
      ]
    },
    {
      "category": "BACKEND",
      "subjectList": [
        {
            "subject": "spring",
            "count": 2
        },
        {
            "subject": "jpa",
            "count": 1
        }
      ]
    },
    {
      "category": "FRONTEND",
      "subjectList": [
        {
            "subject": "react",
            "count": 1
        },
        {
            "subject": "vue",
            "count": 1
        }
      ]
    }
  ],
  quizList: [
    {
      "quizId": 1,
      "no": 1,
      "subject": "네트워크",
      "title": "가나다라",
      "problem": "다음 중, '가'를 고르시오.",
      "example": [
        "가",
        "나",
        "다",
        "라",
      ],
      "correct": 2
    },
    {
      "quizId": 2,
      "no": 2,
      "subject": "네트워크",
      "title": "가나다라2",
      "problem": "다음 중 '나'를 고르시오",
      "example": [
        "가",
        "나",
        "다",
        "라",
      ],
      "correct": 0
    }
  ],
  quizInfo: [],
  coteList: [],
  progress: {},
};

const selfstudySlice = createSlice({
  name: "study",
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder.addCase(getStudyList.fulfilled, (state, action) => {
      state.studyList = action.payload;
    })
    builder.addCase(getStudyInfo.fulfilled, (state, action) => {
      state.studyInfo = action.payload;
    })
    builder.addCase(getQuizList.fulfilled, (state, action) => {
      state.quizList = action.payload;
    })
    builder.addCase(getQuizInfo.fulfilled, (state, action) => {
      state.quizInfo = action.payload;
    })
    builder.addCase(getCodingTestList.fulfilled, (state, action) => {
      state.coteList = action.payload;
    })
    builder.addCase(getSelfStudyProgress.fulfilled, (state, action) => {
      state.progress = action.payload
    })
  },
});
  
// export const { logout } = selfstudySlice.actions;
export default selfstudySlice.reducer;