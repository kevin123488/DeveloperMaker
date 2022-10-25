package com.ssafy.developermaker.domain.progress.exception;

public class ProgressNotFoundException extends RuntimeException {
    public ProgressNotFoundException() {
    }

    public ProgressNotFoundException(String message) {
        super(message);
    }

    public ProgressNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public ProgressNotFoundException(Throwable cause) {
        super(cause);
    }
}

