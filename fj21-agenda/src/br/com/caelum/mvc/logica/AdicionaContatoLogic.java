package br.com.caelum.mvc.logica;

import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AdicionaContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String nome = req.getParameter("nome");
		String email = req.getParameter("email");
		String endereco = req.getParameter("endereco");
		String dataString = req.getParameter("dataNascimento");
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Calendar dataNascimento = Calendar.getInstance();
		
		try {
			dataNascimento.setTime(sdf.parse(dataString));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setEndereco(endereco);
		contato.setDataNascimento(dataNascimento);
		
		Connection connection = (Connection) req.getAttribute("conexao");
		
		ContatoDao dao = new ContatoDao(connection);
		dao.adiciona(contato);
		
		System.out.println("Adicionando contato...");
		
		return "mvc?logica=ListaContatosLogic";
	}

}
