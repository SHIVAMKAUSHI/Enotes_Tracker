package notetracker.controller;

import notetracker.dao.UserDao;
import notetracker.model.Notes;
import notetracker.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class Home {
    @Autowired
    UserDao userDao;

    @RequestMapping("/")
    public String home(HttpSession s){
        s.setAttribute("title","Home");
        return "home";
    }

    @RequestMapping("/register")
    public String register(){
        return "register";
    }
    @RequestMapping("/login")
    public String login(){
        return "login";
    }



    @RequestMapping(path = "/registeruser" , method = RequestMethod.POST)
    public RedirectView registerUser(@ModelAttribute User user, HttpServletRequest request, HttpSession session) {
        userDao.saveUser(user);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath()+"/register");
        session.setAttribute("msg", "Successfully Registered !!!");
        return redirectView;

    }
    @RequestMapping(path="/loginuser", method = RequestMethod.POST)
    public String loginUser(@RequestParam("email") String email,@RequestParam("password") String password,HttpSession session){
        User user = userDao.login(email, password);
        if(user!=null){
            session.setAttribute("userObj",user);
            return "redirect:/loginpage";
        }
        else {
            session.setAttribute("msg","Invalid User");
            return "redirect:/login";
        }

    }
    @RequestMapping("/loginpage")
    public String loginPage(){
        return "profile";
    }


}


