package com.ssafy.developermaker.domain.album.controller;

import com.ssafy.developermaker.domain.album.application.AlbumService;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;


@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
@RequestMapping("/album")
@RequiredArgsConstructor
public class albumController {
    private final AlbumService albumService;

    @GetMapping
    public ResponseEntity<BaseResponseBody> getAlbum(@AuthenticationPrincipal String email){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", albumService.getAlbumList(email)));
    }

    @PostMapping
    public ResponseEntity<BaseResponseBody> updateAlbum(@AuthenticationPrincipal String email, Long albumId){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", null));
    }

}
