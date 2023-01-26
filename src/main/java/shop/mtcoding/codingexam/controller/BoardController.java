package shop.mtcoding.codingexam.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import shop.mtcoding.codingexam.dto.CommentDto;
import shop.mtcoding.codingexam.model.Board;
import shop.mtcoding.codingexam.model.BoardRepository;
import shop.mtcoding.codingexam.model.CommentRepository;
import shop.mtcoding.codingexam.model.User;

@Controller
public class BoardController {

    @Autowired
    private HttpSession session;

    @Autowired
    private BoardRepository boardRepository;

    @Autowired
    private CommentRepository commentRepository;

    @GetMapping({ "/", "/board/list" })
    public String boardList(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/login-form";
        }
        List<Board> boardList = boardRepository.findByUserId(principal.getId());
        model.addAttribute("boardList", boardList);
        return "board/list";
    }

    @GetMapping("/board/{id}")
    public String boardDetail(@PathVariable("id") int id, Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/login-form";
        }
        Board board = boardRepository.findById(id);
        if (board == null) {
            return "redirect:/missing";
        }
        List<CommentDto> commentDtoList = commentRepository.findByBoardId(board.getId());
        model.addAttribute("board", board);
        model.addAttribute("commentDtoList", commentDtoList);

        return "board/detail";
    }

}
