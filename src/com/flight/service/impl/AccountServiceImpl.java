package com.flight.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.flight.mapper.AccountMapper;
import com.flight.po.Account;
import com.flight.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {
	@Resource(name = "accountMapper")
	private AccountMapper accountMapper;
	
	@Override
	public Account findAccountByAccount(Account account) {
		return this.accountMapper.findAccountByAccount(account);
	}

	@Override
	public int addAccount(Account account) {
		return this.accountMapper.addAccount(account);
	}

}
