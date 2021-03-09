package com.flight.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flight.po.Account;
import com.flight.service.AccountService;

@Controller
public class AccountController {
	
	@Resource(name = "accountServiceImpl")
	private AccountService accountServiceImpl;
	
	@RequestMapping(value = "/findAccountByAccount.do")
	public String findAccountByAccount(Account account,Model model,HttpServletRequest request){
		Boolean loginFlag = false;
		String url = "Main";
		Account accountFind = accountServiceImpl.findAccountByAccount(account);
		if (accountFind != null&& accountFind.getAccount_pwd().equals(account.getAccount_pwd())) {
			request.getSession().setAttribute("account_id",String.valueOf(accountFind.getAccount_id()));
			request.getSession().setAttribute("account_name",accountFind.getAccount_name());
			if (accountFind.getAccount_type() != null) {
				if (accountFind.getAccount_type() == 1) {
					request.getSession().setAttribute("account_type", accountFind.getAccount_type());
					url = "Admin/FunctionChoose";
				}
				if (accountFind.getAccount_type() == 2) {
					request.getSession().setAttribute("account_type", accountFind.getAccount_type());
					url = "Airport/Airport";
				}
			}else {
				url = "Main";
			}
		}else {
			loginFlag = true;
			url = "Login";
		}
		model.addAttribute("loginFlag", loginFlag);
		return url;
	}
	
	@RequestMapping(value = "/addAccount.do")
	public String addAccount(Account account,Model model){
		try {
			Boolean registerFlag = false;
			int i = accountServiceImpl.addAccount(account);
			if (i == 1) {
				registerFlag = true;
				model.addAttribute("account_name", account.getAccount_name());
				Account accountFind = accountServiceImpl.findAccountByAccount(account);
				model.addAttribute("account_id",String.valueOf(accountFind.getAccount_id()));
			}
			model.addAttribute("registerFlag", registerFlag);
		} catch (Exception e) {
			model.addAttribute("registerFalse","registerFalse");
		}
		return "Register";
	}
}
