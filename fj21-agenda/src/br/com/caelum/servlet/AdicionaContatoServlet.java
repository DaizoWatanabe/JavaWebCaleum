package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

@WebServlet("/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		//busca o writer
		PrintWriter out = response.getWriter();
		
		//buscando os parâmetros no request
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String endereco =  request.getParameter("endereco");
		String  dataEmTexto = request.getParameter("dataNascimento");
		
		Calendar dataNascimento = null;
		
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
		} catch (ParseException e) {
			out.println("Erro de conversão da data");
			return; //para a execução do método
		}
		
		//monta um objeto contato
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setEndereco(endereco);
		contato.setDataNascimento(dataNascimento);
		
		//salva o contato
		ContatoDao dao = new ContatoDao();
		dao.adiciona(contato);
		
		//redireciona para a página jsp executar a apresentação do resultado
		RequestDispatcher rd = request.getRequestDispatcher("/contato-adicionado.jsp");
		rd.forward(request, response);
	}
	
}
