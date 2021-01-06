package sec05.ex01;

import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetServlet
 */
@WebServlet("/cset")
public class SetServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		ServletContext context=getServletContext();
		List member=new ArrayList();
		member.add("kth990303");
		member.add(23);
		context.setAttribute("member", member);
		out.println("<html><body>");
		out.println("ServletContext로 kth990303의 자기소개하기<br>");
		out.println("</body></html>");
	}

}
