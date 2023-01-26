package shop.mtcoding.codingexam.util;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import shop.mtcoding.codingexam.model.User;

@Component
public class PrincipalUtil {

    @Autowired
    HttpSession session;
    
    public User checkPrincipal(){
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            missing();
        }
        return principal;
    }

    public String missing(){
        return "redirect:/login-form";
    }
}
