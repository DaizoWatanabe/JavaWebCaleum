package br.com.caelum.agenda.teste;

import br.com.caelum.agenda.dao.FuncionarioDao;
import br.com.caelum.agenda.modelo.Funcionario;

public class TestaInsere {

	public static void main(String[] args) {
		
		/*// pronto para gravar
		Contato contato;
		contato = new Contato();
		contato.setNome("Karine");
		contato.setEmail("kari@live.com");
		contato.setEndereco("Rua dos ma�ons 335 pituba");
		contato.setDataNascimento(Calendar.getInstance());
		
		// grave nessa conex�o
		ContatoDao dao = new ContatoDao();
		
		// m�todo elegante
		dao.adiciona(contato);
		
		System.out.println("Gravado");

		*/
		
		Funcionario funcionario;
		funcionario = new Funcionario();
		funcionario.setNome("Fun1");
		funcionario.setUsuario("func1");
		funcionario.setSenha("func1");
		
		FuncionarioDao dao = new FuncionarioDao();
		dao.adiciona(funcionario);
		
		System.out.println("Funcion�rio Gravado");
		
	}

}
