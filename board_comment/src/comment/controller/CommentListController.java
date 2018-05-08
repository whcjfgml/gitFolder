package comment.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import comment.model.CommentVO;
import comment.service.CommentListImpl;

public class CommentListController implements Controller {
	private CommentListImpl commentListImpl;
public void setCommentListImpl(CommentListImpl commentListImpl) {	
	this.commentListImpl = commentListImpl;
}
	@Override 
	public ModelAndView handleRequest(
		HttpServletRequest request, HttpServletResponse response) throws SQLException { 
		String num = request.getParameter("num"); 
		List<CommentVO> list = commentListImpl.getMessageList(1,Integer.parseInt(num)); 
		//모델 생성
		Map<String, Object> model =	new HashMap<String, Object>(); 
		model.put("list", list ); 
		// 반환값인 ModelAndView 인스턴스 생성 
		ModelAndView modelAndView =	new ModelAndView();
		modelAndView.setViewName("/comment/list.jsp");
		modelAndView.addAllObjects(model); 
		return modelAndView;
	}
}
