package servlets;


import database.EntityDao;
import model.Author;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/author/add")
public class AuthorFormServlet extends HttpServlet {
    private EntityDao dao = new EntityDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/author/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Author author = new Author();
        author.setFirstname( req.getParameter("firstname"));
        author.setSurname(req.getParameter("surname"));
        author.setYearOfBirth(Integer.parseInt(req.getParameter("yearOfBirth")));
        author.setPlaceOfBirth(req.getParameter("placeOfBirth"));

        dao.saveOrUpdate(author);
        resp.sendRedirect("/author/list");
    }

}
