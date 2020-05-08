package dao;

import java.util.List;
import model.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author Francisco Larrocca
 */
public class UserDAO {

    public void saveUser(User user) {
        Transaction transaction = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            try {
                //Start transaction:
                transaction = session.beginTransaction();

                //Save user in database
                session.save(user);

                //End transaction and save changes:
                transaction.commit();

            } catch (Exception e) {
                if (transaction != null) {
                    transaction.rollback();
                }
                e.printStackTrace();
            }
        }
    }

    public void updateUser(User user) {
        Transaction transaction = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            try {

                //Start transaction:
                transaction = session.beginTransaction();

                //Update user from database:
                session.update(user);

                //End transaction and save changes:
                transaction.commit();

            } catch (Exception e) {
                if (transaction != null) {
                    transaction.rollback();
                }
                e.printStackTrace();
            }
        }
    }

    public void deleteUser(int id) {
        Transaction transaction = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            try {
                //Start transaction:
                transaction = session.beginTransaction();

                //Delete user from database:
                User user = session.get(User.class, id);
                if (user != null) {
                    session.delete(user);
                }

                //End transaction and save changes:
                transaction.commit();

            } catch (Exception e) {
                if (transaction != null) {
                    transaction.rollback();
                }
                e.printStackTrace();
            }
        }
    }

    public User getUser(int id) {
        Transaction transaction = null;
        User user = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            try {
                //Start transaction:
                transaction = session.beginTransaction();

                //Get user from database (by id):
                user = session.get(User.class, id);

                //End transaction:
                transaction.commit();

            } catch (Exception e) {
                if (transaction != null) {
                    transaction.rollback();
                }
                e.printStackTrace();
            }
            return user;
        }
    }

    public List<User> getAllUsers() {
        Transaction transaction = null;
        List<User> users = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            try {
                //Start transaction:
                transaction = session.beginTransaction();

                //Get all users of database:
                Query query = session.createQuery("select u from User u");
                users = query.list();
                if (users != null) {
                    System.out.println("Lista creada");
                }
                //End transaction:
                transaction.commit();

            } catch (Exception e) {
                if (transaction != null) {
                    transaction.rollback();
                }
                e.printStackTrace();
            }
            return users;
        }
    }
}
