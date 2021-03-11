package com.myfront.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myfront.action.ActionForward;

public interface Action {
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception;
}
