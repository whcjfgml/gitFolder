package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//�� �Է� �� ó��
public class WriteFormAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable {
		//����۰� �亯���� ����
		int num=0, ref=1, step=0, depth=0;
		try {
			if(request.getParameter("num")!=null) {
				num=Integer.parseInt(request.getParameter("num"));
				ref=Integer.parseInt(request.getParameter("ref"));
				step=Integer.parseInt(request.getParameter("step"));
				depth=Integer.parseInt(request.getParameter("depth"));
			}
		}catch(Exception e) {e.printStackTrace();}
		//�ش� �信�� ����� �Ӽ�
		request.setAttribute("num", num);
		request.setAttribute("ref", ref);
		request.setAttribute("step", step);
		request.setAttribute("depth", depth);
		return "/board/writeForm.jsp";//�ش� ��
	}
}
