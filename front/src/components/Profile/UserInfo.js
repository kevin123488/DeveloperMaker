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
  const [language, setLanguage] = useState(()=> {
    if(UserInfo.language === "C++") {
      return "C"
    } else {return (UserInfo.language)} })
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
  // 수정 중 취소시 값 초기화
  const reset = () => {
    setNickname(UserInfo.nickname)
    setLanguage(()=> {
      if(UserInfo.language === "C++") {
        return "C"
      } else {return (UserInfo.language)} })
  }
  // 이름 언어 변경
  const onLanguageChange = (e) => {
    const { value } = e.target;
    setLanguage(value);
  }
  // 닉네임 변경
  const onNicknameChange = (e) => {
    const input = e.target.value.trim();
    setNickname(input);
  };
  // 변경 요청
  const putUserInfo = (nickname, language) => {
    const payload = {nickname: nickname, language: language}
    dispatch(changeInfo(payload))
    changeMode()
  }

  return (
    <div className='ProfileUserInfo'>
      <img className='ProfileLogoImg' src={require("../../asset/images/Profile/DeveloperMakerLogo.png")} alt="사진" />
      <img className='ProfileUserInfoImg' src={require("../../asset/images/Profile/Profile.png")} alt="사진" />
      {mode? <p className='ProfileUserInfoData'>{UserInfo.nickname}</p> : <input className='ProfileUserInput' onInput={onNicknameChange}
      type="text" value={nickname.trim()} maxLength="10" /> }
      {mode? <p className='ProfileUserInfoData'>{UserInfo.language}</p> :
        <select defaultValue={language} key={language} onChange={onLanguageChange} className='ProfileUserInput'>
        {LanguageOptions.map((language, index) => (
          <option key={`language-${index}`} value={language.value}>
            {language.print}
          </option>
        ))}
      </select> }
      <button className='btn btn-danger ProfileUserInfoBtn' onClick={()=>{
        if (mode) {changeMode()}  else {reset(); changeMode(); }}}>{mode? "정보수정": "취소"}</button>
      {!mode && <button className='btn btn-danger ProfileUserInfoBtn' onClick={()=> {putUserInfo(nickname, language)}} >수정</button>}
    </div>
  );
};

export default UserInfo;
