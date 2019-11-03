package Seguradora;

import Consultas.Consultas;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TelaInicial {
    public JButton consultarButton;
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

        consultarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFrame consultarFrame = new JFrame("consultar");
                consultarFrame.setContentPane(new Consultas(connection).consultas);
                consultarFrame.pack();
                consultarFrame.setVisible(true);
                consultarFrame.setMinimumSize(new Dimension(500,500));
            }
        });
    }

    public static void main(String[] args) {
        Connection connection;
        try {
            /* IMPORTANTE !
               O driver que está sendo utilizado é o mais recente, e seu nome é ojdbc8.jar.
               Ele é o default pois é o que funciona nos PCs do grad.
               Caso esteja acontecendo algum erro relacionado a ele, recomendo trocar pel ojdbc10.jar,
               que está na mesma pasta( GDI-Seguradora/GDI/dependencies ) que o ojdbc8.jar, mas não está incluso no projeto.
               Para incluir, clica em File->Project Structure->Modules, deleta o import do ojdbc8.jar e
               clica no + -> JAR or directories e seleciona o ojdbc10.jar.
             */
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
