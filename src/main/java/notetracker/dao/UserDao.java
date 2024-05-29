package notetracker.dao;

import notetracker.model.User;

public interface UserDao {
    public int saveUser(User user);
    public User login(String email,String password);

}
