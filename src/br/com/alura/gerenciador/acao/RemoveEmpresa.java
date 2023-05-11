package br.com.alura.gerenciador.acao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;

public class RemoveEmpresa implements Acao{
	
	public String executa(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		System.out.println("Removendo empresa...");
		
		String paramId = request.getParameter("id");
		int Id = Integer.parseInt(paramId);
		
		Banco banco = new Banco();
		banco.removeEmpresa(Id);
		
		return "redirect:entrada?acao=ListaEmpresas";
	}
}
