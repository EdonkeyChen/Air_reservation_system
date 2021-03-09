package com.flight.service;

import java.util.List;

import com.flight.po.OrderConfirm;
import com.flight.po.OrderDetail;
import com.flight.po.OrderPrimary;
import com.flight.po.Passenger;
import com.flight.po.Report;

public interface OrderService {
	public int addOrderDetail(OrderDetail orderDetail);
	public int addOrderPrimary(OrderPrimary orderPrimary);
	public int addPassenger(Passenger passenger);
	public int findOrderNo();
	public void orderConfirm(OrderConfirm orderConfirm);
	public List<Integer> findAllTicketPricNo(Integer integer);
	public int updateTicketNumber(Integer integer);
	public int addReport(Report report);
}
