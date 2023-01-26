package shop.mtcoding.codingexam.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommentDto {
    private Integer id;
    private String username;
    private Integer boardId;
    private String content;
    private Timestamp createdAt;
}
