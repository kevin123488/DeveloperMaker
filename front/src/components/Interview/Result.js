import React, {useState} from "react";
import Modal from 'react-bootstrap/Modal';
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import FailContent from "../../asset/images/Interview/Result/FailContent.png"
import SuccessImg from "../../asset/images/Interview/Result/SuccessImg.png"
import OkBtn from "../../asset/images/Interview/Result/OkBtn.png"
// import ResultNoImage from "../../asset/images/Interview/Result/ResultNoImage.png"
// import { getAlbumCheck, putAlbumList } from "../../slices/albumSlice";


const Result = (props) => {
  // const dispatch = useDispatch()
  const navigate = useNavigate()
  // 해당 컴포넌트가 보일 지 확인
  const show = props.show
  // 스토리에서 온 건지 확인
  const story = props.story
  // 찍은 이미지 파일
  // const image = props.image
  
  const [detail, setDetail] = useState(false)
  // 로딩 여부(채점 과정 중인지 여부)
  // const loding = useSelector((state)=> {
  //   return state.interview.isLoding
  // })
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

  // 감정명
  const feelName = ['화남', '경멸', '역겨움', '공포', '행복', '무표정', '슬픔', '놀람']

  return(
    <Modal show={show}>
      <div className="InterviewModalBack">
        <p className="InterviewCheckTitle">면접 결과</p>
        <img className={isPass?"interviewResultSuccessImg" :"interviewResultImg"} src={isPass? SuccessImg : FailContent} alt="SuccessImg" />
        <p className="interviewResultDetailBtn" onClick={()=> {setDetail(!detail)}}>면접 세부 결과 확인 {!detail? '▼' : '▲'}</p>
        {detail && [1, 2, 3].map((num)=> { return <div key={`result-${num}`}>
          <hr />
          <p className="InterviewResultNum">{num}번 답변 결과:  <span className="InterviewResultSpan">{result[num-1].pass ? "성공" : "실패"}({parseInt(result[num-1].totalScore)}점)</span></p>
          <div className="InterviewResultDetail">
            <p className="InterviewResultTheme">표정분석 결과 (<span className="InterviewResultSpan">{parseInt(result[num-1].imageScore)}점</span>)</p>
            {/* <img className="InterviewResultCapImages" src={image[num] ? image[num] : ResultNoImage} alt={`CapImg-${num}`} /> */}
            {result[num-1].imageScore ? <div className="InterviewFeelContainer">
              {['anger', 'contempt', 'disgust', 'fear', 'happiness', 'neutral', 'sadness', 'surprise'].map((feel,idx)=> {
                return <div className="InterviewFeelLine" key={`feel-${idx}`}>
                  <p className="InterviewFeelName">{feelName[idx]}</p>
                  <p className="InterviewFeelPoints">{result[num-1].imageAnalyzeResult[feel]}</p>
                </div>
              })}
            </div> : <p className="InterviewResultNoCapImg">표정인식에 실패했습니다.</p>}
            <div>
              <p className="InterviewResultTheme">답변분석 결과 (<span className="InterviewResultSpan">{parseInt(result[num-1].answerScore)}점</span>)</p>
              <p className="InterviewKeywordLabel">인정 키워드(<span className="InterviewResultSpan">{result[num-1].answerKeyword.length}/{result[num-1].demandKeywordCnt}</span>): 
              {result[num-1].answerKeyword.map((word, idx)=> {return <span className="InterviewResultKeyword" key={`word-${idx}`}>{word}</span>})}</p>
            </div>
          </div>
        </div>})}
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