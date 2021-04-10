package community.dao;

import java.sql.SQLException;
import java.util.List;

import VO.communityVO;
import VO.replyVO;

public interface IcommuntiyDao {

	//전체 게시글 가져오기
	public List<communityVO> listAll() throws SQLException;
	
	//게시글 등록
	public int insertcommunity(communityVO vo)throws SQLException;
	

	
	//게시글 수정ss
	public int updatecommunity(communityVO vo)throws SQLException;
	
	
	
	//댓글 수정
	public int updateReply(replyVO vo)throws SQLException;
	
	//댓글 등록
	public int insertReply(replyVO vo)throws SQLException;
	
	//댓글리스트
	public List<replyVO>listReply()throws SQLException;


	//댓글삭제
	public int deleteReply(replyVO vo)throws SQLException;
	
}
