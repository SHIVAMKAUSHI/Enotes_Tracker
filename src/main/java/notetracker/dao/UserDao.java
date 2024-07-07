package notetracker.dao;

import notetracker.model.Notes;
import notetracker.model.User;

import java.util.List;

public interface UserDao {
    public int saveUser(User user);
    public User login(String email,String password);
    public int saveNotes(Notes notes);
    public List<Notes> getNotesByUser(User user);
    public Notes getNotesById(int id);

    public void deleteNotesById(int id);
    public void updateNotes(Notes notes);


}
