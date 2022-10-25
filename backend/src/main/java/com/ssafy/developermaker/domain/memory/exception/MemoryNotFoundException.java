package com.ssafy.developermaker.domain.memory.exception;

public class MemoryNotFoundException extends RuntimeException {
    public MemoryNotFoundException() {
    }

    public MemoryNotFoundException(String message) {
        super(message);
    }

    public MemoryNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public MemoryNotFoundException(Throwable cause) {
        super(cause);
    }
}
