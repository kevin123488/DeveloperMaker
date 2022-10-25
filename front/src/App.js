import React from "react";
import { Route, Routes } from "react-router-dom";
import Main from "./pages/Main/Main";
import Album from "./pages/Album/Album";

function App() {
  return (
    <Routes>
      {/* 
						Routes안에 이렇게 작성합니다. 
						Route에는 react-router-dom에서 지원하는 props들이 있습니다.

						paht는 우리가 흔히 말하는 사용하고싶은 "주소"를 넣어주면 됩니다.
						element는 해당 주소로 이동했을 때 보여주고자 하는 컴포넌트를 넣어줍니다.
				 */}
      <Route path="/" element={<Main />} />
      <Route path="/album" element={<Album />} />
    </Routes>
  );
}

export default App;
