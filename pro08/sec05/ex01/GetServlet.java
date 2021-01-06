package sec05.ex01;

import java.util.ArrayList;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetServlet
 */
@WebServlet("/cget")
public class GetServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		ServletContext context=getServletContext();
		List member=(ArrayList)context.getAttribute("member");
		// localhost8090/pro08/cset 들리지 않고 여기 먼저 방문하면 클라이언트 에러 발생
		// ServletContext의 context 객체를 전달해주지 못하기 때문
		String name=(String)member.get(0);
		int age=(int)member.get(1);
		out.println("<html><body>");
		out.println("저의 이름은 "+name+"입니다.<br>");
		out.println("나이는 "+age+"입니다.<br>");
		out.println("</body></html>");
	}
}
