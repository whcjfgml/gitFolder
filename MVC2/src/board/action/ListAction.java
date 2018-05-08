package board.action;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.BoardDAO;
import board.model.BoardVO;

public class ListAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable {
		String pageNum = request.getParameter("pageNum");//������ ��ȣ
		if (pageNum == null) {
			pageNum = "1";
		}
		int pageSize = 5; //�� �������� ���� ����
		int currentPage = Integer.parseInt(pageNum);
		//�� �������� ���۱� ��ȣ
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;//�� �������� ������ �۹�ȣ
		int count = 0;
		int number = 0;
		List<BoardVO>articleList = null;
		BoardDAO dbPro = BoardDAO.getInstance(); // DB����
		count = dbPro.getArticleCount(); //��ü ���� ��
		if (count > 0) { //���� �������� �ش��ϴ� �� ���
			articleList = dbPro.getArticles(startRow, endRow);
		} else {
			articleList = Collections.emptyList();
		}
		number=count-(currentPage -1)*pageSize;//�� ��Ͽ� ǥ���� �۹�ȣ
		//�ش� �信�� ����� �Ӽ�
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("startRow", startRow);
		request.setAttribute("endRow", endRow);
		request.setAttribute("count", count);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("number", number);
		request.setAttribute("articleList", articleList);
		return "/board/list.jsp";//�ش� ��
	}
}
