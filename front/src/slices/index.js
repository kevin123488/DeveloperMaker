import { configureStore } from "@reduxjs/toolkit";
import selfstudySlice from "./selfstudySlice";
import UserSlice from "./userSlice";
import album from "./albumSlice";
import storageSession from "redux-persist/lib/storage/session";
import { persistReducer, PERSIST, PURGE } from "redux-persist";
import profile from "./profileSlice";

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
    study: selfstudySlice,
    album: album,
    profile: profile,
  },
  middleware: (getDefaultMiddleware) =>
    getDefaultMiddleware({
      serializableCheck: {
        ignoreActions: [PERSIST, PURGE],
      },
    }),
});

export default store;
