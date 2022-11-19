package com.ssafy.developermaker.domain.progress.entity;

import com.ssafy.developermaker.domain.user.entity.User;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@EntityListeners(AuditingEntityListener.class)
public class Progress {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long progressId;

    @Column(nullable = false)
    @ApiModelProperty(value="CS 진행도", required = true)
    private int cs = 0;

    @Column(nullable = false)
    @ApiModelProperty(value="알고리즘 진행도", required = true)
    private int algorithm = 0;

    @Column(nullable = false)
    @ApiModelProperty(value="백엔드 진행도", required = true)
    private int backend = 0;

    @Column(nullable = false)
    @ApiModelProperty(value="프론트엔드 진행도", required = true)
    private int frontend = 0;

    @Column(nullable = false)
    @ApiModelProperty(value="언어 진행도", required = true)
    private int language = 0;

    @OneToOne(mappedBy = "progress", cascade = CascadeType.REMOVE)
    private User user;

    @LastModifiedDate
    private LocalDateTime modifiedDate;

    public void setUser(User user) {
        this.user = user;
    }

    public void updateCS() {
        this.cs++;
    }

    public void updateAlgo() {
        this.algorithm++;
    }

    public void updateBackend() {
        this.backend++;
    }

    public void updateFrontend() {
        this.frontend++;
    }

    public void updateLanguage() {
        this.language++;
    }

}
