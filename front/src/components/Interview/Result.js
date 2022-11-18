import React from "react";
import Modal from 'react-bootstrap/Modal';
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import FailContent from "../../asset/images/Interview/Result/FailContent.png"
import SuccessImg from "../../asset/images/Interview/Result/SuccessImg.png"
import OkBtn from "../../asset/images/Interview/Result/OkBtn.png"
// import { getAlbumCheck, putAlbumList } from "../../slices/albumSlice";


const Result = (props) => {
  // const dispatch = useDispatch()
  const navigate = useNavigate()
  // 해당 컴포넌트가 보일 지 확인
  const show = props.show
  // 스토리에서 온 건지 확인
  const story = props.story
  // 획득할 앨범 번호 정리
  // const albumNum = {spring : 5, total: 10, fall: 15, winter: 20 }
  // 로딩 여부(채점 과정 중인지 여부)
  const loding = useSelector((state)=> {
    return state.interview.isLoding
  })
  // 결과창
  const result = useSelector((state)=>{
    return state.interview.result
  })
  const isPass = useSelector((state)=>{
    // 누적값의 합이 180 이상 이거나
    return ((state.interview.result.reduce((acc, element) =>{
      return acc + element.totalScore
    },0) >= 180) &&
    // 2회 이상 통과한 경우(두 질문에서 60점 이상)
    (state.interview.result.reduce((acc, element) => {
      if (element.pass) {
        return acc + 1
      } else {
        return acc
      }
    },0 ) > 1))
  })

  // 로딩x(3번째 면접 결과 받음) + 4단계(4단계가 된 경우- 3단계가 끝이남)
  // useEffect(()=>{
  //   if (!loding && show) {
  //     console.log(1, result[0])
  //     console.log('============================================')
  //     console.log(2, result[1])
  //     console.log('============================================')
  //     console.log(3, result[2])
  //     console.log('============================================')
  //     console.log('story', story)
  //   }
  // },[loding])
  
  // 앨범 뽑기 함수
  // const putAlbum =  async(albumId) => {
  //   const response = await dispatch(getAlbumCheck(albumId))
  //   // 중복이면 true이므로 false일 때 실행
  //   if (!response.payload) {
  //     dispatch(putAlbumList(albumId))
  //   }
  // }

  return(
    <Modal show={show}>
      <div className="InterviewModalBack">
        <p className="InterviewCheckTitle" >면접 결과창</p>
        {loding ? <h1>면접 결과 계산 중</h1> :
          <img className="interviewResultImg" src={isPass? SuccessImg : FailContent} alt="SuccessImg" />
          // <img className="interviewResultImg" src={FailContent} alt="FailContent" />
        }
        <img src={OkBtn} alt="okImg" className="interviewResult" onClick={()=>{
          if (story) {
            navigate("/Game")
            // putAlbum(albumNum[story])   
          } else {
            navigate('/selfstudy')
          }
        }} />
      </div>
    </Modal>
  )
}

export default Result;