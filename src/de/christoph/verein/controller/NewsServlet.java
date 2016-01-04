package de.christoph.verein.controller;

import de.christoph.verein.model.Category;
import de.christoph.verein.model.News;
import de.christoph.verein.model.NewsList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "NewsServlet", urlPatterns = {"/NewsServlet"})
public class NewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
    {
        doPost(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
    {
        NewsList.add(new News(req.getParameter("author"), req.getParameter("date"), req.getParameter("title"), req.getParameter("text"), Category.valueOf(req.getParameter("category"))));
        res.sendRedirect("news.jsp?id=" + NewsList.getLastNews().getID());
    }
}