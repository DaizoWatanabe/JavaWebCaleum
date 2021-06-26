package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaRemove {

	public static void main(String[] args) {
		
		Contato contato;
		contato = new Contato();
		contato.setId((long) 2);
		
		ContatoDao dao = new ContatoDao();
		
		dao.remove(contato);
		
		System.out.println("Removido!");
	}

}
