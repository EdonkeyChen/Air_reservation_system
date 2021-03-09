package com.flight.service;

import com.flight.po.Account;

public interface AccountService {
	public Account findAccountByAccount(Account account);
	public int addAccount(Account account);
}
