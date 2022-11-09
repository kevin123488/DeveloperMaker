import React, {useState, useEffect} from 'react';
import "./Profile.css"
import RadicalChart from '../../components/Profile/RadicalChart';
import UserInfo from '../../components/Profile/UserInfo';
import StoryAlbumChart from '../../components/Profile/StoryAlbumChart';
import StudyAlbumChart from '../../components/Profile/StudyAlbumChart';
import LikeChart from '../../components/Profile/LikeChart';
import { userGetMemory } from "../../slices/storySlice";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { getAlbumProgress, getProgress } from '../../slices/userSlice';
import MainImg from "../Game/gohomeIcon.png"


const Profile = () => {
  const navigate = useNavigate()
  const [likeSel, setLikeSel] = useState(1)
  const loadData = useSelector((state) => state.story.userStoryData)
  const dispatch = useDispatch()
  useEffect(() => {
    dispatch(userGetMemory())
    dispatch(getAlbumProgress())
    dispatch(getProgress())
  }, [dispatch]);
  function goMain() {
    navigate('/')
  }
  return (
    <div className='ProfileBack'>
      <UserInfo />
      <div className='ProfileProgressChart'>
        <StoryAlbumChart />
        <StudyAlbumChart />
        <RadicalChart />
      </div>
      {/* 데이터별 진행도 */}
      <div className="ProfileLikeChartBack">
        {[1,2,3].map((idx) => {return (<span className={'ProfileLikeBtn' + (likeSel === idx ? " ProfileLikeBtnSel" : "" )} key={`btn-${idx}`} onClick={()=>{setLikeSel(idx)}}>{idx}번</span>) })}
        {loadData.map((data,idx)=> {return (<LikeChart key={`LikeChart-${idx}`} data={data} show={likeSel === idx+1} />) })}
      </div>
      <img src={MainImg} alt="MainBtn" className='ProfileMainBtn' onClick={goMain} />
    </div>
  );
};

export default Profile;
