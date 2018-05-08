package comment.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import comment.model.CommentVO;
import comment.service.CommentUpdateImpl;

public class CommentUpdateController implements Controller {
	private CommentUpdateImpl commentUpdateImpl; 
	private CommentVO comment; 
	public void setCommentUpdateImpl(
		CommentUpdateImpl commentUpdateImpl) { 
		this.commentUpdateImpl = commentUpdateImpl;
	}
		@Override 
		public ModelAndView handleRequest(
			HttpServletRequest request, HttpServletResponse response) throws Exception { 
			request.setCharacterEncoding("UTF-8"); 
			DateFormat df = DateFormat.getDateInstance(); 
			String date = request.getParameter("regdate");
			comment = new CommentVO(); 
			comment.setComment_id(Integer.parseInt(request.getParameter("id"))); 
			comment.setComment_name(request.getParameter("name")); 
			comment.setComment(request.getParameter("content")); 
			String[] dates = date.split(" "); 
			String[] ymd = dates[0].split("_"); 
			String[] hms = dates[1].split(":");
			Date myDate = new Date(); 
			myDate.setYear(Integer.parseInt(ymd[0]));
			myDate.setMonth(Integer.parseInt(ymd[1]) - 1); 
			myDate.setDate(Integer.parseInt(ymd[2])); 
			myDate.setHours(Integer.parseInt(hms[0])); 
			myDate.setMinutes(Integer.parseInt(hms[1]));
			myDate.setSeconds(Integer.parseInt(hms[2]));
			comment.setRegdate(myDate); 
			commentUpdateImpl.update(comment); 
			// 모델 생성
			Map<String, Object> model =	new HashMap<String, Object>(); 
			model.put("comment", comment); 
			// 반환값이 ModelAndView 생성 
			ModelAndView modelAndView = new ModelAndView(); 
			modelAndView.setViewName("/comment/update.jsp");
			modelAndView.addAllObjects(model); 
			return modelAndView;
		}
}
