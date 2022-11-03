import React, {useState} from "react";
import CodeEditor from '@uiw/react-textarea-code-editor';
import { getCodingTestList, postCodingTestSolve } from "../../slices/selfstudySlice";
import { useSelector, useDispatch } from 'react-redux';

const CodeTextarea = (prop) => {
  const dispatch = useDispatch();
  const [code, setCode] = useState(
    `### 여기에 코드를 작성하세요 ###`
  );

  const solveAlgo = () => {
    const solveInfo = {
      coteId: 1,
      info: {language: prop.lang, code: code}
    }
    console.log(solveInfo)
    dispatch(postCodingTestSolve(solveInfo))
  }


  return (
    <>
      <div onClick={solveAlgo}>제출ㄱ?</div>

      <CodeEditor
        value={code}
        language={prop.lang}
        placeholder="코드를 작성해주세요."
        onChange={(evn) => 
          {
            setCode(evn.target.value)
            // console.log(evn.target.value)
          }
        }
        padding={15}
        style={{
          fontSize: 12,
          backgroundColor: "#f5f5f5",
          fontFamily: 'Jua, sans-serif',
          marginLeft: "55vw",
          width: "40vw",
          height: "80vh",
        }}
        />
    </>
  );
}

export default CodeTextarea;