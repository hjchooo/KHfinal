package kh.com.finalProject.home;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.finalProject.publicdata.DataDTO;
import kh.com.finalProject.publicdata.FestivalDTO;

@Repository
public class HomeDAO {
	@Autowired
	private SqlSession session;
	
	// Top 관광지 리스트
	public List<DataDTO> getDataList() throws Exception{
		return session.selectList("homeMapper.getDataList");
	}
	
	// Top 축제 리스트
	public List<FestivalDTO> getFestivalList() throws Exception{
		return session.selectList("homeMapper.getFestivalList");
	}
}
