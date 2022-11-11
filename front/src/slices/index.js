import { configureStore } from "@reduxjs/toolkit";
import selfstudySlice from "./selfstudySlice";
import UserSlice from "./userSlice";
import album from "./albumSlice";
import storageSession from "redux-persist/lib/storage/session";
import { persistReducer } from "redux-persist";
import storySlice from "./storySlice";
import interview from "./interviewSlice";

// persistReducer에 저장할 정보가 여러개가 되면 활성화
// reduxtoolkit에 combineReducers 라이브러리 참조할것
// const reducers = combineReducers({
//   user: UserSlice,
// });

const persistConfig = {
  key: "root",
  version: 1,
  storage: storageSession,
};

const persistedReducer = persistReducer(persistConfig, UserSlice);

const store = configureStore({
  reducer: {
    user: persistedReducer,
    story: storySlice,
    study: selfstudySlice,
    album: album,
    interview: interview,
  },
  middleware: (getDefaultMiddleware) =>
    getDefaultMiddleware({serializableCheck: false}),
});

export default store;
