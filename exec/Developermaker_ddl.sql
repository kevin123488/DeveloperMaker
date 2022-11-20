create table if not exists ai_interview_question
(
    aiq_id         bigint auto_increment
        primary key,
    keyword        varchar(255) not null,
    no             int          not null,
    question       varchar(255) not null,
    subject        varchar(255) not null,
    keyword_detect varchar(255) null,
    demend_cnt     int          not null
);

create table if not exists album
(
    album_id    bigint auto_increment
        primary key,
    album_img   varchar(300) not null,
    album_title varchar(100) not null,
    type        varchar(30)  not null,
    theme       varchar(30)  null
);

create table if not exists cote
(
    cote_id       bigint auto_increment
        primary key,
    problem       varchar(5000)  not null,
    title         varchar(50)    not null,
    answer_input  varchar(10000) not null,
    answer_output varchar(1000)  not null,
    no            int            not null,
    time_limit    bigint         null
);

create table if not exists progress
(
    progress_id bigint auto_increment
        primary key,
    cs          int not null,
    language    int not null,
    algorithm   int not null,
    backend     int not null,
    frontend    int not null
);

create table if not exists quiz
(
    quiz_id  bigint auto_increment
        primary key,
    answer   varchar(200) not null,
    example  varchar(500) not null,
    problem  varchar(500) not null,
    subject  varchar(30)  not null,
    title    varchar(50)  not null,
    category varchar(30)  not null
);

create table if not exists study
(
    study_id bigint auto_increment
        primary key,
    content  varchar(16200) not null,
    subject  varchar(30)    not null,
    title    varchar(50)    not null,
    category varchar(30)    not null
);

create table if not exists user
(
    user_id     bigint auto_increment
        primary key,
    email       varchar(50)  not null,
    language    varchar(20)  not null,
    login_type  varchar(20)  not null,
    nickname    varchar(30)  not null,
    social_id   varchar(255) not null,
    progress_id bigint       null,
    profile_img varchar(255) not null,
    constraint UK_9fdyvj09sbbqfl49r7uc5h941
        unique (progress_id),
    constraint FK7mndvrijvw6nhtpq1xl61o5tr
        foreign key (progress_id) references progress (progress_id)
);

create table if not exists memory
(
    memory_id   bigint auto_increment
        primary key,
    chapter     int         not null,
    like_autumn int         not null,
    like_spring int         not null,
    like_summer int         not null,
    like_winter int         not null,
    num         int         null,
    script      varchar(50) not null,
    slot        int         not null,
    user_id     bigint      null,
    constraint FK2cg9qyuh0x0vrbsdvusrncefc
        foreign key (user_id) references user (user_id)
);

create table if not exists user_album
(
    user_album_id bigint auto_increment
        primary key,
    album_id      bigint     null,
    user_id       bigint     null,
    is_read       tinyint(1) not null,
    constraint FK5o2ybk3saxb50x9sypf0538mq
        foreign key (user_id) references user (user_id),
    constraint FKacvpgpjx6q8o41a8clytevcxr
        foreign key (album_id) references album (album_id)
);

create table if not exists user_cote
(
    user_cote_id bigint auto_increment
        primary key,
    correct      bigint null,
    cote_id      bigint null,
    user_id      bigint null,
    constraint FKajcn62ylx0vvox7y6wsi0fryv
        foreign key (cote_id) references cote (cote_id),
    constraint FKeplx84w0mmke4owe8h4bhd2qi
        foreign key (user_id) references user (user_id)
);

create table if not exists user_quiz
(
    user_quiz_id bigint auto_increment
        primary key,
    correct      int    not null,
    quiz_id      bigint null,
    user_id      bigint null,
    constraint FK8ty6eqmhprd2lnyp5nrh6p2de
        foreign key (user_id) references user (user_id),
    constraint FKamnut7xcu11shpwa926626y87
        foreign key (quiz_id) references quiz (quiz_id)
);

