import React, { useState } from 'react';
import { useDispatch, useSelector } from 'react-redux/es/exports';
import "./Ranking.css"
import {changeInfo} from "../../slices/userSlice"
import { useEffect } from 'react';

const Ranking = () => {

  const dispatch = useDispatch()
  const UserInfo = useSelector((state)=>{
    return state.user.userInfo
  })
  const rankInfo = useSelector((state)=>{
    return state.user.rankInfo
  })
  // 이름
  const [nickname, setNickname] = useState(UserInfo.nickname)
  const [showRankingInfo, setShowRankingInfo] = useState([0, 1, 2, 3, 4, 5, 6])
  const [showingCategory, setShowingCategory] = useState("total")
  const [showingRanking, setShowingRanking] = useState(false)
  const [characterUrl, setCharacterUrl] = useState("likeValueIcon")
  const [characterName, setCharacterName] = useState(UserInfo.nickname)
  const [characterMessage, setCharacterMessage] = useState("취준 화이팅!")
  // 언어 값
  const [language, setLanguage] = useState(()=> {
    if(UserInfo.language === "C++") {
      return "C"
    } else {return (UserInfo.language)} })

  useEffect(() => {
    setShowingRanking(rankInfo['csRank'])
  }, [])

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

    // 카테고리따라 랭킹 바꾸기
    switch(n) {
      case 0:
        setShowingRanking(rankInfo['csRank'])
        setCharacterUrl("likeValueIcon")
        setCharacterName(nickname)
        setCharacterMessage("취준 화이팅!")
        break
      case 1:
        setShowingRanking(rankInfo['csRank'])
        setCharacterUrl("seobomLikeIcon")
        setCharacterName("서봄")
        setCharacterMessage(`${rankInfo['csRank'][0].nickname} ♡ 서봄`)
        break
      case 2:
        setShowingRanking(rankInfo['algoRank'])
        setCharacterUrl("gaeulLikeIcon")
        setCharacterName("차가을")
        setCharacterMessage(`${rankInfo['algoRank'][0].nickname}..♡`)
        break
      case 3:
        setShowingRanking(rankInfo['backRank'])
        setCharacterUrl("yeoreumLikeIcon")
        setCharacterName("한여름")
        setCharacterMessage(`${rankInfo['backRank'][0].nickname}♡･ᴗ･♡`)
        break
      case 4:
        setShowingRanking(rankInfo['frontRank'])
        setCharacterUrl("geowolLikeIcon")
        setCharacterName("한겨울")
        setCharacterMessage(`${rankInfo['frontRank'][0].nickname}♡`)
        break
      default:
        setShowingRanking(rankInfo['langRank'])
        setCharacterUrl("likeValueIcon")
        setCharacterName(nickname)
        setCharacterMessage("취준 화이팅!")
        // setCharacterMessage(`GOAT ${rankInfo['langRank'][0].nickname}`)
        break
    }
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



          {
          showingRanking?
          <>

          {/* 카테고리 캐릭터 */}
          <div className='categoryCharacter'>
            <img src={showingRanking[0].profileImg} alt='1등프로필' className='vvipProfile'></img>
            <div className='blackShadow'></div>
            <img src={require(`../../asset/images/Profile/Ranking/${characterUrl}.png`)} alt='캐릭터 프로필' className='chracterProfile'></img>
            <div className='chracterName'>{characterName}</div>
            <div className='chracterMessage'>{characterMessage}</div>
          </div>
          {/* 랭킹 보여주는 부분 */}
          <div className='rankingArea'>
            
            {/* 내 랭킹 */}
            <div className='myRanking'>
              <div>
                <img src={UserInfo.profileImg} alt='1등프로필' className='rankerProfile'></img>
                <span className='rankerRank'>000등</span>
                <span className='rankerNickname'>{nickname}</span>
                <span className='rankerRate'>{showingCategory} 자율학습 % 달성</span>
              </div>
            </div>
            <hr className='horizon'/>

            <div>
              <div className='topTenRankingComp'>
                <img src={showingRanking[0].profileImg} alt='1등프로필' className='rankerProfile'></img>
                <span className='rankerRank' style={{color: 'gold'}}>1st</span>
                <span className='rankerNickname'>{showingRanking[0].nickname}</span>
                <span className='rankerRate'>{showingCategory} 자율학습 {showingRanking[0].progress}% 달성</span>
              </div>
              <hr className='horizon'/>
            </div>

            <div>
              <div className='topTenRankingComp'>
                <img src={showingRanking[1].profileImg} alt='1등프로필' className='rankerProfile'></img>
                <span className='rankerRank' style={{color: 'silver'}}>2nd</span>
                <span className='rankerNickname'>{showingRanking[1].nickname}</span>
                <span className='rankerRate'>{showingCategory} 자율학습 {showingRanking[1].progress}% 달성</span>
              </div>
              <hr className='horizon'/>
            </div>

            <div>
              <div className='topTenRankingComp'>
                <img src={showingRanking[2].profileImg} alt='1등프로필' className='rankerProfile'></img>
                <span className='rankerRank' style={{color: 'darkgoldenrod'}}>3rd</span>
                <span className='rankerNickname'>{showingRanking[2].nickname}</span>
                <span className='rankerRate'>{showingCategory} 자율학습 {showingRanking[2].progress}% 달성</span>
              </div>
              <hr className='horizon'/>
            </div>

            {/* 탑탠 랭킹 */}
            {showingRanking.slice(3, 10).map((info, idx) => (
              <div key={idx}>
                <div className='topTenRankingComp'>
                  <img src={showingRanking[idx+3].profileImg} alt='1등프로필' className='rankerProfile'></img>
                  <span className='rankerRank'>{idx+4}th</span>
                  <span className='rankerNickname'>{info.nickname}</span>
                  <span className='rankerRate'>{showingCategory}  자율학습 {info.progress}% 달성</span>
                </div>
                <hr className='horizon'/>
              </div>
            ))}
          </div>
            </>
            :null
          }



        </div>
      </div>
    </div>
  );
};

export default Ranking;
