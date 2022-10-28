import React, { useState } from 'react';
import { useSelector } from 'react-redux/es/exports';
import "../../pages/Profile/Profile.css"

const UserInfo = () => {
  const UserInfo = useSelector((state)=>{
    return state.user.userInfo
  })

  const [mode, setMode] = useState(true)

  const changeMode = () => {
    setMode(!mode)
  }
  return (
    <div className='ProfileUserInfo'>
      <div className='ProfileUserInfoLine' >
        <p className='ProfileUserInfoTag'>이름: </p>
        <p className='ProfileUserInfoData'>{UserInfo.nickname}</p>
      </div>
      <div className='ProfileUserInfoLine'>
        <p className='ProfileUserInfoTag'>언어: </p>
        <p className='ProfileUserInfoData'>{UserInfo.language}</p>
      </div>
      <button onClick={changeMode}>수정</button>
    </div>
  );
};

export default UserInfo;
