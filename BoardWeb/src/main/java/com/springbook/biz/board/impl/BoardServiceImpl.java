package com.springbook.biz.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.board.BoardService;
import com.springbook.biz.board.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
    @Autowired
    private BoardDAO boardDAO;
   // private LogAdvice log;
    
  /*  public BoardServiceImpl() {
    	log = new LogAdvice();
    }*/
       

    public void insertBoard(BoardVO vo) {
//    	if(vo.getSeq() == 0) {
 //           throw new IllegalArgumentException("0번 글은 등록할 수 없습니다.");
  //      }
    	//log = new LogAdvice();
        boardDAO.insertBoard(vo);
    }

    public void updateBoard(BoardVO vo) {
    	//log = new LogAdvice();
        boardDAO.updateBoard(vo);
    }

    public void deleteBoard(BoardVO vo) {
    	//log = new LogAdvice();
        boardDAO.deleteBoard(vo);
    }

    public BoardVO getBoard(BoardVO vo) {
    	//log = new LogAdvice();
        return boardDAO.getBoard(vo);
    }

    public List<BoardVO> getBoardList(BoardVO vo) {
    	//log = new LogAdvice();
        return boardDAO.getBoardList(vo);
    }
}
