import React, { useEffect } from "react";
import Modal from 'react-bootstrap/Modal';
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";


const Result = (props) => {
  const navigate = useNavigate()
  const show = props.show
  // 로딩 여부(채점 과정 중인지 여부)
  const loding = useSelector((state)=> {
    return state.interview.isLoding
  })
  // 결과창
  const result = useSelector((state)=>{
    return state.interview.result
  })

  // 로딩x(3번째 면접 결과 받음) + 4단계(4단계가 된 경우- 3단계가 끝이남)
  useEffect(()=>{
    if (!loding && show) {
      console.log(1, result['1'])
      console.log('============================================')
      console.log(2, result['2'])
      console.log('============================================')
      console.log(3, result['3'])
    }
  },[loding])
  console.log()
  return(
    <Modal show={show}>
      <div className="InterviewModalBack">
        <h1>면접 결과창</h1>
        {loding && <h1>면접 결과 계산 중</h1>}
        <p>결과확인 창</p>
        <button onClick={()=>{navigate('/selfstudy')}}>확인</button>
      </div>
    </Modal>
  )
}

export default Result;