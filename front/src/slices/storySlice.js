import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { getUserMemory, putUserMemory } from "../common/story"
import { PURGE } from "redux-persist";

const initialState = {
  userStoryData: null,
};

const storySlice = createSlice({
  name: "story",
  initialState,
  reducers: {
    userGetMemory: (state, action) => {
      getUserMemory(action.payload);
      state.userStoryData = action.payload;
    }
  }
})

export default storySlice.reducer;