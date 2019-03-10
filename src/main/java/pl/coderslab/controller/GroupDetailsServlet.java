package pl.coderslab.controller;

import pl.coderslab.model.Solution;
import pl.coderslab.model.User;
import pl.coderslab.model.UserGroup;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GroupDetailsServlet", urlPatterns = "/viewGroup")
public class GroupDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer groupId = Integer.parseInt(request.getParameter("id"));
        List<User> users = User.loadAllbyGroupID(groupId);
        request.setAttribute("users", users);
        getServletContext().getRequestDispatcher("/WEB-INF/usersByGroupId.jsp")
                .forward(request,response);
    }
}
