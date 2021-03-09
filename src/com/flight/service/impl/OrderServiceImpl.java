package com.flight.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.flight.mapper.OrderMapper;
import com.flight.po.OrderConfirm;
import com.flight.po.OrderDetail;
import com.flight.po.OrderPrimary;
import com.flight.po.Passenger;
import com.flight.po.Report;
import com.flight.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Resource(name = "orderMapper")
	private OrderMapper orderMapper;

	@Override
	public int addOrderDetail(OrderDetail orderDetail) {
		return orderMapper.addOrderDetail(orderDetail);
	}

	@Override
	public int addOrderPrimary(OrderPrimary orderPrimary) {
		return orderMapper.addOrderPrimary(orderPrimary);
	}

	@Override
	public int findOrderNo() {
		return orderMapper.findOrderNo();
	}

	@Override
	public void orderConfirm(OrderConfirm orderConfirm) {
		OrderPrimary orderPrimary = 
				new OrderPrimary(orderConfirm.getAccount_id(),orderConfirm.getTotal_price(),
						"2019-6-28",orderConfirm.getPassenger_num(),1,orderConfirm.getPayer_name(),
							orderConfirm.getPayer_tel(),orderConfirm.getPayer_email());
		System.out.println(orderConfirm.getTotal_price());
		addOrderPrimary(orderPrimary);
		Integer order_primary_no = findOrderNo();
		for(Passenger passenger : orderConfirm.getlPassengers()){
			addPassenger(passenger);
			Integer passengerId = findOrderNo(); 
			System.out.println(passengerId);
			OrderDetail orderDetail = new OrderDetail(
					orderConfirm.getTicket_price_no(),
					passengerId,
					order_primary_no,
					orderConfirm.getTicket_price());
			addOrderDetail(orderDetail);
			List<Integer> list = findAllTicketPricNo(orderConfirm.getTicket_price_no());
			for(Integer integer : list){
				updateTicketNumber(integer);
			}
		}
	}

	@Override
	public int addPassenger(Passenger passenger) {
		return orderMapper.addPassenger(passenger);
	}

	@Override
	public List<Integer> findAllTicketPricNo(Integer integer) {
		return orderMapper.findAllTicketPricNo(integer);
	}

	@Override
	public int updateTicketNumber(Integer integer) {
		return orderMapper.updateTicketNumber(integer);
	}

	@Override
	public int addReport(Report report) {
		return orderMapper.addReport(report);
	}

	
}
