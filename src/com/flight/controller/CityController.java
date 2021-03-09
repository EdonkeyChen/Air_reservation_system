package com.flight.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flight.po.City;
import com.flight.service.impl.CityServiceImpl;

@Controller
public class CityController {
	
	@Resource(name = "cityServiceImpl")
	private CityServiceImpl cityServiceImpl;
	
	@RequestMapping(value = "/findAllCity.do")
	public String findAllCity(Model model){
		List<City> cList = this.cityServiceImpl.findAllCity();
		model.addAttribute("cList",cList);
		return "Main";
	}
}
