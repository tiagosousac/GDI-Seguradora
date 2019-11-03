package Seguradora;

import Operações.Operações;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class CadastrarBlob {
    public JPanel BlobPanel;
    private JButton adicionarImagemButton;
    private JTextField arquivoTextField;
    private JTextField cpfTextField;
    private Operações ap;

    public CadastrarBlob() {
        ap = new Operações();
        adicionarImagemButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                String arquivo = arquivoTextField.getText();
                String cpf = cpfTextField.getText();
                ap.AdicionarBlob(cpf, arquivo);
            }
        });
    }
}
