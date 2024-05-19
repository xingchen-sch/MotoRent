package com.icss.action;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.icss.biz.UserBiz;
import com.icss.entity.User;

@WebServlet(urlPatterns = "/loginSvl")
public class LoginSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginSvl() {
    	super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/main/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname =request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		System.out.println("uname="+uname+",pwd="+pwd);
		if (uname==null||pwd==null||uname.equals("")||pwd.equals("")) {
			throw new RuntimeException("用户名或者密码不能为空");
		}
		UserBiz biz=new UserBiz();
		try {
			User user=biz.login(uname, pwd);
			if (user!=null) {
				System.out.println(uname+"登陆成功");
				request.getSession().setAttribute("user", user);
				request.getRequestDispatcher("/main/main.jsp").forward(request, response);
			}else {
				System.out.println("登陆失败");
				request.setAttribute("msg", "用户名或者密码错误");
				request.getRequestDispatcher("/main/login.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO: handle exception
			request.getRequestDispatcher("/error/msg.jsp").forward(request, response);
		}
	}

}
