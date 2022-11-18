import React, { useState } from 'react';
import { useDispatch, useSelector } from 'react-redux/es/exports';
import "../../pages/Profile/Profile.css"
import {changUserInfo} from "../../slices/userSlice"

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

  // 프로필 사진
  const [profileImg, setProfileImg] = useState(UserInfo.profileImg)
  const [profileFile, setProfileFile] = useState(null)
  const changeMode = () => {
    setMode(!mode)
  }
  // 수정 중 취소시 값 초기화
  const reset = () => {
    // 이름 원래로
    setNickname(UserInfo.nickname)
    // 언어 원래로 C++로 보인건 C로
    setLanguage(()=> {
      if(UserInfo.language === "C++") {
        return "C"
      } else {return (UserInfo.language)} })
    // 프로필 이미지 변경
    setProfileImg(UserInfo.profileImg)
  } 
  // 이름 언어 변경
  const onLanguageChange = (e) => {
    const { value } = e.target;
    setLanguage(value);
  }
  // 닉네임 변경
  const onNicknameChange = (e) => {
    // 공백 제거
    const input = e.target.value.replace(/(\s*)/g, "");
    setNickname(input);
  };
  // 이미지 변경
  const onProfileImgChange = (e) => {
    let reader = new FileReader();
    reader.onloadend = () => {
      const base64 = reader.result;
      if (base64) {
        setProfileImg(base64.toString());
      } else {
        setProfileImg(null);
      }
    };
    if (e.target.files[0]) {
      reader.readAsDataURL(e.target.files[0]);
      setProfileFile(e.target.files[0]);
    } else {
      setProfileFile(null);
    }
    // const image = URL.createObjectURL(e.target.files[0])
    // setProfileImg(image);
  };

  // dataUrl to Blob
  // function dataURItoBlob(dataURI) {
  //   var binary = atob(dataURI.split(',')[1]);
  //   var array = [];
  //   for (var i = 0; i < binary.length; i++) {
  //     array.push(binary.charCodeAt(i));
  //   }
  //   return new Blob([new Uint8Array(array)], { type: 'image/png' });
  // };

  // 변경 요청
  const putUserInfo = () => {
    const payload = {nickname: nickname, language: language, image: profileFile}
    dispatch(changUserInfo(payload))
    changeMode()
  }

  return (
    <div className='ProfileUserInfo'>
      <img className='ProfileLogoImg' src={require("../../asset/images/Profile/DeveloperMakerLogo.png")} alt="로고 이미지" />
      <img className='ProfileUserInfoImg' src={profileImg} alt="프로필 사진" /> 
      {!mode && <><input type='file' id="ProfileImgInput" accept="image/*" onChange={onProfileImgChange} style={{display: 'none'}}/>
         <p href="#" onClick={()=>{document.getElementById('ProfileImgInput').click();}} className='ProfileUserInputTag'>첨부 파일 찾기</p></>}
      {mode? <p className='ProfileUserInfoData'>{UserInfo.nickname}</p> : <input className='ProfileUserInput' onInput={onNicknameChange}
      type="text" value={nickname} maxLength="10" /> }
      {mode? <p className='ProfileUserInfoData'>{UserInfo.language}</p> :
        <select defaultValue={language} key={language} onChange={onLanguageChange} className='ProfileUserInput'>
        {LanguageOptions.map((language, index) => (
          <option  key={`language-${index}`} value={language.value} style={{backgroundColor: "", color: "black"}}>
            {language.print}
          </option>
        ))}
      </select> }
      {/* <p className='ProfileUserInfoData'>{UserInfo.email.slice(0, UserInfo.email.length - 6)}</p> */}
      <button className='btn ProfileUserInfoBtn' onClick={()=>{
        if (mode) {changeMode()}  else {reset(); changeMode(); }}}>{mode? "정보수정": "취소"}</button>
      {!mode && <button className='btn ProfileUserInfoBtn' onClick={()=> {putUserInfo()}} >수정</button>}
    </div>
  );
};

export default UserInfo;
