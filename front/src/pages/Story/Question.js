import React, { } from "react";


const Question = ({scriptInfo, returnNextScript}) => {
    // const questionOptions = questionOptions
    // console.log(questionOptions)
    
    const choice = (n) => {
        returnNextScript(n)
    }
    
    return (
        <>
        <div onClick={choice.bind(null, 0)}>
        {/* <div */}
            {scriptInfo.questionOptions[0]}
        </div>
        {/* <div> */}
        <div onClick={choice.bind(null, 1)}>
            {scriptInfo.questionOptions[1]}
        </div>
        {/* <div> */}
        <div onClick={choice.bind(null, 2)}>
            {scriptInfo.questionOptions[2]}
        </div>
        {/* <div> */}
        <div onClick={choice.bind(null, 3)}>
            {scriptInfo.questionOptions[3]}
        </div>
        </>
    )
}

export default Question