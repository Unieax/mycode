package com.company.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.entity.Operator;
import com.company.service.OperatorServiceImpl;

@Controller
public class OperatorController {
	@Autowired
	OperatorServiceImpl operatorServiceImpl;
	
	@RequestMapping("/selAll")
	public void selAll(Operator operator,HttpServletRequest request,HttpServletResponse response) {
		try {
			List<Operator> list = operatorServiceImpl.selAll();
			request.setAttribute("operators", list);
			request.getRequestDispatcher("sel.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
	@RequestMapping("/sel")
	public void sel(Operator operator,HttpServletRequest request,HttpServletResponse response) {
		try {
			List<Operator> list = operatorServiceImpl.sel(operator);
			System.out.println(operator);
			request.setAttribute("operators", list);
			request.getRequestDispatcher("sel.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
}
