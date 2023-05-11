package br.com.alura.gerenciador.acao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class MostraEmpresa implements Acao{
	
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		System.out.println("Mostrando empresa...");
		
		String paramId = request.getParameter("id");
		int id = Integer.parseInt(paramId);
		
		Banco banco = new Banco();
		
		Empresa empresa = banco.buscarPorId(id);
		
		request.setAttribute("empresa", empresa);

		return "forward:formAlteraEmpresa.jsp";
	}
}
