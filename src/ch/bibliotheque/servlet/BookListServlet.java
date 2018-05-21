package ch.bibliotheque.servlet;

import ch.bibliotheque.dao.BookService;
import ch.bibliotheque.model.Book;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BookListServlet extends HttpServlet {

    private final BookService bs;

    @Inject
    public BookListServlet (BookService bs) {
        this.bs = bs;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Book> books = bs.readAll();
        req.setAttribute("books", books);
        req.getRequestDispatcher(req.getContextPath() + "/WEB-INF/book_list.jsp").forward(req, resp);
    }
}
