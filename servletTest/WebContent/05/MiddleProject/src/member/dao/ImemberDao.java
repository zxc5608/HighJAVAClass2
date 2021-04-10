package member.dao;


import java.util.List;

import VO.memberVO;

public interface ImemberDao {
	//회원가입시 정보 넣기
	public int insertmember(memberVO memvo);
	
	//회원탈퇴시 정보 삭제
	public int deletemember(int memno);
	
	//회원정보수정시 정보 수정
	public int updatemember(memberVO memvo);
	
	//로그인시 아이디와 패스워드가 일치하는지 확인
	public List<memberVO> loginok(memberVO memvo);
	
	//마이페이지에서 활용할 계정의 모든정보 불러오기
	
	public List<memberVO> selectAlllist(int memno);
	
	
}
