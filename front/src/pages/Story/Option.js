import React, { } from "react";
import styled from "styled-components";

const OptionPage = styled.div`
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 100vw;
  height: 100vh;
  z-index: 2;
`

const OptionBox = styled.div`
  position: absolute;
  width: 70vw;
  height: 50vh;
  background: white;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 3;
`;

const Option = ({scriptInfo, choiceNextScript}) => {
  // const questionOptions = questionOptions
  // console.log(questionOptions)
  
  const choice = (n) => {
      choiceNextScript(scriptInfo.option[n].nextScript)
  }

  var options = scriptInfo.option
    
  return (
    <>
    {/* <div onClick={choice.bind(null, 0)}>
        {scriptInfo.option[0].name}
    </div>
    <div onClick={choice.bind(null, 1)}>
        {scriptInfo.option[1].name}
    </div>
    <div onClick={choice.bind(null, 2)}>
        {scriptInfo.option[2].name}
    </div>
    <div onClick={choice.bind(null, 3)}>
        {scriptInfo.option[3].name}
    </div> */}
    <OptionPage>
      <OptionBox>
        { options.map(function(option, idx){
          return <div key={idx} onClick={choice.bind(null, idx)}>{option.name}</div>
        }) }
      </OptionBox>
    </OptionPage>
    </>
  )
}

export default Option