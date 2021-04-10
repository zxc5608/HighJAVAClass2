package community.service;

import java.sql.SQLException;
import java.util.List;

import VO.communityVO;
import VO.replyVO;
import community.dao.CommunityDaoImpl;
import community.dao.IcommuntiyDao;

public class CommunityServiceImpl implements IcommunityService{
	private IcommuntiyDao dao;
	private static IcommunityService service;
	
	private CommunityServiceImpl() {
		dao= CommunityDaoImpl.getDao();
	}
	public static IcommunityService gerService() {
		if(service == null) service= new CommunityServiceImpl();
		return service;
	}
	
	
	@Override
	public List<communityVO> listAll() {
		List<communityVO>list = null;
		
		try {
			list= dao.listAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int updatecommunity(communityVO vo) {
		int cnt=0;
		try {
			cnt= dao.updatecommunity(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}
	
	
	//커뮤니티 게시글등록
	@Override
	public int insertcommunity(communityVO vo) {
		int seq=0;
		
		try {
			seq=dao.insertcommunity(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return seq;
	}
	@Override
	public int insertReply(replyVO vo) {
		int seq=0;
		
		try {
			seq=dao.insertReply(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return seq;
	}
	@Override
	public List<replyVO> listReply() {
		
		List<replyVO>list= null;
		
		try {
			list=dao.listReply();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	@Override
	public int updateReply(replyVO vo) {
		int res=0;
		 try {
			res= dao.updateReply(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return res;
	}
	@Override
	public int deleteReply(replyVO vo) {
		int cnt = 0;
		try {
			cnt= dao.deleteReply(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}


	
	
	
	
}
