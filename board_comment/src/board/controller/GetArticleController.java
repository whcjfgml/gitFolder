package board.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.model.BoardVO;
import board.service.GetArticleService;

@Controller
public class GetArticleController {
	private GetArticleService getArticleService; 
	public void setGetArticleService (
		GetArticleService getArticleService) {
		this.getArticleService = getArticleService;
		}
	@RequestMapping 
	public ModelAndView getArticle(Integer num) {
		BoardVO boardVo = this.getArticleService.getArticle (num); 
		Map<String, Object> model =	new HashMap<String, Object>(); 
		model.put("vo", boardVo); 
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/content.jsp");
		mav.addAllObjects(model); 
		return mav;
			}
}
