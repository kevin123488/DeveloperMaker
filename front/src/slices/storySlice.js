import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { getUserMemory, putUserMemory } from "../common/story"
import { PURGE } from "redux-persist";

export const userGetMemory = createAsyncThunk(
  "story/getmemory",
  async (temp, { rejectWithValue }) => {
    try {
      const response = await getUserMemory();
      // console.log(response.data);
      return response.data;
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

export const userPutMemory = createAsyncThunk(
  "story/putmemory",
  async (storyObj, { rejectWithValue }) => {
    // console.log(storyObj)
    try {
      const response = await putUserMemory(storyObj);
      // console.log(response.data);
      return response.data;
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
  userStoryData: [
    {
      "chapter": 1,
      "likeAutumn": 0,
      "likeSpring": 0,
      "likeSummer": 0,
      "likeWinter": 0,
      "num": 0,
      "script": "script1",
      "slot": 1,
    },
    {
      "chapter": 1,
      "likeAutumn": 0,
      "likeSpring": 0,
      "likeSummer": 0,
      "likeWinter": 0,
      "num": 0,
      "script": "script1",
      "slot": 2,
    },
    {
      "chapter": 1,
      "likeAutumn": 0,
      "likeSpring": 0,
      "likeSummer": 0,
      "likeWinter": 0,
      "num": 0,
      "script": "script1",
      "slot": 3,
    },
  ],
  selectedSlot: 1, // 슬롯의 번호 1, 2, 3
};

const storySlice = createSlice({
  name: "story",
  initialState,
  reducers: {
    choiceSlot: (state, action) => {
      state.selectedSlot = action.slotNum;
    }
  },
  extraReducers: (builder) => {
    builder
      .addCase(userGetMemory.fulfilled, (state, action) => {
        state.userStoryData = action.payload.data; // userGetMemory 수행되면 결과를 state에 반영
        // console.log(state.userStoryData);
        // state.userStoryData = ["chapter1"];
      })
  }
})

export const { choiceSlot } = storySlice.actions;
export default storySlice.reducer;