package com.flight.testmapper;


import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.flight.po.Account;
import com.flight.service.AccountService;

public class TestAccount {
	private ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
	private AccountService accountService = (AccountService)applicationContext.getBean("accountServiceImpl");
	
	@Test
	public void findAccountByAccount(){
		Account account = new Account(1,"q","sa","sa",null);
		Account accountFind = accountService.findAccountByAccount(account);
		System.out.println(accountFind.toString());
	}
	
	@Test
	public void addAccount(){
		Account account = new Account(2,"18059873643","Kio","Silhouette304");
		accountService.addAccount(account);
	}
}
