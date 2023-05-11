package br.com.alura.gerenciador.acao;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class AlteraEmpresa implements Acao{
	
	public String executa(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		String nomeEmpresa = request.getParameter("nome");
		String paramDataEmpresa = request.getParameter("data");	
		String paramId = request.getParameter("id");
		
		int id = Integer.parseInt(paramId);
		
		System.out.println("Alterando empresa..."
				+ "\nID: " + id);
		
		Date dataEmpresa = null;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			dataEmpresa = sdf.parse(paramDataEmpresa);
		} catch (ParseException e) {
			throw new ServletException(e);
		}
		
		Banco banco = new Banco();
		Empresa empresa = banco.buscarPorId(id);
		empresa.setNome(nomeEmpresa);
		empresa.setDataAbertura(dataEmpresa);
		
		return "redirect:entrada?acao=ListaEmpresas";
	}
}
