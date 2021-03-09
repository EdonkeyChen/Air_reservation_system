package com.flight.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.flight.mapper.InputMapper;
import com.flight.mapper.OrderMapper;
import com.flight.po.OrderConfirm;
import com.flight.po.Passenger;
import com.flight.po.Report;
import com.flight.po.SeatType;
import com.flight.service.OrderService;

public class OrderConfirmComplete extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		ApplicationContext applicationContext= 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		OrderMapper orderMapper = applicationContext.getBean(OrderMapper.class);
		OrderService orderService = (OrderService)applicationContext.getBean("orderServiceImpl");
		req.setCharacterEncoding("UTF-8");
		ServletContext app = super.getServletContext(); 
		String account_id = (String)req.getSession().getAttribute("account_id");
		Integer account_id_oInteger = Integer.valueOf(account_id); 
		String account_name = (String)req.getSession().getAttribute("account_name");
		String flight_no = req.getParameter("flight_no");
		String flight_date = req.getParameter("flight_date");
		Integer ticket_price_total = Integer.valueOf(req.getParameter("ticket_price_total"));
		Integer passengerNum = Integer.valueOf(req.getParameter("passengerNum"));
		Integer ticket_price_no = Integer.valueOf(req.getParameter("ticket_price_no"));
		Integer ticket_price = Integer.valueOf(req.getParameter("ticket_price"));
		List<Passenger> lPassengers = (List<Passenger>)app.getAttribute("lPassengers");
		String payer_name = req.getParameter("payer_name");
		String payer_tel = req.getParameter("payer_tel");
		String payer_email = req.getParameter("payer_email");
		OrderConfirm orderConfirm = 
				new OrderConfirm(account_id_oInteger,ticket_price_total,
						passengerNum,payer_name,payer_tel,payer_email,
						ticket_price_no,ticket_price,lPassengers);
		orderService.orderConfirm(orderConfirm);
		Report report = new Report(flight_no,flight_date,ticket_price,lPassengers.size(),"Schedule");
		orderService.addReport(report);
		app.removeAttribute("lPassengers");
		req.getSession().setAttribute("OrderConfirmFlag", "OrderConfirmFlag");
		resp.sendRedirect("/Web-Curriculum-design/Order-Confirm-Complete.jsp");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
