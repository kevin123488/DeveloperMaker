import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { 
  getStudyListApi,
  getStudyInfoApi,
  getQuizListApi,
  postQuizSolveApi,
  getCodingTestListApi,
  getSelfStudyProgressApi,
 } from "../common/selfstudy";

export const getStudyList = createAsyncThunk(
  "study/list",
  async (subject, { rejectWithValue }) => {
    try {
      const { data } = await getStudyListApi(subject);
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

export const getStudyInfo = createAsyncThunk(
  "study/info",
  async (studyId, { rejectWithValue }) => {
    try {
      const { data } = await getStudyInfoApi(studyId);
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

export const getQuizList = createAsyncThunk(
  "quiz/list",
  async (subject, { rejectWithValue }) => {
    try {
      const { data } = await getQuizListApi(subject);
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
  async (answer, { rejectWithValue }) => {
    try {
      const { data } = await postQuizSolveApi(answer);
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
  studyList: [],
  studyInfo: [],
  quizList: [],
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