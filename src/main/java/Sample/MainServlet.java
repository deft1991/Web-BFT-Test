package Sample;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

public class MainServlet extends HttpServlet {
    String name;
    String password;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = (String) req.getParameter("realname");
        String password = (String) req.getParameter("mypassword");

        req.setAttribute("name", HelloWorld.getName(name));
        req.setAttribute("pass", HelloWorld.getPass(password));


        doGet(req, resp);
    }

}