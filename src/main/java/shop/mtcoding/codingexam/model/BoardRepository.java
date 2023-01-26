package shop.mtcoding.codingexam.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface BoardRepository {

    public List<Board> findAll();

    public List<Board> findByUserId(int userId);

    public Board findById(int id);

    public int insert(@Param("title") String title, @Param("content") String content, @Param("userId") int userId);

    public Board findByIdAndUserId(@Param("id") int id, @Param("userId") int userId);

    public int updateByIdAndUserId(@Param("title") String title, @Param("content") String content, @Param("id") int id, @Param("userId") int userId);
}
