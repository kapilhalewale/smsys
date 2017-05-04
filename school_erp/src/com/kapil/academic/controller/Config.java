package com.kapil.academic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Config
{

	@RequestMapping(value="/")
	public String login()
	{
		return "login";
	}
}
