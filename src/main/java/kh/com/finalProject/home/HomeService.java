package kh.com.finalProject.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.com.finalProject.publicdata.DataDTO;
import kh.com.finalProject.publicdata.FestivalDTO;

@Service
public class HomeService {
	@Autowired
	private HomeDAO dao;
	
	// Top 관광지 리스트
	public List<DataDTO> getDataList() throws Exception{
		return dao.getDataList();
	}
	
	// Top 축제 리스트
	public List<FestivalDTO> getFestivalList() throws Exception{
		return dao.getFestivalList();
	}
}
