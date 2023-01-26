package shop.mtcoding.codingexam.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import shop.mtcoding.codingexam.model.Board;
import shop.mtcoding.codingexam.model.BoardRepository;
import shop.mtcoding.codingexam.model.User;

@Controller
public class BoardController {

    @Autowired
    HttpSession session;

    @Autowired
    BoardRepository boardRepository;

    @GetMapping("/board/list")
    public String boardList(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/login-form";
        }
        List<Board> boardList = boardRepository.findByUserId(principal.getId());
        model.addAttribute("boardList", boardList);
        return "board/list";
    }

}
