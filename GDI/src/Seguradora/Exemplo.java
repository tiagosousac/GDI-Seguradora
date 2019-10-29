package Seguradora;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import oracle.jdbc.*;

public class Exemplo {
    public static void main(String[] args) {

        Connection connection;
        Statement stmt;
        try {
            DriverManager.registerDriver (new oracle.jdbc.driver.OracleDriver());
            //Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@oracle12c.cin.ufpe.br:1521:Instance01", "g192if685cc_eq09", "ttexdesz");
            String sql = "INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('Juliano','111.111.111-11',to_date('02/03/1987','dd/mm/yyyy'), 'M')";
            stmt = connection.createStatement();
            stmt.execute(sql);
            System.out.println("Criou");
            connection.close();
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
