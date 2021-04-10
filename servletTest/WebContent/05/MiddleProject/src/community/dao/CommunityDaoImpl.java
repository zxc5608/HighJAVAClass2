package community.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import Util.BuildedSqlMapClient;
import VO.communityVO;
import VO.replyVO;
import ibatis.config.SqlMapClientFactory;

public class CommunityDaoImpl implements IcommuntiyDao{
	
	private SqlMapClient smc;
	private static CommunityDaoImpl dao;
	
	private CommunityDaoImpl() {
		smc= BuildedSqlMapClient.getSqlMapClient();
		
	}
	
	public static IcommuntiyDao getDao() {
		if(dao ==null)dao = new CommunityDaoImpl();
		return dao;
		
	}

	@Override
	public List<communityVO> listAll() throws SQLException {
		// TODO Auto-generated method stub
		return smc.queryForList("community.listAll");
	}



	@Override
	public int updatecommunity(communityVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return smc.update("community.updatecommunity");
	}

	//커뮤니티 글쓰기 
	@Override
	public int insertcommunity(communityVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return (Integer) smc.insert("community.insertcommunity",vo);
	}

	@Override
	public int insertReply(replyVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return (Integer) smc.insert("reply.insertReply",vo);
	}

	@Override
	public List<replyVO> listReply() throws SQLException {
		// TODO Auto-generated method stub
		return smc.queryForList("reply.listReply");
		
	}

	@Override
	public int updateReply(replyVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return smc.update("reply.updateReply",vo);
	}

	@Override
	public int deleteReply(replyVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return smc.delete("reply.deleteReply",vo);
	}




}
