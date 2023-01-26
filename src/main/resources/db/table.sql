create table user_tb(
    id int auto_increment primary key,
    username varchar not null unique,
    password varchar not null,
    email varchar not null,
    created_at timestamp
);

create table board_tb(
    id int auto_increment primary key,
    title varchar not null,
    content varchar not null,
    user_id int not null,
    created_at timestamp,
    constraint fk_user foreign key(user_id) references user_tb(id)
);

create table comment_tb(
    id int auto_increment primary key,
    user_id int not null,
    board_id int not null,
    content varchar not null,
    created_at timestamp,
    constraint fk_userid foreign key(user_id) references user_tb(id),
    constraint fk_board foreign key(board_id) references board_tb(id)
);