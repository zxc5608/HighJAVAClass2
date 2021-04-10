package kr.or.ddit.member.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.member.dao.IMemberDao;
import kr.or.ddit.member.dao.MemberDaoImpl;
import kr.or.ddit.member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService {
	private IMemberDao dao;   // DAO객체가 저장될 변수 선언
	private static MemberServiceImpl service;  // 1번
	
	// 생성자 - 2번
//	public MemberServiceImpl() {
	private MemberServiceImpl() {
		//dao = new MemberDaoImpl();
		dao = MemberDaoImpl.getInstance();
	}
	
	// 3번
	public static MemberServiceImpl getInstance() {
		if(service==null) service = new MemberServiceImpl();
		return service;
	}

	@Override
	public int insertMember(MemberVO memVo) {
		return dao.insertMember(memVo);
	}

	@Override
	public int deleteMember(String memId) {
		return dao.deleteMember(memId);
	}

	@Override
	public int updateMember(MemberVO memVo) {
		return dao.updateMember(memVo);
	}

	@Override
	public List<MemberVO> getAllMemberList() {
		return dao.getAllMemberList();
	}

	@Override
	public int getMemberCount(String memId) {
		return dao.getMemberCount(memId);
	}

	@Override
	public int updateMember2(Map<String, String> paramMap) {
		return dao.updateMember2(paramMap);
	}

	@Override
	public MemberVO getMember(String memId) {
		return dao.getMember(memId);
	}

}
