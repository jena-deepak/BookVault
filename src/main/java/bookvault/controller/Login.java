package bookvault.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bookvault.entity.users;
import bookvault.service.UserService;

@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("emailid");
		String pwsd=req.getParameter("password");
		UserService service= new UserService();
		List<users> userList=service.fetchUser(email,pwsd);
		String username=userList.get(0).getUserName();
		
		
		HttpSession session=req.getSession();
		session.setAttribute("user",username);
		session.setAttribute("userDetails",userList);
		
		RequestDispatcher dispatcher=req.getRequestDispatcher("home.jsp");
		dispatcher.forward(req, resp);
		
		
		
	}

}
