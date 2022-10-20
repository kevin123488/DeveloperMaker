import React, { useState, useEffect, useRef } from "react";


const Typo = ({scriptText}) => {
    const index = useRef(0);
    const [currentText, setCurrentText] = useState('');
    
    useEffect(() => {
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
        }, 50)
        return () => {
            clearTimeout(timeoutId)
        }
    }, [currentText, scriptText])
    return <p>{currentText}</p>
}

export default Typo