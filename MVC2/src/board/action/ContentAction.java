package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.BoardDAO;
import board.model.BoardVO;

//�۳��� ó��
public class ContentAction implements CommandAction{
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable {
		//�ش� �۹�ȣ
		int num = Integer.parseInt(request.getParameter("num"));
		//�ش� ������ ��ȣ
		String pageNum = request.getParameter("pageNum");
		BoardDAO dbPro = BoardDAO.getInstance();//DBó��
		//�ش� �۹�ȣ�� ���� �ش� ���ڵ�
		BoardVO article = dbPro.getArticle(num);
		//�ش�信�� ����� �Ӽ�
		request.setAttribute("num", num);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("article", article);
		return "/board/content.jsp";//�ش��
	}

}
