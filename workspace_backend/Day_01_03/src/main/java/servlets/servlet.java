package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContactDAO;

@WebServlet("/servlet")
public class servlet extends HttpServlet {
	// Controller (Model, View, Controller 이셋 을 합쳐 디자인패턴 MVC라고 부름)
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ContactDAO dao = new ContactDAO();

		String name = request.getParameter("name");
		String contact = request.getParameter("contact");

		try {
			dao.insert(name, contact);
			response.sendRedirect("index.html");
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.html");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
