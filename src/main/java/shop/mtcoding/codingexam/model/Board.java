package shop.mtcoding.codingexam.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

/*
 * create table board_tb(
    id int auto_increment primary key,
    title varchar,
    user_id int,
    created_at timestamp,
    constraint fk_user foreign key(user_id) references user_tb(id)
    );
 */

@Getter
@Setter
public class Board {
    private Integer id;
    private String title;
    private String content;
    private Integer userId;
    private Timestamp createdAt;
}
