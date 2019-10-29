package Seguradora;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TelaInicial {
    public JButton cadastrarSeguradoraButton;
    public JButton cadastrarPessoaButton;
    public JPanel TelaInicial;
    public Connection connection;

    public TelaInicial(Connection connection) {
        this.connection = connection;

        cadastrarPessoaButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFrame cadastrarPessoaFrame = new JFrame("cadastrar Pessoa");
                cadastrarPessoaFrame.setContentPane(new CadastrarPessoa(connection).CadastrarPessoa);
                cadastrarPessoaFrame.pack();
                cadastrarPessoaFrame.setVisible(true);
                cadastrarPessoaFrame.setMinimumSize(new Dimension(500,500));
            }
        });
        cadastrarSeguradoraButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

            }
        });
    }

    public static void main(String[] args) {
        Connection connection;
        try {
            DriverManager.registerDriver (new oracle.jdbc.driver.OracleDriver());
            //Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@oracle12c.cin.ufpe.br:1521:Instance01", "g192if685cc_eq09", "ttexdesz");
            JFrame telaInicialFrame = new JFrame("telaInicial");
            telaInicialFrame.setContentPane(new TelaInicial(connection).TelaInicial);
            telaInicialFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            telaInicialFrame.pack();
            telaInicialFrame.setVisible(true);
            telaInicialFrame.setMinimumSize(new Dimension(500, 500));
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
