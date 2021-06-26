package br.com.caelum.agenda.teste;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class TestaRemove {

	public static void main(String[] args) {
		
		Contato contato;
		contato = new Contato();
		contato.setId((long) 2);
		
		ContatoDao dao = new ContatoDao();
		
		dao.exclui(contato);
		
		System.out.println("Removido!");
	}

}
