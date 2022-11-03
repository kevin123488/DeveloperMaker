package com.ssafy.developermaker.domain.quiz.exception;

public class QuizNotFoundException extends RuntimeException {
    public QuizNotFoundException() {
    }

    public QuizNotFoundException(String message) {
        super(message);
    }

    public QuizNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public QuizNotFoundException(Throwable cause) {
        super(cause);
    }
}
