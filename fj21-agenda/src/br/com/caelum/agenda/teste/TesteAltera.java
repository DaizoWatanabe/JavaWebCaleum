package br.com.caelum.agenda.teste;

import java.util.Calendar;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class TesteAltera {

	public static void main(String[] args) {
		
		Contato contato;
		contato = new Contato();
		contato.setNome("Daizo");
		contato.setEmail("daizowatanabe@gmail.com");
		contato.setEndereco("Rua dos ma?ons 335 pituba");
		contato.setDataNascimento(Calendar.getInstance());
		contato.setId((long) 1);
		
		ContatoDao dao = new ContatoDao();
		
		dao.altera(contato);
		
		System.out.println("Alterado!");
		

	}

}
