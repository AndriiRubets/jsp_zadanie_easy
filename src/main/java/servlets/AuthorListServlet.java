package servlets;

import database.EntityDao;
import model.Author;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/author/list")
public class AuthorListServlet extends HttpServlet {
    private EntityDao dao=new EntityDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("authorList", dao.findAll(Author.class) );
        req.getRequestDispatcher("/author/list.jsp").forward(req,resp);
    }
}
