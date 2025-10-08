package bookvault.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bookvault.entity.Managers;
import bookvault.service.OfficeService;


@WebServlet("/mlogin")
public class ManagerLogin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("name"));
		OfficeService officeService = new OfficeService();
		Managers manager = officeService.fetchManager(id);
		String managerName="";
		if(manager!=null) {
			 managerName=manager.getmName();
			
		}
		HttpSession session = req.getSession();
		session.setAttribute("manager",manager);
		session.setAttribute("user", managerName);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("mhome.jsp");
		requestDispatcher.forward(req, resp);
	}

}
