package shop.mtcoding.codingexam.model;

import java.security.Timestamp;

import lombok.Getter;
import lombok.Setter;

/*
 * create table comment_tb(
    id int auto_increment primary key,
    user_id int not null,
    board_id int not null,
    content varchar not null,
    created_at timestamp,
    constraint fk_userid foreign key(user_id) references user_tb(id),
    constraint fk_board foreign key(board_id) references board_tb(id)
    );
 */

@Getter
@Setter
public class Comment {
    private Integer id;
    private Integer userId;
    private Integer boardId;
    private String content;
    private Timestamp createdAt;
}
