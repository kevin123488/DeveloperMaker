import React, { useState } from 'react';
import { useDispatch, useSelector } from 'react-redux/es/exports';
import "./Ranking.css"
import {changeInfo} from "../../slices/userSlice"

const Ranking = () => {

  const dispatch = useDispatch()
  const UserInfo = useSelector((state)=>{
    return state.user.userInfo
  })

  // 이름
  const [nickname, setNickname] = useState(UserInfo.nickname)
  const [showRankingInfo, setShowRankingInfo] = useState([0, 1, 2, 3, 4, 5, 6])
  const [showingCategory, setShowingCategory] = useState("total")

  // 언어 값
  const [language, setLanguage] = useState(()=> {
    if(UserInfo.language === "C++") {
      return "C"
    } else {return (UserInfo.language)} })


  // 카테고리 바뀌면 실행됨
  const changeCategory = (n) => {
    // 누른 버튼 번호 들고와서 그거만 검은색으로 바꿔줌
    const categories = document.querySelectorAll('.categoryBtn')
    categories.forEach((category, idx) => {
      if (idx === n) {
        category.style.borderColor = "black"  
        setShowingCategory(category.innerText)
      } else {
        category.style.borderColor = "white"  
      }
    })

    // 스크롤 제일위로
    const rankingArea = document.querySelector('.rankingArea')
    rankingArea.scrollTop = 0

    // 카테고리 종류 바꾸기
  }

  return (
    <div className='rankingBackground'>
      <div className='rankingFrame'>
        <div className='rankingContainer'>
          <div className='springIcon'></div>
          <div className='fallIcon'></div>
          <div className='summerIcon'></div>
          <div className='winterIcon'></div>
          <div className='heroIcon'></div>

          <div onClick={changeCategory.bind(null, 0)} className='categoryBtn' style={{color: "" ,borderColor: "black"}}>total</div>
          <div onClick={changeCategory.bind(null, 1)} className='categoryBtn' style={{color: "gold"}}>CS</div>
          <div onClick={changeCategory.bind(null, 2)} className='categoryBtn' style={{color: "brown"}}>알고리즘</div>
          <div onClick={changeCategory.bind(null, 3)} className='categoryBtn' style={{color: "skyblue"}}>프론트앤드</div>
          <div onClick={changeCategory.bind(null, 4)} className='categoryBtn' style={{color: "silver"}}>백앤드</div>
          <div onClick={changeCategory.bind(null, 5)} className='categoryBtn' style={{color: "red"}}>언어</div>
          <hr className='categoryHorizon'/>

          {/* 카테고리 캐릭터 */}
          <div className='categoryCharacter'>
            캐릭터 사진
            <br />
            최고야 {'{1등 닉네임}'}!
          </div>

          {/* 랭킹 보여주는 부분 */}
          <div className='rankingArea'>
            
            {/* 내 랭킹 */}
            <div className='myRanking'>
              <div>
                <div className='rankerProfile'></div>
                <span className='rankerRank'>000등</span>
                <span className='rankerNickname'>{nickname}zzzzzz</span>
                <span className='rankerRate'>{showingCategory} 자율학습 100% 달성</span>
              </div>
            </div>
            <hr className='horizon'/>

            <div>
              <div className='topTenRankingComp'>
                <div className='rankerProfile'></div>
                <span className='rankerRank' style={{color: 'gold'}}>1st</span>
                <span className='rankerNickname'>{nickname}zzzzzz</span>
                <span className='rankerRate'>{showingCategory}  자율학습 100% 달성</span>
              </div>
              <hr className='horizon'/>
            </div>

            <div>
              <div className='topTenRankingComp'>
                <div className='rankerProfile'></div>
                <span className='rankerRank' style={{color: 'silver'}}>2nd</span>
                <span className='rankerNickname'>{nickname}zzzzzz</span>
                <span className='rankerRate'>{showingCategory}  자율학습 100% 달성</span>
              </div>
              <hr className='horizon'/>
            </div>

            <div>
              <div className='topTenRankingComp'>
                <div className='rankerProfile'></div>
                <span className='rankerRank' style={{color: 'darkgoldenrod'}}>3rd</span>
                <span className='rankerNickname'>{nickname}zzzzzz</span>
                <span className='rankerRate'>{showingCategory}  자율학습 100% 달성</span>
              </div>
              <hr className='horizon'/>
            </div>

            {/* 탑탠 랭킹 */}
            {showRankingInfo.map((info, idx) => (
              <div key={idx}>
                <div className='topTenRankingComp'>
                  <div className='rankerProfile'></div>
                  <span className='rankerRank'>{idx+4}th</span>
                  <span className='rankerNickname'>{nickname}zzzzzz</span>
                  <span className='rankerRate'>{showingCategory}  자율학습 100% 달성</span>
                </div>
                <hr className='horizon'/>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
};

export default Ranking;
