import React, { } from "react";


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
        { options.map(function(option, idx){
            return <div key={idx} onClick={choice.bind(null, idx)}>{option.name}</div>
        }) }
        </>
    )
}

export default Option