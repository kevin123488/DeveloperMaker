import React, { } from "react";
import styled from "styled-components";
import "./Question.css";

const QuestionPage = styled.div`
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 100vw;
	height: 100vh;
	z-index: 2;
`;

const QuestionBox = styled.div`
	position: absolute;
	width: 70vw;
	top: 40%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 3;
	text-align: center;
`;

const Question = ({scriptInfo, returnNextScript}) => {
	// const questionOptions = questionOptions
	// console.log(questionOptions)
	
	const choice = (n) => {
		returnNextScript(n)
	}
    
	return (
		<>
		<QuestionPage>
			<QuestionBox>
				{ scriptInfo.questionOptions.map(function(question, idx){
					return <div className="optionSelector" key={idx} onClick={choice.bind(null, idx)}>{question}</div>
				}) }
			</QuestionBox>
		</QuestionPage>
		{/* <div onClick={choice.bind(null, 0)}>
			{scriptInfo.questionOptions[0]}
		</div>
		<div onClick={choice.bind(null, 1)}>
			{scriptInfo.questionOptions[1]}
		</div>
		<div onClick={choice.bind(null, 2)}>
			{scriptInfo.questionOptions[2]}
		</div>
		<div onClick={choice.bind(null, 3)}>
			{scriptInfo.questionOptions[3]}
		</div> */}
		</>
	)
}

export default Question