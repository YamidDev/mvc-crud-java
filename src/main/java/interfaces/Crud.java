package interfaces;

import java.util.List;
import models.Person;

public interface Crud {
    public List findAll();
    public Person findById(int id);
    public boolean add(Person person);
    public boolean update(Person per);
    public boolean delete(int id);
}
