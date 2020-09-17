package servlet;


import database.EntityDao;
import model.Monter;
import model.Pomiar;
import model.TypDrzwi;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/pomiar/form")
public class PomiarFormServlet extends HttpServlet {
    private final EntityDao<Pomiar> entityDao = new EntityDao<Pomiar>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("typ_drzwi", TypDrzwi.values());
        req.setAttribute("monter", Monter.values());

        req.getRequestDispatcher("/pomiar_form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Pomiar pomiar = Pomiar.builder()
                .monter(Monter.valueOf(req.getParameter("monterField")))
                .klient(req.getParameter("klientField"))
                .adresKlienta(req.getParameter("adresKlientaField"))
                .typDrzwi(TypDrzwi.valueOf(req.getParameter("typDrzwiField")))
                .długość_drzwi(Integer.parseInt(req.getParameter("długośćDrzwiField")))
                .szerokość_drzwi(Integer.parseInt(req.getParameter("szerokośćDrzwiField")))
                .build();

        entityDao.saveOrUpdate(pomiar);

        resp.sendRedirect(req.getContextPath()+"/pomiary");
    }

}
