package Operações;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AlterarPessoa {
    Connection connection;
    Statement stmt;

    public AlterarPessoa(Connection connection) {
        this.connection = connection;
        try {
            stmt = connection.createStatement();
        } catch (SQLException e) {

        }
    }

    public void InserirPessoa(String nome, String cpf, String data, String sexo) {
        try {
            String sql = "INSERT INTO pessoa VALUES ("+ nome + "," + cpf + "," + data + "," + sexo+ ")";
            stmt.execute(sql);
        } catch (SQLException e) {

        }
    }

    public String[] BuscarPessoa(String cpf) {
        String[] pessoaBuscada = new String[4];
        try {
            String sql = "SELECT nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa FROM pessoa WHERE cpf_pessoa = " + cpf;
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                pessoaBuscada[0] = rs.getString(1);
                pessoaBuscada[1] = rs.getString(2);
                pessoaBuscada[2] = rs.getString(3);
                pessoaBuscada[3] = rs.getString(4);
                for(int i = 0;i<pessoaBuscada.length;i++)
                    System.out.println(pessoaBuscada[i]);
            }
            return pessoaBuscada;
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return null;
    }

}
