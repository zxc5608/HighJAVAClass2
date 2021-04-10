package qna.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import VO.qnaVO;
import ibatis.config.SqlMapClientFactory;

public class QnaDaoImpl implements IqnaDao{

	private SqlMapClient smc;
	private static IqnaDao dao;
	
	private QnaDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IqnaDao getInstance() {
		if(dao == null) dao = new QnaDaoImpl();
		return dao;
	}

	@Override
	public List<qnaVO> listPage(Map<String, Object> map) throws SQLException {
		// TODO Auto-generated method stub
		return smc.queryForList("qna.listPage",map);
	}

	@Override
	public int getTotalCount() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertqna(qnaVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int qnaDelete(int seq) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateQna(qnaVO vo) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
}