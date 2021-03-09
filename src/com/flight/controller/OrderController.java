package com.flight.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.flight.service.OrderService;

@Controller
public class OrderController {
	
	@Resource(name = "orderServiceImpl")
	private OrderService orderServiceImpl;

}

