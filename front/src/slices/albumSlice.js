import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { albumList, albumCreate, albumCheck } from "../common/album";

// 앨범 정보를 받아오는 경우
export const readAlbum = createAsyncThunk(
  "album/read",
  async (temp, { rejectWithValue }) => {
    try {
      const response = await albumList();
      console.log(response.data.data)
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

export const putAlbumList = createAsyncThunk(
  "album/put",
  async (albumId, { rejectWithValue }) => {
    try {
      const { response } = await albumCreate(albumId);
      return response.data.data;
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

export const getAlbumCheck = createAsyncThunk(
  "album/check",
  async (albumId, { rejectWithValue }) => {
    try {
      const response = await albumCheck(albumId);
      console.log(response.data.data);
      return response.data.data;
    } catch (error) {
      if (error.response && error.response.data.message) {
        return rejectWithValue(error.response.data.message);
      } else {
        return rejectWithValue(error.message);
      }
    }
  }
);

// 새 앨범 여부 확인
export const getNewAlbum = createAsyncThunk(
  "album/new",
  async(albumId, {rejectWithValue}) => {
    try {
      const {response} = await getNewAlbum()
      return response.data.data
    } catch (error) {
        if (error.response && error.response.data.message) {
          return rejectWithValue(error.response.data.message);
        } else {
          return rejectWithValue(error.message);
        }
      }
    }
  )


const album = createSlice({
  name: "album",
  // 앨범 리스트를 받을 시작 리스트
  initialState: {
    storyAlbumList: [],
    studyAlbumList: [],
    albumPickShow: false,
    newAlbum: {},
    haveCheck: [false],
  },
  reducers: {
    changeMode: (state, action) => {
      state.albumPickShow = !state.albumPickShow
    },
  },
  extraReducers: (builder) => {
    builder
      .addCase(readAlbum.fulfilled, (state, action) => {
        state.studyAlbumList = action.payload.studyAlbumList
        state.storyAlbumList = action.payload.storyAlbumList
      })
      .addCase(getAlbumCheck.fulfilled, (state, action) => {
        state.haveCheck = [action.payload];
        console.log(state.haveCheck);
      })
      .addCase(putAlbumList.fulfilled, async (state, action) => {
        // 새 앨범 값 추가
        state.newAlbum = action.payload
        // 앨범 뽑는거 보여주기
        state.albumPickShow = true
        // 새롭게 해당 앨범 리스트의 is owned 변경을 해야함
      })

      .addCase(getNewAlbum.fulfilled, (state, action) => {
        state.newAlbum = action.payload
      })
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

export default album.reducer;