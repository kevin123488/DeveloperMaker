import React, { useState, useEffect, useRef } from "react";


const Typo = ({scriptText}) => {
    const index = useRef(0);
    const [currentText, setCurrentText] = useState('');
    
    useEffect(() => {
        // console.log(scriptText)
        index.current = 0;
        setCurrentText('');
    }, [scriptText])

    useEffect(() => {
        const timeoutId = setTimeout(() => {
            // console.log(scriptText.charAt(index.current))
            setCurrentText(currentText + scriptText.charAt(index.current))
            // console.log(index.current)
            // console.log(currentText)
            index.current += 1;
        }, 15)
        return () => {
            clearTimeout(timeoutId)
        }
    }, [currentText, scriptText])
    return (
        <>
        <div>{currentText}</div>
        </>
    )
}

export default Typo