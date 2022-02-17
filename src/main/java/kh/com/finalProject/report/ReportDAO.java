package kh.com.finalProject.report;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReportDAO {
	
	@Autowired
	private SqlSession session;
	
	public ReportDAO() {
		System.out.println("ReportDAO 인스턴스 생성");
	}
	
	// 전체 신고 내용 조회
	public List<ReportDTO> dayReport(int startRange, int endRange) throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("startRange", startRange);
		map.put("endRange", endRange);
		return session.selectList("reportMapper.dayReport", map);
	}
	
	// 전체 신고된 건수
	public int countReport() throws Exception{
		return session.selectOne("reportMapper.countReport");
	}
}
