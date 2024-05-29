package notetracker.dao;

import net.bytebuddy.dynamic.DynamicType;
import notetracker.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

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

}
