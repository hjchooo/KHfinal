package kh.com.finalProject.home;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.com.finalProject.publicdata.DataDTO;
import kh.com.finalProject.publicdata.FestivalDTO;
import kh.com.finalProject.publicdata.LeportsDTO;
import kh.com.finalProject.publicdata.SearchDTO;

@Controller
public class HomeController {
	@Autowired
	private HomeService service;
	@Autowired
	private HttpSession session;

	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}

	// 메인페이지 검색
	@RequestMapping("/mainSearch.do")
	public String mainSearch(Model model, String main_search, int currentPage) throws Exception {
		System.out.println("메인페이지 검색");
		System.out.println("main_search : " + main_search);
		System.out.println("currentPage : " + currentPage);
		int recordTotalCnt1 = service.countAll(main_search);
		System.out.println("recordTotalCnt1 : " + recordTotalCnt1);
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<SearchDTO> searchList = service.mainSearch(main_search, currentPage);
		for(SearchDTO dto : searchList) {
			System.out.println("dto : " + dto);
		}
		model.addAttribute("main_search", main_search);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("searchList", searchList);
		return "/publicData/mainSearchList";
	}

	// Top 관광지 리스트
	@RequestMapping(value = "/getTopDataList.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<DataDTO> getTopDataList() throws Exception {
		System.out.println("Top 관광지 리스트 가져오기");
		List<DataDTO> dataList = service.getDataList();

		if (dataList != null) {
			for (DataDTO dataDto : dataList) {
				System.out.println("dataDto : " + dataDto);
			}
			return dataList;
		} else {
			return null;
		}
	}

	// Top 축제 리스트
	@RequestMapping(value = "/getTopFestivalList.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<FestivalDTO> getTopFestivalList() throws Exception {
		System.out.println("Top 축제 리스트 가져오기");
		List<FestivalDTO> festivalList = service.getFestivalList();

		if (festivalList != null) {
			for (FestivalDTO festivalDto : festivalList) {
				System.out.println("festivalDto : " + festivalDto);
			}
			return festivalList;
		} else {
			return null;
		}
	}

	// 최신순 관광지 리스트
	@RequestMapping(value = "/getModifiedtimeDataList.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<DataDTO> getModifiedtimeDataList() throws Exception {
		System.out.println("최신순 관광지 리스트 가져오기");
		List<DataDTO> dataList = service.getModifiedtimeDataList();

		if (dataList != null) {
			for (DataDTO dataDto : dataList) {
				System.out.println("dataDto : " + dataDto);
			}
			return dataList;
		} else {
			return null;
		}
	}

	// 최신순 축제 리스트
	@RequestMapping(value = "/getModifiedtimeFestivalList.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<FestivalDTO> getModifiedtimeFestivalList() throws Exception {
		System.out.println("최신순 축제 리스트 가져오기");
		List<FestivalDTO> festivalList = service.getModifiedtimeFestivalList();

		if (festivalList != null) {
			for (FestivalDTO festivalDto : festivalList) {
				System.out.println("festivalDto : " + festivalDto);
			}
			return festivalList;
		} else {
			return null;
		}
	}

	// 캐러셀 레포츠 리스트
	@RequestMapping(value = "/getCarouselLeports.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<LeportsDTO> getCarouselLeports() throws Exception {
		System.out.println("캐러셀 레포츠 가져오기");
		List<LeportsDTO> leportsList = service.getCarouselLeports();

		if (leportsList != null) {
			for (LeportsDTO leportsDto : leportsList) {
				System.out.println("leportsDto : " + leportsDto);
			}
			return leportsList;
		} else {
			return null;
		}
	}

	// select 지역별 레포츠
	@RequestMapping(value = "/getAreaLeports.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<LeportsDTO> getAreaLeports(String areaType) throws Exception {
		System.out.println("select 지역별 레포츠");
		System.out.println("areaType : " + areaType);
		List<LeportsDTO> areaLeports = service.getAreaLeports(areaType);

		if (areaLeports != null) {
			for (LeportsDTO leportsDto : areaLeports) {
				System.out.println("leportsDto : " + leportsDto);
			}
			return areaLeports;
		} else {
			return null;
		}
	}

}
