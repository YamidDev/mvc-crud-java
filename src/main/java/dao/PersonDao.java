package dao;

import config.Connexion;
import interfaces.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.Person;

public class PersonDao implements Crud{
    
    Connexion cn = new Connexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    Person person = new Person();
    
    @Override
    public List findAll() {
        ArrayList<Person> list = new ArrayList();
        String sql = "SELECT * FROM person";
        try {
            con = cn.getConnexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Person per = new Person();
                per.setId(rs.getInt("id"));
                per.setDni(rs.getString("dni"));
                per.setName(rs.getString("names"));
                list.add(per);
            }
        } catch (Exception e) {
            System.err.println("Error "+ e.getMessage());
        }
        return list;
    }

    @Override
    public Person findById(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean add(Person person) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean update(Person per) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
