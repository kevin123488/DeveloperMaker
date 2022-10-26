package com.ssafy.developermaker.domain.album.controller;

import com.ssafy.developermaker.domain.album.application.AlbumService;
import com.ssafy.developermaker.global.model.BaseResponseBody;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;


@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
@RequestMapping("/album")
@RequiredArgsConstructor
public class AlbumController {
    private final AlbumService albumService;

    @GetMapping
    @ApiOperation(value = "앨범 리스트 조회", notes = "앨범 리스트를 반환함.")
    public ResponseEntity<BaseResponseBody> getAlbum(@AuthenticationPrincipal String email){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", albumService.getAlbumList(email)));
    }

    @PostMapping("/{albumId}")
    @ApiOperation(value = "유저의 앨범 추가", notes = "앨범 추가 성공 여부를 반환함.")
    public ResponseEntity<BaseResponseBody> updateAlbum(@AuthenticationPrincipal String email, @PathVariable Long albumId){
        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success", albumService.resistUserAlbum(email, albumId)));
    }

}
