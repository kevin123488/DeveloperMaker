import React, {useEffect, useState} from "react";
import "chart.js/auto"; // import 안하면 차트 오류남
import "../../pages/Profile/Profile.css"
import { PolarArea } from "react-chartjs-2";

const LikeChart = (props) =>{
  let show = props.show
  let data = props.data
  const [likeData, setLikeData] = useState({ 
      labels: ['서봄', '한여름', '차가을', '한겨울'],
      datasets: [{ label: `${data.slot}번 슬롯 저장데이터`,
        data: [data.likeSpring, data.likeSummer, data.likeAutumn, data.likeWinter],
        backgroundColor: ['rgb(255, 99, 132)', 'rgb(75, 192, 192)', 'rgb(255, 205, 86)', 'rgb(201, 203, 207)']
      }]
    })
  useEffect(()=>{
    setLikeData({ 
      labels: ['서봄', '한여름', '차가을', '한겨울'],
      datasets: [{ label: `${data.slot}번 슬롯 저장데이터`,
        data: [data.likeSpring, data.likeSummer, data.likeAutumn, data.likeWinter],
        backgroundColor: ['rgb(255, 99, 132)', 'rgb(75, 192, 192)', 'rgb(255, 205, 86)', 'rgb(201, 203, 207)']
      }]
    })
  }, [data])

  const config = {
    type: 'polarArea',
    data: likeData,
    options: {
      title: {
        display: true,
        text: `${data.slot}번 호감도`
      },
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  };

  if (show) {
    return (
      <div className="ProfileAlbumChartWidth">  
        <PolarArea data={likeData} options={config}  />
      </div>
    )
  }
}

export default LikeChart