package servlets;

import database.EntityDao;
import model.Author;
import model.Book;
import model.Publisher;
import model.TypeOfBooks;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

@WebServlet("/book/add")
public class BookFormServlet extends HttpServlet {
    private EntityDao dao = new EntityDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("authors", dao.findAll(Author.class));
        req.setAttribute("publishers", dao.findAll(Publisher.class));
        req.getRequestDispatcher("/book/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/book/form.jsp").forward(req, resp);


        String selectedAuthorId = req.getParameter("authorId");
        String selectedPublisherId = req.getParameter("publisherId");

        TypeOfBooks type = TypeOfBooks.valueOf(req.getParameter("typeOfBook").toUpperCase());

        Optional<Author> authorOptional = dao.findById(Author.class, Long.parseLong(selectedAuthorId));
        Optional<Publisher> publisherOptional = dao.findById(Publisher.class, Long.parseLong(selectedPublisherId));

        if (authorOptional.isPresent() && publisherOptional.isPresent()) {
            Author author = authorOptional.get();
            Publisher publisher = publisherOptional.get();

            Book book = new Book();
            book.setTitle(req.getParameter("title"));
            book.setPages(Integer.parseInt(req.getParameter("pages")));
            book.setYearOfManufacture(Integer.parseInt(req.getParameter("yearOfManufacture")));
            book.setTypeOfBook(type);
            book.setAuthor(author);
            book.setWydawnictwo(publisher);
            dao.saveOrUpdate(book);

            author.getBookSet().add(book);
            dao.saveOrUpdate(author);

        }


        resp.sendRedirect("/book/list");

        // todo: pobrać ich z bazy i powiązać z książką,
        //  zapisać książkę w bazie
        //  przekierować na listę książek
    }
}