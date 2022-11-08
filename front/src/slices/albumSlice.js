import { createSlice, createAsyncThunk } from "@reduxjs/toolkit";
import { albumList, albumCreate, albumCheck, deleteNewAlbum, getNewAlbum } from "../common/album";

// 앨범 정보를 받아오는 경우
export const readAlbum = createAsyncThunk(
  "album/read",
  async (temp, { rejectWithValue }) => {
    try {
      const response = await albumList();
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
      const response = await albumCreate(albumId);
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

// 중복확인
export const getAlbumCheck = createAsyncThunk(
  "album/check",
  async (albumId, { rejectWithValue }) => {
    try {
      const response = await albumCheck(albumId);
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
export const getNew = createAsyncThunk(
  "album/new",
  async(temp, {rejectWithValue}) => {
    try {
      const response = await getNewAlbum()
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

  // 새 앨범 삭제
  export const deleteNew = createAsyncThunk(
    "album/newDelete",
    async(albumId, {rejectWithValue, dispatch}) => {
      try {
        const response = await deleteNewAlbum(albumId)
        // 전체 리스트 재요청
        dispatch(readAlbum())
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
    // haveCheck: [false],
    checkNew: { story: false, study:false, total: false, spring:false, fall: false, winter: false}
  },
  reducers: {
    changeMode: (state, action) => {
      state.albumPickShow = !state.albumPickShow
    },
    changeCheckNew: (state, action) => {
      if (action.story) {
        state.checkNew[action.story] = true;
        state.checkNew.story = true;
      } else {
        state.checkNew.study = true
      }
    }
  },
  extraReducers: (builder) => {
    builder
      .addCase(readAlbum.fulfilled, (state, action) => {
        state.studyAlbumList = action.payload.studyAlbumList
        state.storyAlbumList = action.payload.storyAlbumList
      })
      // .addCase(getAlbumCheck.fulfilled, (state, action) => {
      //   state.haveCheck = [action.payload];
      //   console.log(state.haveCheck);
      // })
      .addCase(putAlbumList.fulfilled, (state, action) => {
        // 뽑기를 위해 새앨범 을 NEW에 입력
        state.newAlbum = action.payload
        // 앨범 뽑는거 보여주기
        state.albumPickShow = true
        // 새롭게 해당 앨범 리스트의 is owned 변경을 해야함 => 어차피 다른 페이지에서 함
      })
      .addCase(deleteNew.fulfilled, (state, action)=>{
        console.log('삭제가 성공함')
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