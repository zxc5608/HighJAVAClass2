package community.service;

import java.util.List;

import VO.communityVO;
import VO.replyVO;

public interface IcommunityService {

	
	//전체 게시글 가져오기
	public List<communityVO> listAll();
	
	//게시글 등록
	
	public int insertcommunity(communityVO vo);
	
	//게시글삭제 
	


	
	//게시글 수정 ㄴㄴ
	public int updatecommunity(communityVO vo);
	
	
	//댓글 수정
	public int updateReply(replyVO vo);
	
	//댓글 등록
	public int insertReply(replyVO vo);
	
	
	//댓글리스트 
	public List<replyVO>listReply();
	
	//댓글삭제
	public int deleteReply(replyVO vo);
	
}
