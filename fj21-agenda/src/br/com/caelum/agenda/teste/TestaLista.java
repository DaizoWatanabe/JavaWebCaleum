package br.com.caelum.agenda.teste;

import java.text.SimpleDateFormat;
import java.util.List;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class TestaLista {

	public static void main(String[] args) {
		
		ContatoDao dao = new ContatoDao();
		
		List<Contato> contatos = dao.getLista();
		
		for(Contato contato : contatos) {
			System.out.println("Nome: " + contato.getNome());
			System.out.println("Email: " + contato.getEmail());
			System.out.println("Endereço: " + contato.getEndereco());
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			System.out.println("Data Nascimento: " + sdf.format(contato.getDataNascimento().getTime()));
			System.out.println("ID: " + contato.getId() + "\n");
			
		}
	}

}
