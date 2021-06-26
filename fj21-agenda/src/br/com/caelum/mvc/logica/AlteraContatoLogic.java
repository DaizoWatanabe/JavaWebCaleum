package br.com.caelum.mvc.logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AlteraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String nome = req.getParameter("nome");
		String email = req.getParameter("email");
		String endereco = req.getParameter("endereco");
		String data = req.getParameter("dataNascimento");
		long id = Long.parseLong(req.getParameter("id"));
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Calendar dataNascimento = Calendar.getInstance(); 
		
		try {
			dataNascimento.setTime(sdf.parse(data));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setEndereco(endereco);
		contato.setDataNascimento(dataNascimento);
		contato.setId(id);
		
		ContatoDao dao = new ContatoDao();
		dao.altera(contato);
		
		System.out.println("Alterando contato...");
		
		return "mvc?logica=ListaContatosLogic";
	}

}
