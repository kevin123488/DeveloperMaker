import React, { useState } from 'react';
import { useDispatch, useSelector } from 'react-redux/es/exports';
import "../../pages/Profile/Profile.css"
import {changeInfo} from "../../slices/userSlice"

const UserInfo = () => {
  const dispatch = useDispatch()
  const UserInfo = useSelector((state)=>{
    return state.user.userInfo
  })
  // 수정 모드 여부
  const [mode, setMode] = useState(true)
  // 이름
  const [nickname, setNickname] = useState(UserInfo.nickname)
  // 언어 값
  const [language, setLanguage] = useState(UserInfo.language)
  // 언어
  const LanguageOptions = [
    { value: "JAVA", print: "Java" },
    { value: "PYTHON", print: "Python" },
    { value: "C", print: "C++" },
    { value: "JS", print: "JavaScript" },
  ];
  
  const changeMode = () => {
    setMode(!mode)
  }
  // 이름 언어 변경
  const onLanguageChange = (e) => {
    const { value } = e.target;
    setLanguage(value);
  }
  // 닉네임 변경
  const onNicknameChange = (e) => {
    const input = e.target.value;
    setNickname(input);
  };
  // 변경 요청
  const putUserInfo = (nickname, language) => {
    const payload = {nickname: nickname, language: language}
    console.log("변경 요청 내 payload", payload)
    dispatch(changeInfo(payload))
  }

  return (
    <div className='ProfileUserInfo'>
      <img className='ProfileUserInfoImg' src={require("../../asset/images/Profile/Profile.png")} alt="사진" />
      <div>
        <div className='ProfileUserInfoLine' >
          <p className='ProfileUserInfoTag'>이름: </p>
          {mode? <p className='ProfileUserInfoData'>{UserInfo.nickname}</p> : <input className='ProfileUserInfoData' onInput={onNicknameChange} type="text" value={nickname} /> }
        </div>
        <div className='ProfileUserInfoLine'>
          <p className='ProfileUserInfoTag'>언어: </p>
          {mode? <p className='ProfileUserInfoData'>{UserInfo.language}</p> :
            <select value={language} onChange={onLanguageChange} className='ProfileUserInfoData'>
            {LanguageOptions.map((language, index) => (
              <option key={`language-${index}`} value={language.value}>
                {language.print}
              </option>
            ))}
          </select> }
        </div>
        <div className='ProfileUserInfoLine'>
          {!mode && <button className='ProfileUserInfoBtn' onClick={()=> {putUserInfo(nickname, language)}} >변경</button>}
          <button className='ProfileUserInfoBtn' onClick={changeMode}>{mode? "수정": "취소"}</button>
        </div>
      </div>
    </div>
  );
};

export default UserInfo;
