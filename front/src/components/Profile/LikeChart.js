import React, {useEffect, useState} from "react";
import "chart.js/auto"; // import 안하면 차트 오류남
import "../../pages/Profile/Profile.css"
import { Bar } from "react-chartjs-2";
import { defaults } from 'chart.js';

const LikeChart = (props) =>{
  let show = props.show
  let data = props.data
  const [likeData, setLikeData] = useState({ 
      labels: ['서봄', '한여름', '차가을', '한겨울'],
      datasets: [{ label: `${data.slot}번 슬롯 호감도`,
        data: [data.likeSpring, data.likeSummer, data.likeAutumn, data.likeWinter],
        backgroundColor: ['rgb(255, 99, 132)', 'rgb(75, 192, 192)', 'rgb(255, 205, 86)', 'rgb(201, 203, 207)']
      }]
    })
  useEffect(()=>{
    // console.log(Bar.defaults)
    // Bar.defaults.font.family = "'Jua', sans-serif"
    defaults.font.family = "'Jua', sans-serif"
    defaults.font.size = 16
    setLikeData({ 
      labels: ['서봄', '한여름', '차가을', '한겨울'],
      datasets: [{
        data: [data.likeSpring, data.likeSummer, data.likeAutumn, data.likeWinter],
        backgroundColor: ['gold', 'white', 'brown', 'white']
      }]
    })
  }, [data])

  const config = {
    type: 'Bar',
    data: likeData,
    // 라벨 지우기
    plugins: {
      legend: {
        labels: {
          font: {
            size: 14,
            family: "'Jua', sans-serif",
          }
        },
        display: false
      }
    },
    scales: {
      x: {
        grid: {
          display: false,
        }
      },
      yAxes: {
        max: 100,
        min: 0,
        ticks: {
          stepSize: 20,
          fontSize: 500,
        },
        grid: {
          display: false,
        }
      }
    },
    maintainAspectRatio: false,
  };
  if (show) {
    if (data.chapter === 1 && data.num === 0) {
      return(
        <div className="ProfileLikeChart">
          <p className="ProfileLikeNoData">{data.slot}번 슬롯의 저장 정보가 없습니다.</p>
        </div>
      )
    }
    else {
      return (
        <div className="ProfileLikeChart">
          <p className="ProfileLikeTitle">{data.slot}번 슬롯 호감도</p>
          <div className="ProfileLikeChartsize">
            <Bar data={likeData} options={config} className="Bar" />
          </div>  
        </div>
      )
    }
  }
}

export default LikeChart