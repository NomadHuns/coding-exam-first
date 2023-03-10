package shop.mtcoding.codingexam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.codingexam.model.User;
import shop.mtcoding.codingexam.model.UserRepository;

@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private HttpSession session;

    @GetMapping("/login-form")
    public String loginForm() {
        return "user/loginForm";
    }

    @PostMapping("/login")
    public String login(String username, String password) {
        User principal = userRepository.findByUsernameAndPassword(username, password);
        if (principal == null) {
            return "redirect:/login-form";
        }
        session.setAttribute("principal", principal);
        return "redirect:/board/list";
    }

    @GetMapping("/join-form")
    public String joinForm() {
        return "user/joinForm";
    }

    @PostMapping("/join")
    public String join(String username, String password, String email) {
        int result = userRepository.insert(username, password, email);
        if (result != 1) {
            return "redirect:/join-form";
        }
        return "redirect:/login-form";
    }

    @GetMapping("/logout")
    public String logout() {
        session.removeAttribute("principal");
        return "redirect:/";
    }

    @GetMapping("/user/update-form")
    public String updateForm() {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/login-form";
        }
        return "user/updateForm";
    }

    @PostMapping("/user/update")
    public String update(String username, String password, String email) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/login-form";
        }
        int result = userRepository.updateById(username, password, email, principal.getId());
        if (result != 1) {
            return "redirect:/missing";
        }
        session.removeAttribute("principal");
        return "redirect:/login-form";
    }
}
