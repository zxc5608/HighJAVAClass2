package qna.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import VO.qnaVO;
import qna.dao.IqnaDao;
import qna.dao.QnaDaoImpl;

public class QnaServiceImpl implements IqnaService{
	
	
	private IqnaDao dao;
	private static IqnaService service;
	
	
	private QnaServiceImpl() {
		dao=QnaDaoImpl.getInstance();
	}
	
	public static IqnaService getService() {
		if(service == null) service = new QnaServiceImpl();
		
		return service;
	}

	@Override
	public List<qnaVO> listPage(Map<String, Object> map) {
		List<qnaVO>list =null;
		try {
			list= dao.listPage(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	//
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	//
	public int insertqna(qnaVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int qnaDelete(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateQna(qnaVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}
