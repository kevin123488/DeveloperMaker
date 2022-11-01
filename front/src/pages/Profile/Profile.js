import React, {useState, useEffect} from 'react';
import "./Profile.css"
import RadicalChart from '../../components/Profile/RadicalChart';
import UserInfo from '../../components/Profile/UserInfo';
import StoryAlbumChart from '../../components/Profile/StoryAlbumChart';
import StudyAlbumChart from '../../components/Profile/StudyAlbumChart';
import LikeChart from '../../components/Profile/LikeChart';
import { userGetMemory } from "../../slices/storySlice";
import { useDispatch, useSelector } from "react-redux";


const Profile = () => {
  const [likeSel, setLikeSel] = useState(1)
  const loadData = useSelector((state) => state.story.userStoryData)
  const dispatch = useDispatch()
  useEffect(() => {
    dispatch(userGetMemory())
  }, [dispatch]);
  return (
    <div className='ProfileBack'>
      <UserInfo />
      <div className='ProfileAlbumChart'>
        <StoryAlbumChart />
        <StudyAlbumChart />
        <RadicalChart />
      </div>
      {/* 데이터별 진행도 */}
      <div className="ProfileLikeChart">
        {[1,2,3].map((idx) => {return (<button key={`btn-${idx}`} onClick={()=>{setLikeSel(idx)}}>{idx}번</button>) })}
        {loadData.map((data,idx)=> {return (<LikeChart key={`LikeChart-${idx}`} data={data} show={likeSel === idx+1} />) })}
      </div>
    </div>
  );
};

export default Profile;
