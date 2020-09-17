package servlet;

import database.EntityDao;
import model.Pomiar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/pomiary")
public class PomiarListServlet extends HttpServlet {
    private final EntityDao<Pomiar> entityDao = new EntityDao<Pomiar>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("lista_pomiarów", entityDao.findAll(Pomiar.class));

        req.getRequestDispatcher("/lista_pomiarów.jsp").forward(req, resp);
    }
}
