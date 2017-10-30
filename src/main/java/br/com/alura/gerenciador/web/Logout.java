package br.com.alura.gerenciador.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Logout implements Tarefa {

	public Logout() {
		System.out.println("Construindo uma servlet do tipo logout");
	}

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		req.getSession().removeAttribute("usuarioLogado");
		req.getSession().invalidate();
		req.getSession().setMaxInactiveInterval(60 * 10);
		return "/WEB-INF/paginas/logout.html";	
	}
}
