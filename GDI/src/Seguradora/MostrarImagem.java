package Seguradora;

import Operações.Operações;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MostrarImagem {
    private JTextField cpfTextField;
    private JButton mostrarImagemButton;
    public JPanel showImagePanel;
    private Operações ap;

    public MostrarImagem() {
        ap = new Operações();
        mostrarImagemButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                String cpf = cpfTextField.getText();
                ap.MostrarBlob(cpf);
            }
        });
    }
}
