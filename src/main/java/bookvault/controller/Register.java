package bookvault.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookvault.entity.users;
import bookvault.service.UserService;

@WebServlet("/register")
public class Register extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		users user = new users();
		user.setUserId(Integer.parseInt(req.getParameter("userId")));
		user.setUserName(req.getParameter("userName"));
		user.setEmail(req.getParameter("email"));
		user.setNumber(Long.parseLong(req.getParameter("number")));
		user.setAge(Integer.parseInt(req.getParameter("age")));
		user.setPassword(req.getParameter("password"));
		user.setConfirmPassword(req.getParameter("confirmPassword"));

		UserService service = new UserService();
		if (!user.getPassword().equals(user.getConfirmPassword())) {
			RequestDispatcher requestDispatcher2 = req.getRequestDispatcher("register.jsp");
			requestDispatcher2.include(req, resp);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("error.jsp");
			requestDispatcher.include(req, resp);
			return;
		}

		try {
			service.createUser(user);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("login.jsp");
			requestDispatcher.include(req, resp);
			RequestDispatcher requestDispatcher2 = req.getRequestDispatcher("success.jsp");
			requestDispatcher2.include(req, resp);

		} catch (Exception e) {
			RequestDispatcher requestDispatcher2 = req.getRequestDispatcher("register.jsp");
			requestDispatcher2.include(req, resp);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("error.jsp");
			requestDispatcher.include(req, resp);
		}

	}

}
