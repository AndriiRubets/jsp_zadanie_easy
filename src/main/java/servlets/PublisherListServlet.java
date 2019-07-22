package servlets;

import database.EntityDao;
import model.Publisher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/publisher/list")
public class PublisherListServlet extends HttpServlet {
    private EntityDao dao=new EntityDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("publisherList", dao.findAll(Publisher.class) );
        req.getRequestDispatcher("/publisher/list.jsp").forward(req,resp);
    }
}
