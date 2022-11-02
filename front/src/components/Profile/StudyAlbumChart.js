import React from "react";
import "chart.js/auto"; // import 안하면 차트 오류남
import { Doughnut } from "react-chartjs-2";
import "../../pages/Profile/Profile.css"

const StudyAlbumChart = () =>{
  const progress = 70
  const data = {
    datasets: [
      {
        label: "자율학습 앨범 진행도",
        data: [progress, 100-progress],
        // [data[0], data[1]]
        backgroundColor: ["#d40000", "#F2F7FF"],
      },
    ],
  };
  // 이벤트 초기화
  const options = {
    events: [],
    cutout: 35, //  구멍 크기
    // responsive: true,
    plugins: {
      legend: {
        display: false,
      },
      title: {
        display: true,
        text: '자율학습 앨범 진행도'
      },
    },
  };

  return(
    <div className="ProfileChart">
      <Doughnut data={data} options={options} />
    </div>
  )
}

export default StudyAlbumChart