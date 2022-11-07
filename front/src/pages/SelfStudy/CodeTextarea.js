import React, {useState} from "react";
import CodeEditor from '@uiw/react-textarea-code-editor';
import { getCodingTestList, postCodingTestSolve } from "../../slices/selfstudySlice";
import { useSelector, useDispatch } from 'react-redux';
import { useEffect } from "react";

const CodeTextarea = (prop) => {
  const dispatch = useDispatch();
  const [code, setCode] = useState(
    `### 여기에 코드를 작성하세요 ###`
  );
  const [textareaLang, setTextareaLang] = useState(prop.lang);
  const solveAlgo = () => {
    console.log(prop.algoInfo.coteId)
    const solveInfo = {
      coteId: prop.algoInfo.coteId,
      answer: { language: prop.lang, code: code }
    }
    console.log(solveInfo)
    prop.submitAlgo(solveInfo)
  }

  useEffect(() => {
    if (prop.lang === 'c++') {
      setTextareaLang('C')
    } 
  }, [])


  return (
    <>
      <CodeEditor
        value={code}
        language={textareaLang}
        placeholder="코드를 작성해주세요."
        onChange={(evn) => 
          {
            setCode(evn.target.value)
            // console.log(evn.target.value)
          }
        }
        className="codeArea"
        padding={15}
        style={{
          fontSize: 12,
          backgroundColor: "#f5f5f5",
          fontFamily: 'Jua, sans-serif',
          width: "30vw",
          height: "50vh",
          overflow: "scroll",
        }}
        />
        <div className="algoSubmitBtn" onClick={solveAlgo}>제출</div>
    </>
  );
}

export default CodeTextarea;