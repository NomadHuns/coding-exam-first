package shop.mtcoding.codingexam.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import shop.mtcoding.codingexam.dto.CommentDto;

@Mapper
public interface CommentRepository {

    public List<CommentDto> findByBoardId(int boardId);

    public int insert(@Param("userId") int userId, @Param("boardId") int boardId, @Param("content") String content);
}
