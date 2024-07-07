package notetracker.controller;

import notetracker.dao.UserDao;
import notetracker.model.Notes;
import notetracker.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.time.DateTimeException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping("/user/")
public class UserController {
    @Autowired
    private UserDao userDao;
    @RequestMapping("/viewnotes")
    public String viewNotes(HttpSession session, Model model){
        User user = (User) session.getAttribute("userObj");
        List<Notes> notesByUser = userDao.getNotesByUser(user);
        model.addAttribute("allNotes",notesByUser);

        for (Notes i:notesByUser)

        {
            System.out.println(i.getDescription());
            System.out.println(i.getTitle());
        }

        return "view_notes";
    }
    @RequestMapping("/addnotes")
    public String addNotes(){
        return "add_notes";
    }
    @RequestMapping("/editnotes/{id}")
    public String editNotes(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        return "edit_notes";
    }
    @RequestMapping("/updatenotes/{id}")
    public String updateNotes(@PathVariable("id") int id,@RequestParam("title") String title, @RequestParam("description") String description){
        Notes notesById = userDao.getNotesById(id);
        notesById.setTitle(title);
        notesById.setTitle(description);
        userDao.updateNotes(notesById);
        return "redirect:/user/viewnotes";
    }
    @RequestMapping("/logout")
    public String logOut(HttpSession session){
        session.removeAttribute("userObj");
        session.setAttribute("msg","Logged Out Successfully!!!");
        return "login";
    }
    @RequestMapping(path = "/saveNotes",method = RequestMethod.POST)
    public String saveNotes(@RequestParam("title") String title,@RequestParam("description") String description, HttpSession session){
        User user = (User)session.getAttribute("userObj");
        Notes notes = new Notes();
        notes.setUser(user);
        notes.setDate(LocalDateTime.now().toString());
        notes.setDescription(description);
        notes.setTitle(title);
        session.setAttribute("msg","Notes Added Successfully");
        userDao.saveNotes(notes);
        return "redirect:/user/addnotes";
    }
    @RequestMapping("/deleteNotes/{id}")
    public String deleteNotes(@PathVariable int id, HttpSession session){
        userDao.deleteNotesById(id);
        return "redirect:/user/viewnotes";
    }

}
