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
  const [highlight, setHighlight] = useState(prop.lang)
  
  // const [codeTypeToBack, setCodeTypeToBack] = useState(prop.lang);
  const solveAlgo = () => {
    let language = prop.lang
    if (prop.lang === 'C / C++') {
      language = 'cpp'
    }
    const solveInfo = {
      coteId: prop.algoInfo.coteId,
      answer: { language: language, code: code }
    }
    console.log(solveInfo)
    prop.submitAlgo(solveInfo)
  }

  const testAlgo = () => {
    let language = prop.lang
    if (prop.lang === 'C / C++') {
      language = 'cpp'
    }
    const solveInfo = { language: language, code: code }
    prop.submitTestAlgo(solveInfo)
  }

  useEffect(() => {
    console.log('선택한 언어', prop.lang)
  }, [prop.lang])

  useEffect(() => {
    if (prop.lang === 'java') {
      setCode(
        `import java.util.*;
import java.io.*;

class Solution
{
   public static void main(String args[]) throws Exception
   {
      Scanner sc = new Scanner(System.in);
      int T;
      T=sc.nextInt();
      for(int test_case = 1; test_case <= T; test_case++)
      {
      
        // 이곳에 당신의 코드를 작성해주세요

      }
   }
}`
      )
    } else if (prop.lang === 'C / C++') {
      setHighlight('C')
      setCode(
        `#include<iostream>

using namespace std;

int main(int argc, char** argv)
{
  int test_case;
  int T;
  cin>>T;
  for(test_case = 1; test_case <= T; ++test_case)
    {
      
      // 이곳에 당신의 코드를 작성해주세요

    }
  return 0;
}`
      )
    } else if (prop.lang === 'python') {
      setCode(
        `# 이곳에 당신의 코드를 작성해주세요`
      )
    } else if (prop.lang === 'javascript') {
      setCode(
        `// 이곳에 당신의 코드를 작성해주세요`
      )
    }
  }, [prop.lang])

  return (
    <>
      <CodeEditor
        value={code}
        language={highlight}
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
          height: "40vh",
          borderBottom: "1vw",
          overflow: "scroll",
        }}
        />
        <div className="algoRunBtn" onClick={testAlgo}>실행</div>
        <div className="algoSubmitBtn" onClick={solveAlgo}>제출</div>
    </>
  );
}

export default CodeTextarea;