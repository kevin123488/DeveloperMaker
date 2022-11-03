package com.ssafy.developermaker.domain.album.exception;

public class AlbumNotFoundException extends RuntimeException {
    public AlbumNotFoundException() {
    }

    public AlbumNotFoundException(String message) {
        super(message);
    }

    public AlbumNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public AlbumNotFoundException(Throwable cause) {
        super(cause);
    }
}
