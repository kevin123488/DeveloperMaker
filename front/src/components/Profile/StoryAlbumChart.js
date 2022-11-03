import React from "react";
import "chart.js/auto"; // import 안하면 차트 오류남
import { Doughnut } from "react-chartjs-2";
import "../../pages/Profile/Profile.css"

const StoryAlbumChart = () =>{
  const progress = 30
  // 스토리 앨범 변수 받아오기
  // const progress = useSelector((state)=>{
  //   return state.album.albumProgress
  // })
  const data = {
    datasets: [
      {
        data: [progress, 100-progress],
        // [data[1], data[0]]
        backgroundColor: ["#003B95", "#F2F7FF"],
      },
    ],
  };
  const options = {
    cutout: 35, //  구멍 크기
    borderColor: 'white',
    // 폰트 컬러
    color: "#003B95",
    // 범례
    // legend: {},
    // responsive: true,
  };

  return(
    <div className="ProfileChart">
      <p className="ProfileStoryTitle">스토리 앨범 진행도({progress}%)</p>
      <Doughnut data={data} options={options} />
    </div>
  )
}

export default StoryAlbumChart