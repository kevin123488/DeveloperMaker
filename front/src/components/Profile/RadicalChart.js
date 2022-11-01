import React, {useEffect} from 'react';
import { useDispatch, useSelector } from 'react-redux/es/exports';
import "chart.js/auto"; // import 안하면 차트 오류남
import { Radar } from "react-chartjs-2"; // 차트종류
import "../../pages/Profile/Profile.css"
import { getProgress } from '../../slices/userSlice';

const RadicalChart = () => {
  const dispatch = useDispatch()
  const progress = useSelector((state)=>{
    return state.user.userInfo.progressDto
  })
  // 자율학습 진행도
  const data = {
    labels: [
      'CS(%)',
      'Algorithm(%)',
      'Front(%)',
      'Back(%)',
      'Language(%)',
    ],
    // DB
    datasets: [{
      label: "자율학습 진행도",
      data: [progress.cs, progress.algo, progress.front, progress.back, progress.language],
      fill: true,
      backgroundColor: 'rgba(255, 99, 132, 0.2)',
      borderColor: 'rgb(255, 99, 132)',
      pointBackgroundColor: 'rgb(255, 99, 132)',
      pointBorderColor: '#fff',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgb(255, 99, 132)'
    }]
  };
  // 옵션들
  const config = {
    type: 'radar',
    data: data,
    // 옵션
    options: {
      elements: {
        line: {
          borderWidth: 2
        }
      }
    },

    // 효과
    animation: {
      animateScale: true,
    },
    // 척도
    scales: {
      r: {
        max: 100,
        min: -20,
        ticks: {
          stepSize: 20
        }
      }
    },
  }
  // 유저 DTO 업데이트
  useEffect(()=> {
    dispatch(getProgress())
  },[])

  return (
    <div className='ProfileRadarChart'>
      <Radar data={data} options={config} />    
    </div> 
  );
};

export default RadicalChart;
