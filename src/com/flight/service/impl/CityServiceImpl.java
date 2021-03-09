package com.flight.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.flight.mapper.CityMapper;
import com.flight.po.City;
import com.flight.service.CityService;

@Service
public class CityServiceImpl implements CityService {

	@Resource(name = "cityMapper")
	private CityMapper cityMapper;
	
	@Override
	public List<City> findAllCity() {
		return cityMapper.findAllCity();
	}

}
