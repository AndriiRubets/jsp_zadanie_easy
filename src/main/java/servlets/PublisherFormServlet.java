package servlets;


import database.EntityDao;
import model.Publisher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/publisher/add")
public class PublisherFormServlet extends HttpServlet {
    private EntityDao dao = new EntityDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/publisher/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Publisher wydawnictwo=new Publisher();
        wydawnictwo.setName( req.getParameter("name"));
        wydawnictwo.setAddress( req.getParameter("address"));

        dao.saveOrUpdate(wydawnictwo);
        resp.sendRedirect("/publisher/list");
    }
}
