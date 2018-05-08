package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	private static BoardDAO instance = null;
	private BoardDAO() {
	}
	public static BoardDAO getInstance() {
		if(instance == null) {
			synchronized (BoardDAO.class) {
				instance = new BoardDAO();				
			}
		}
		return instance;
	}
	//이곳에 게시판 작업의 기능 하나하나를 메소드로 추가할것이다
	public int getArticleCount() {//전체 글의 개수를 알아내 주는 메소드
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = 0;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select count(*) from board");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch (SQLException ex) {}
			if (pstmt != null) try {pstmt.close(); }catch (SQLException ex) {}
			if (conn != null) try {conn.close(); }catch (SQLException ex) {}
		}
		System.out.println("전체 글의 개수 : " + x);
		return x;
	}
	//글 목록을 얻어 와서 List형태로 리턴해 줄 메소드
	public List<BoardVO> getArticles(int start, int end){ //수정1단계
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BoardVO> articleList = null;
		try {
			conn = ConnUtil.getConnection();
			System.out.println("커넥션 생성");
			/*(수정2*/
		/*	select * from (select rownum rnum, num, writer, email, subject, pass, regdate, readcount, reg, step, depth, content, ip from (select * from board order by ref desc, step asc)) where rnum>=? and rnum<=?)*/
			pstmt = conn.prepareStatement("select * from ( select rownum rnum, num, writer, email, subject, pass, regdate, readcount, ref, step, depth, content, ip from ( select * from board order by ref desc, step asc ) ) where rnum>=? and rnum<=?"); 
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			System.out.println("쿼리문 실행1");
			if (rs.next()) {
				articleList = new ArrayList<BoardVO>(5);//수정<4>
				System.out.println("쿼리문 실행2");
				do {
					BoardVO article = new BoardVO();
					
					article.setNum(rs.getInt("num"));
					article.setWriter(rs.getString("writer"));
					article.setEmail(rs.getString("email"));
					article.setSubject(rs.getString("subject"));
					article.setPass(rs.getString("pass"));
					article.setRegdate(rs.getTimestamp("regdate"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setStep(rs.getInt("step"));
					article.setDepth(rs.getInt("depth"));
					article.setContent(rs.getString("content"));
					article.setIp(rs.getString("ip"));
					articleList.add(article);
					System.out.println("쿼리문 실행3");
				}while (rs.next());
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}	finally {
			if (rs != null) try { rs.close(); } catch (SQLException ex) {}
			if (pstmt != null) try {pstmt.close(); }catch (SQLException ex) {}
			if (conn != null) try {conn.close(); }catch (SQLException ex) {}
		}
		return articleList;
	}
	//글 저장
	public void insertArticle(BoardVO article) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int num = article.getNum();
		int ref = article.getRef();
		int step = article.getStep();
		int depth = article.getDepth();
		int number = 0;
		
		String sql = "";
		
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select max(num) from board");
			rs = pstmt.executeQuery();
			if (rs.next()) number = rs.getInt(1) + 1;
			else number = 1;
			if (num != 0) { //답변글일 경우
				sql = "update board set step=step+1 where ref= ? and step>?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, step);
				pstmt.executeUpdate();
				step = step +1;
				depth = depth +1;
			} else { //새글일 경우
				ref = number;
				step = 0;
				depth = 0;
			}//쿼리를 작성
			sql = "insert into board(num, writer, email, subject, pass,  ref, step, depth, regdate,  content, ip)values(board_seq.nextval,?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getWriter());
			pstmt.setString(2, article.getEmail());
			pstmt.setString(3, article.getSubject());
			pstmt.setString(4, article.getPass());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, step);
			pstmt.setInt(7, depth);
			pstmt.setTimestamp(8, article.getRegdate());
			pstmt.setString(9, article.getContent());
			pstmt.setString(10, article.getIp());
			pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch (SQLException ex) {}
			if (pstmt != null) try {pstmt.close(); }catch (SQLException ex) {}
			if (conn != null) try {conn.close(); }catch (SQLException ex) {}
		}
	 }
	public BoardVO getArticle(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO article = null;
		
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("update board set readcount=readcount+1 where num =?");
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			System.out.println("커넥션1");
			pstmt = conn.prepareStatement("select * from board where num = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			System.out.println("커넥션2");
			if (rs.next()) {
				article = new BoardVO();
				article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
				article.setEmail(rs.getString("email"));
				article.setSubject(rs.getString("subject"));
				article.setPass(rs.getString("pass"));
				article.setRegdate(rs.getTimestamp("regdate"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setStep(rs.getInt("step"));
				article.setDepth(rs.getInt("depth"));
				article.setContent(rs.getString("content"));
				article.setIp(rs.getString("ip"));
				System.out.println("커넥션3");
			}
		} catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch (SQLException ex) {}
			if (pstmt != null) try {pstmt.close(); }catch (SQLException ex) {}
			if (conn != null) try {conn.close(); }catch (SQLException ex) {}
		}
		return article;
	}
	//수정할 글을 받아오는 메소드
	public BoardVO updateGetArticle(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO article = null;
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select * from board where num = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				article = new BoardVO();
				article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
				article.setEmail(rs.getString("email"));
				article.setSubject(rs.getString("subject"));
				article.setPass(rs.getString("pass"));
				article.setRegdate(rs.getTimestamp("regdate"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setStep(rs.getInt("step"));
				article.setDepth(rs.getInt("depth"));
				article.setContent(rs.getString("content"));
				article.setIp(rs.getString("ip"));
				}
			} catch(Exception ex) {
				ex.printStackTrace();
			}finally {
				if (rs != null) try { rs.close(); } catch (SQLException ex) {}
				if (pstmt != null) try {pstmt.close(); }catch (SQLException ex) {}
				if (conn != null) try {conn.close(); }catch (SQLException ex) {}
			}
			return article;
		}
	//글 수정 처리하기
	public int updateArticle(BoardVO article) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpassword = "";
		String sql = "";
		int result = -1;//결과값
		
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select pass from board where num =?");
			pstmt.setInt(1, article.getNum());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dbpassword = rs.getString("pass");//비밀번호 비교 
					 if(dbpassword.equals(article.getPass())) {
					sql = "update board set writer=?,email=?,subject=?";
					sql += ",content=? where num=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, article.getWriter());
					pstmt.setString(2, article.getEmail());
					pstmt.setString(3, article.getSubject());
					pstmt.setString(4, article.getContent());
					pstmt.setInt(5, article.getNum());
					pstmt.executeUpdate();
					result = 1;//수정 성공
				}else {
					result = 0; //수정실패
				}
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null) try { rs.close(); } catch (SQLException ex) {}
			if (pstmt != null) try {pstmt.close(); }catch (SQLException ex) {}
			if (conn != null) try {conn.close(); }catch (SQLException ex) {}
		}
		return result;
		}
	//게시물 삭제
	public int deleteArticle(int num, String pass) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpassword = "";
		int result = -1;//결과값
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select pass from board where num =?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dbpassword = rs.getString("pass");
				if (dbpassword.equals(pass)) {
						pstmt = conn.prepareStatement("delete from board where num=?");
						pstmt.setInt(1, num);
						pstmt.executeUpdate();
						result = 1; //글 삭제 성공
				}	else
					result = 0; //비밀번호 틀림
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null) try { rs.close(); } catch (SQLException ex) {}
			if (pstmt != null) try {pstmt.close(); }catch (SQLException ex) {}
			if (conn != null) try {conn.close(); }catch (SQLException ex) {}
		}
		return result;
	}
}
