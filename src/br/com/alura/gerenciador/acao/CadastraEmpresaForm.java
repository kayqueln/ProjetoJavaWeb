package br.com.alura.gerenciador.acao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CadastraEmpresaForm implements Acao{
	
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		return "forward:formNovaEmpresa.jsp";
	}
}
