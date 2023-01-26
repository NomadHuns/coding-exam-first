package shop.mtcoding.codingexam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.codingexam.model.Board;
import shop.mtcoding.codingexam.model.BoardRepository;
import shop.mtcoding.codingexam.model.CommentRepository;
import shop.mtcoding.codingexam.model.User;

@Controller
public class CommentController {

    @Autowired
    private HttpSession session;

    @Autowired
    private BoardRepository boardRepository;

    @Autowired
    private CommentRepository commentRepository;

    @PostMapping("/comment/{id}/write")
    public String write(@PathVariable("id") int id, String content) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/login-form";
        }
        Board board = boardRepository.findById(id);
        if (board == null) {
            return "redirect:/missing";
        }
        int result = commentRepository.insert(principal.getId(), board.getId(), content);
        if (result != 1) {
            return "redirect:/missing";
        }
        return "redirect:/board/" + id;
    }
}
