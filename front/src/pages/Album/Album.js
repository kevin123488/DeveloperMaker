import React from "react";
import "./Album.css";

const AlbumData =[
  {id: 1, url: '../asset/images/Album/변환1.png', title: "Chapter1", content: 'wow' },
  {id: 2, url: '../asset/images/Album/변환2.png', title: "Chapter2", content: 'good' },
  {id: 3, url: '../asset/images/Album/변환3.png', title: "Chapter3", content: 'oh' },
  {id: 4, url: '../asset/images/Album/변환4.png', title: "Chapter4", content: 'yes' },
  {id: 5, url: '../asset/images/Album/변환5.png', title: "Chapter5", content: 'vamos' },
  {id: 6, url: '../asset/images/Album/변환6.png', title: "Chapter6", content: 'olleh' },
]
  const AlbumList = AlbumData.map((album)=>{
      return(
        <div className="albumCard" key={album.id}>
          <img className="albumImg" src={album.url} alt="앨범이미지" />
          <p className="albumTitle">{album.title}</p>
          <p>{album.content}</p>
        </div>
      )
  })
  return (
    {AlbumList}
  );


export default Album;
