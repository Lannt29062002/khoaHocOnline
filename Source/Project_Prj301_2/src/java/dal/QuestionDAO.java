/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Question;
import Model.author;
import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author lannt
 */
public class QuestionDAO extends DBContext{
    public ArrayList<Question> getListQuestion() {
        ArrayList<Question> list = new ArrayList<>();

        try {
            String str = " Select * from [table] ";
            PreparedStatement pstm = connection.prepareStatement(str);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                
                list.add(new Question(rs.getInt(1), rs.getString(2),  rs.getString(3),  rs.getString(4),  rs.getString(5),  rs.getString(6),  rs.getString(7)));
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return list;
    }

}
