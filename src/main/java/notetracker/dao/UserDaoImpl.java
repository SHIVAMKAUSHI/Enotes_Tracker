package notetracker.dao;

import net.bytebuddy.dynamic.DynamicType;
import notetracker.model.Notes;
import notetracker.model.User;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.persistence.criteria.CriteriaBuilder;
import javax.transaction.Transactional;
import java.util.List;


@Component
public class UserDaoImpl implements UserDao{
    @Autowired
    HibernateTemplate hibernateTemplate;

    @Override
    @Transactional
    public int saveUser(User user) {
        hibernateTemplate.saveOrUpdate(user);

        return 0;
    }

    @Override
    public User login(String email, String password) {
        String hql="FROM User WHERE email = ?0 AND password = ?1";
        List<User> user = (List<User>)  hibernateTemplate.find(hql, email, password);
        if(!user.isEmpty())
        return user.get(0);
        else
            return null;

    }



    @Override
    @Transactional
    public int saveNotes(Notes notes) {
        int save = (Integer) hibernateTemplate.save(notes);
        return save;
    }

    @Override
    public List<Notes> getNotesByUser(User user) {
        String sql="FROM Notes WHERE user = ?0";
        List<Notes> list = (List<Notes>)hibernateTemplate.find(sql,user);
        return list;
    }

    @Override
    public Notes getNotesById(int id) {
        Notes n=hibernateTemplate.get(Notes.class,id);
        return n;
    }
    @Transactional
    @Override
    public void deleteNotesById(int id) {
        Notes notes = hibernateTemplate.get(Notes.class, id);
        hibernateTemplate.delete(notes);

    }
    @Transactional
    @Override
    public void updateNotes(Notes notes) {
        hibernateTemplate.update(notes);
    }
}
