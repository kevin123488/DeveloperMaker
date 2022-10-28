import React from 'react';
import "./Profile.css"
import RadicalChat from '../../components/Profile/RadicalChat';
import UserInfo from '../../components/Profile/UserInfo';

const Profile = () => {
  return (
    <div className='ProfileBack'>
      <UserInfo />
      <RadicalChat />
    </div>
  );
};

export default Profile;
