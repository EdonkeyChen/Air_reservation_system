package com.flight.mapper;

import com.flight.po.Account;

public interface AccountMapper {
	public Account findAccountByAccount(Account account);
	public int addAccount(Account account);
}
