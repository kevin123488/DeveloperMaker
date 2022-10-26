import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { 
  getStudyListApi, 
  // getStudyInfoApi,
  // getQuizListApi,
  // postQuizSolveApi,
  // putQuizSolveApi,
  // getCodingTestListApi,
 } from "../common/selfstudy";

export const getStudyList = createAsyncThunk(
  "study/list",
  async (temp, { rejectWithValue }) => {
    try {
      const { data } = await getStudyListApi();
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
  dumy: '',
  isLoading: false,
};

const selfstudySlice = createSlice({
  name: "study",
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder.addCase(getStudyList.fulfilled, (state, action) => {
      state.studyList = action.payload;
    })
    },
});
  
// export const { logout } = selfstudySlice.actions;
export default selfstudySlice.reducer;
