package com.flight.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.flight.mapper.InputMapper;
import com.flight.po.SeatType;

public class SeatTypeInput extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		ApplicationContext applicationContext= 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		InputMapper inputMapper = applicationContext.getBean(InputMapper.class);
		req.setCharacterEncoding("UTF-8");
		String seat_type_name = req.getParameter("seat_type_name");
		Integer real_type = Integer.valueOf(req.getParameter("real_type"));
		String change1= req.getParameter("change1");
		String change2= req.getParameter("change2");
		String change3= req.getParameter("change3");
		String change4= req.getParameter("change4");
		String refund1= req.getParameter("refund1");
		String refund2= req.getParameter("refund2");
		String refund3= req.getParameter("refund3");
		String refund4= req.getParameter("refund4");
		String refund_change_rules = 
			"7 days before take-off&#9;&#9;&#9;"+change1+"%&#9;&#9;"+refund1+"%"+"\n"+
			"7 days and 48 hours before take-off&#9;"+change2+"%&#9;&#9;"+refund2+"%"+"\n"+
			"48 hours and 4 hours before take-off&#9;"+change3+"%&#9;&#9;"+refund3+"%"+"\n"+
			"4 hours before take-off&#9;&#9;&#9;"+change4+"%&#9;&#9;"+refund4+"%";
		SeatType seatType = new SeatType(seat_type_name,refund_change_rules,real_type);
		inputMapper.addSeatType(seatType);
		req.getSession().setAttribute("addAircraftFlag", "addAircraftFlag");
		resp.sendRedirect("/Web-Curriculum-design/Admin/SeatType-Input.jsp");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
