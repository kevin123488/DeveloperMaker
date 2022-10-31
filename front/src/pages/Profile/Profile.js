import React from 'react';
import "./Profile.css"
import RadicalChart from '../../components/Profile/RadicalChart';
import UserInfo from '../../components/Profile/UserInfo';
import StoryAlbumChart from '../../components/Profile/StoryAlbumChart';
import StudyAlbumChart from '../../components/Profile/StudyAlbumChart';

const Profile = () => {
  return (
    <div className='ProfileBack'>
      <UserInfo />
      <RadicalChart />
      <div className='ProfileAlbumChart'>
        <StoryAlbumChart />
        <StudyAlbumChart />
      </div>
    </div>
  );
};

export default Profile;
