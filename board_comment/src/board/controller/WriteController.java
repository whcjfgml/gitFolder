package board.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import board.model.BoardVO;
import board.service.WriteService;

@Controller 
public class WriteController {
	private WriteService writeService; 
	public void setWriteService(WriteService writeService) {
	this.writeService = writeService;
	}
	@RequestMapping
	public String setView(){
	return "/board/writeForm.jsp";
	}
	@RequestMapping(method = RequestMethod.POST) 
	public ModelAndView onSubmit(HttpServletRequest request, BoardVO boardVo, BindingResult bindingResult) throws Exception{ 
		//�۾��� DB�� ���� 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		String date = sdf.format(new Date()); 
		boardVo.setRegdate(new Date()); 
		this.writeService.insertWriting(boardVo); 
		return new ModelAndView("redirect:/board/list.do");
	}
}
