package shop.mtcoding.codingexam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.codingexam.model.Board;
import shop.mtcoding.codingexam.model.BoardRepository;
import shop.mtcoding.codingexam.model.CommentRepository;
import shop.mtcoding.codingexam.model.User;
import shop.mtcoding.codingexam.util.PrincipalUtil;

@Controller
public class CommentController {

    @Autowired
    private BoardRepository boardRepository;

    @Autowired
    private CommentRepository commentRepository;

    @Autowired
    PrincipalUtil principalUtil;

    @PostMapping("/comment/{id}/write")
    public String write(@PathVariable("id") int id, String content) {
        User principal = principalUtil.checkPrincipal();
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
