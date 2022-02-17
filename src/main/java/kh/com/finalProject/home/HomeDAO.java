package kh.com.finalProject.home;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.finalProject.publicdata.DataDTO;
import kh.com.finalProject.publicdata.FestivalDTO;
import kh.com.finalProject.publicdata.LeportsDTO;
import kh.com.finalProject.publicdata.SearchDTO;

@Repository
public class HomeDAO {
	@Autowired
	private SqlSession session;
	
	// 메인페이지 검색
	public List<SearchDTO> mainSearch(String main_search, int startRange, int endRange) throws Exception{
		System.out.println("메인페이지 검색(dao)");
		System.out.println("dao : " + main_search);
		HashMap<String, Object> map = new HashMap<>();
		System.out.println("dao : " + startRange);
		System.out.println("dao : " + endRange);
		map.put("main_search", main_search);
		map.put("startRange", startRange);
		map.put("endRange", endRange);
		return session.selectList("homeMapper.mainSearch", map);
	}
	
	// 검색 결과 데이터 수
	public int countAll(String main_search) throws Exception{
		return session.selectOne("homeMapper.countAll", main_search);
	}
	
	// Top 관광지 리스트
	public List<DataDTO> getDataList() throws Exception{
		return session.selectList("homeMapper.getDataList");
	}
	
	// Top 축제 리스트
	public List<FestivalDTO> getFestivalList() throws Exception{
		return session.selectList("homeMapper.getFestivalList");
	}
	
	// 최신순 관광지 리스트
	public List<DataDTO> getModifiedtimeDataList() throws Exception{
		return session.selectList("homeMapper.getModifiedtimeDataList");
	}
	
	// 최신순 축제 리스트
	public List<FestivalDTO> getModifiedtimeFestivalList() throws Exception{
		return session.selectList("homeMapper.getModifiedtimeFestivalList");
	}
	
	// 캐러셀 레포츠 리스트
	public List<LeportsDTO> getCarouselLeports() throws Exception{
		return session.selectList("homeMapper.getCarouselLeports");
	}
	
	// select 지역별 레포츠
	public List<LeportsDTO> getAreaLeports(String areaType) throws Exception{
		return session.selectList("homeMapper.getAreaLeports", areaType);
	}


}