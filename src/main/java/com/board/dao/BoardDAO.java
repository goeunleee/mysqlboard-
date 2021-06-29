package com.board.dao;

import java.lang.invoke.CallSite;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.BoardVO;

@Repository
public class BoardDAO {

 @Inject
 private SqlSession sql;
 
 private static String namespace = "com.board.mappers.board";

		 // 게시물 목록
		 public List<BoardVO> list() throws Exception { 
		  
		  return sql.selectList(namespace + ".list");
		 }

		 
		public void write(BoardVO vo) throws Exception {
			sql.insert(namespace + ".write", vo);
			}


		public BoardVO view(int bno) throws Exception {
			return sql.selectOne(namespace+".view",bno);
		}


		public void modify(BoardVO vo) throws Exception {
		 sql.update(namespace + ".modify", vo);
		}


		public void delete(int bno) {
			sql.update(namespace+".delete",bno);
		}
		
		public int count() throws Exception{
			return sql.selectOne(namespace+".count");
					
		}
		
		
		public List<BoardVO> listPage(int displayPost, int postNum) throws Exception {

			HashMap<String, Integer> data = new HashMap<String, Integer>();
			
			data.put("displayPost", displayPost);
			data.put("postNum", postNum);
			
			return sql.selectList(namespace + ".listPage", data);
		}
		
		
		
		
}