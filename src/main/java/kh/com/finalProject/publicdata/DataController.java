package kh.com.finalProject.publicdata;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/publicdata")
public class DataController {
	@Autowired
	private DataService service;

	// 전국 관광지 가져오기
	@RequestMapping("/toDetailList.do")
	public String toDataList(Model model, int currentPage) throws Exception {
		System.out.println("전국 관광지 가져오기!");
		System.out.println("currentPage : " + currentPage);
		int recordTotalCnt1 = service.countAll();
		System.out.println("recordTotalCnt1 : " + recordTotalCnt1);
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<DataDTO> list = service.selectAll(currentPage);
		for (DataDTO dto : list) {
			System.out.println("dto : " + dto);
		}
		String option = "all";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		return "publicData/dataList";
	}

	// 관광지 상세보기
	@RequestMapping("/detailView.do")
	public String detailView(Model model, String contentid) throws Exception {
		System.out.println("관광지 상세보기");
		System.out.println("contentid : " + contentid);
		DataDTO dto = service.selectOne(contentid);
		System.out.println("dto : " + dto.toString());
		model.addAttribute("dto", dto);
		return "/publicData/detailView";
	}

	// 관광지 리스트(지역별로)
	@RequestMapping("/areaDataList.do")
	public String areaDataList(Model model, String addr1, int currentPage) throws Exception {
		System.out.println("관광지 리스트(지역별로)");
		System.out.println("addr1 : " + addr1);
		System.out.println("currentPage : " + currentPage);
		int recordTotalCnt1 = service.countAllArea(addr1);
		System.out.println("recordTotalCnt : " + recordTotalCnt1);
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<DataDTO> list = service.selectAllArea(addr1, currentPage);
		for (DataDTO dto : list) {
			System.out.println("dto : " + dto);
		}
		String option = "all";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		model.addAttribute("addr1", addr1);
		return "/publicData/areaDataList";
	}
	
	// 관광지 리스트 최신순(수정일)
	@RequestMapping("/modifiedtimeList.do")
	public String modifiedtimeList() {
		System.out.println("관광지 리스트 최신순(수정일)");
		return "redirect:/publicdata/toDetailList.do?currentPage=1";
	}

	// 관광지 리스트 인기순
	@RequestMapping("/readcountList.do")
	public String readcountList(Model model, int currentPage) throws Exception {
		System.out.println("관광지 리스트 인기순");
		System.out.println("currentPage : " + currentPage);

		int recordTotalCnt1 = service.countAll();
		System.out.println("recordTotalCnt1 : " + recordTotalCnt1);

		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<DataDTO> list = service.readcountList(currentPage);
		for (DataDTO dto : list) {
			System.out.println("dto : " + dto);
		}
		String option = "readcount";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		return "/publicData/dataList";
	}

	// 관광지 리스트(지역별로) 최신순(수정일)
	@RequestMapping("modifiedtimeAreaList.do")
	public String modifiedtimeAreaList(String addr1, int currentPage) throws Exception {
		System.out.println("관광지 리스트(지역별로) 최신순(수정일)");
		System.out.println("addr1 : " + addr1);
		System.out.println("currentPage : " + currentPage);
		String encodeParam = URLEncoder.encode(addr1, "UTF-8");
		return "redirect:/publicdata/areaDataList.do?addr1=" + encodeParam + "&currentPage=" + currentPage;
	}

	// 관광지 리스트(지역별로) 인기순
	@RequestMapping("readcountAreaList.do")
	public String readcountAreaList(Model model, String addr1, int currentPage) throws Exception {
		System.out.println("관광지 리스트(지역별로) 인기순");
		System.out.println("addr1 : " + addr1);
		System.out.println("currentPage : " + currentPage);

		int recordTotalCnt1 = service.countAllArea(addr1);
		System.out.println("recordTotalCnt1 : " + recordTotalCnt1);

		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<DataDTO> list = service.readcountAreaList(addr1, currentPage);
		for (DataDTO dto : list) {
			System.out.println("dto : " + dto);
		}
		String option = "readcount";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		model.addAttribute("addr1", addr1);
		return "publicData/areaDataList";
	}

	// 축제 리스트 가져오기
	@RequestMapping("/toFestivalList.do")
	public String toFestivalList(Model model, int currentPage) throws Exception {
		System.out.println("축제 리스트 가져오기!");
		System.out.println("currentPage : " + currentPage);

		int recordTotalCnt1 = service.countAllFestival();
		System.out.println("recordTotalCnt1 : " + recordTotalCnt1);

		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<FestivalDTO> list = service.selectAllFestival(currentPage);
		for (FestivalDTO dto : list) {
			System.out.println("dto : " + dto);
		}
		String option = "all";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		return "/publicData/festivalList";
	}

	// 축제 상세보기
	@RequestMapping("/toDetailViewFestival.do")
	public String toDetailViewFestival(Model model, String contentid) throws Exception {
		System.out.println("축제 상세보기!");
		System.out.println("contentid : " + contentid);
		FestivalDTO dto = service.selectOneFestival(contentid);
		System.out.println("dto : " + dto.toString());
		model.addAttribute("dto", dto);
		return "/publicData/detailViewFestival";
	}
	
	// 축제 리스트(지역별로)
	@RequestMapping("/areaFestivalList.do")
	public String areaFestivalList(Model model, String addr1, int currentPage) throws Exception{
		System.out.println("축제 리스트(지역별로)");
		System.out.println("addr1 : " + addr1);
		System.out.println("currentPage : " + currentPage);
		int recordTotalCnt1 = service.countAllFestivalArea(addr1);
		System.out.println("recordTotalCnt : " + recordTotalCnt1);
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<FestivalDTO> list = service.selectAllFestivalArea(addr1, currentPage);
		for (FestivalDTO dto : list) {
			System.out.println("dto : " + dto);
		}
		String option = "all";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		model.addAttribute("addr1", addr1);
		return "/publicData/areaFestivalList";
	}

	// 축제 리스트 최신순(수정일)
	@RequestMapping("/modifiedtimeFestivalList.do")
	public String modifiedtimeFestivalList() {
		System.out.println("축제 리스트 최신순(수정일)");
		return "redirect:/publicdata/toFestivalList.do?currentPage=1";
	}

	// 축제 리스트 인기순
	@RequestMapping("/readcountFestivalList.do")
	public String readcountFestivalList(Model model, int currentPage) throws Exception {
		System.out.println("축제 리스트 인기순");
		System.out.println("currentPage : " + currentPage);

		int recordTotalCnt1 = service.countAllFestival();
		System.out.println("recordTotalCnt1 : " + recordTotalCnt1);

		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<FestivalDTO> list = service.readcountFestivalList(currentPage);
		for (FestivalDTO dto : list) {
			System.out.println("dto : " + dto);
		}
		String option = "readcount";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		return "/publicData/festivalList";
	}
	
	// 축제 리스트(지역별로) 최신순(수정일)
	@RequestMapping("modifiedtimeAreaFestivalList.do")
	public String modifiedtimeAreaFestivalList(String addr1, int currentPage) throws Exception{
		System.out.println("관광지 리스트(지역별로) 최신순(수정일)");
		System.out.println("addr1 : " + addr1);
		System.out.println("currentPage : " + currentPage);
		String encodeParam = URLEncoder.encode(addr1, "UTF-8");
		return "redirect:/publicdata/areaFestivalList.do?addr1=" + encodeParam + "&currentPage=" + currentPage;
	}
	
	// 축제 리스트(지역별로) 인기순
	@RequestMapping("readcountAreaFestivalList.do")
	public String readcountAreaFestivalList(Model model, String addr1, int currentPage) throws Exception{
		System.out.println("관광지 리스트(지역별로) 인기순");
		System.out.println("addr1 : " + addr1);
		System.out.println("currentPage : " + currentPage);

		int recordTotalCnt1 = service.countAllFestivalArea(addr1);
		System.out.println("recordTotalCnt1 : " + recordTotalCnt1);

		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<FestivalDTO> list = service.readcountAreaFestivalList(addr1, currentPage);
		for(FestivalDTO dto : list) {
			System.out.println("dto : " + dto);
		}
		String option = "readcount";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		model.addAttribute("addr1", addr1);
		return "publicData/areaFestivalList";
	}

	// 레포츠 리스트 가져오기
	@RequestMapping("/toLeportsList.do")
	public String toStayList(Model model, int currentPage) throws Exception {
		System.out.println("레포츠리스트 가져오기");
		System.out.println("currentPage : " + currentPage);
		int recordTotalCnt1 = service.countAllLeports();
		System.out.println("recordTotalCnt1 : " + recordTotalCnt1);
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<LeportsDTO> list = service.selectAllLeports(currentPage);
		for (LeportsDTO dto : list) {
			System.out.println("dto : " + dto);
		}
		String option = "all";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);

		return "/publicData/leportsList";
	}

	// 레포츠 상세보기
	@RequestMapping("/toDetailViewLeports.do")
	public String toDetailViewLeports(Model model, String contentid) throws Exception {
		System.out.println("레포츠 상세보기");
		System.out.println("contentid : " + contentid);
		LeportsDTO dto = service.selectOneLeports(contentid);
		System.out.println("dto : " + dto.toString());
		model.addAttribute("dto", dto);
		return "/publicData/detailViewLeports";
	}

	// 레포츠 리스트(지역별로)
	@RequestMapping(value = "/areaLeportsDataList.do", produces = "text/html;charset=utf-8")
	public String areaLeportsDataList(Model model, String addr1, int currentPage) throws Exception {
		System.out.println("레포츠 리스트(지역별로)");
		System.out.println("addr1 : " + addr1);
		System.out.println("currentPage : " + currentPage);
		int recordTotalCnt1 = service.countAllLeportsArea(addr1);
		System.out.println("recordTotalCnt : " + recordTotalCnt1);
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<LeportsDTO> list = service.selectAllLeportsArea(addr1, currentPage);
		for (LeportsDTO dto : list) {
			System.out.println("dto : " + dto);
		}
		String option = "all";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		model.addAttribute("addr1", addr1);
		return "/publicData/areaLeportsList";
	}

	// 레포츠 리스트 최신순(수정일)
	@RequestMapping("/modifiedtimeLeportsList.do")
	public String modifiedtimeLeportsList(int currentPage) {
		System.out.println("레포츠 리스트 최신순(수정일)");
		System.out.println("currentPage : " + currentPage);
		return "redirect:/publicdata/toLeportsList.do?currentPage=1";
	}

	// 레포츠 리스트 인기순
	@RequestMapping("readcountLeportsList.do")
	public String readcountLeportsList(Model model, int currentPage) throws Exception {
		System.out.println("레포츠 리스트 인기순");
		System.out.println("currentPage : " + currentPage);
		int recordTotalCnt1 = service.countAllLeports();
		System.out.println("recordTotalCnt1 : " + recordTotalCnt1);
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<LeportsDTO> list = service.readcountLeportsList(currentPage);
		String option = "readcount";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		return "publicData/leportsList";
	}

	// 레포츠 리스트(지역별로) 최신순(수정일)
	@RequestMapping("/modifiedtimeAreaLeportsList.do")
	public String modifiedtimeAreaLeportsList(String addr1, int currentPage) throws Exception {
		System.out.println("레포츠 리스트(지역별로) 최신순(수정일)");
		System.out.println("addr1 : " + addr1);
		System.out.println("currentPage : " + currentPage);
		String encodeParam = URLEncoder.encode(addr1, "UTF-8");
		return "redirect:/publicdata/areaLeportsDataList.do?addr1=" + encodeParam + "&currentPage=" + currentPage;
	}

	// 레포츠 리스트(지역별로) 인기순
	@RequestMapping("/readcountAreaLeportsList.do")
	public String readcountAreaLeportsList(Model model, String addr1, int currentPage) throws Exception {
		System.out.println("레포츠 리스트(지역별로) 인기순");
		System.out.println("addr1 : " + addr1);
		System.out.println("currentPage : " + currentPage);
		int recordTotalCnt1 = service.countAllLeportsArea(addr1);
		System.out.println("recordTotalCnt1 : " + recordTotalCnt1);
		HashMap<String, Object> naviMap = service.getPageNavi(currentPage, recordTotalCnt1);
		List<LeportsDTO> list = service.readcountAreaLeportsList(addr1, currentPage);
		String option = "readcount";
		model.addAttribute("option", option);
		model.addAttribute("recordTotalCnt1", recordTotalCnt1);
		model.addAttribute("naviMap", naviMap);
		model.addAttribute("list", list);
		model.addAttribute("addr1", addr1);
		return "/publicData/areaLeportsList";
	}

	// 관광지 공공데이터 저장
	@RequestMapping("/saveData.do")
	public String saveSeoul(int numOfRows1, int areaCode1) throws Exception {
		System.out.println("관광지 데이터 저장하기!");
		System.out.println("numOfRows1 : " + numOfRows1);
		System.out.println("areaCode1 : " + areaCode1);
		service.saveData(numOfRows1, areaCode1);
		return "redirect:/manager/main.do?currentPage=1";
	}

	// 축제 공공데이터 저장
	@RequestMapping("saveFestival.do")
	public String saveFestival(int numOfRows2, int areaCode2) throws Exception {
		System.out.println("축제데이터 저장하기!");
		System.out.println("numOfRows2 : " + numOfRows2);
		System.out.println("areaCode2 : " + areaCode2);
		service.festival(numOfRows2, areaCode2);
		return "redirect:/manager/main.do?currentPage=1";
	}

	// 레포츠 공공데이터 저장
	@RequestMapping("/saveLeports.do")
	public String saveLeports(int numOfRows, int areaCode) throws Exception {
		System.out.println("레포츠데이터 저장하기!");
		System.out.println("numOfRows : " + numOfRows);
		System.out.println("areaCode : " + areaCode);
		service.leports(numOfRows, areaCode);
		return "redirect:/manager/main.do?currentPage=1";
	}
	
	// 관광지 공공데이터 삭제
	@RequestMapping("/deleteTourist.do")
	public String deleteTourist() throws Exception{
		System.out.println("관광지 데이터 삭제하기!");
		service.deleteTourist();
		return "redirect:/manager/main.do?currentPage=1";
	}
	
	// 축제 공공데이터 삭제
	@RequestMapping("deleteFestival.do")
	public String deleteFestival() throws Exception{
		System.out.println("축제 공공데이터 삭제하기!");
		service.deleteFestival();
		return "redirect:/manager/main.do?currentPage=1";
	}
	
	// 레포츠 공공데이터 삭제
	@RequestMapping("/deleteLeports.do")
	public String deleteLeports() throws Exception{
		System.out.println("레포츠 데이터 삭제하기!");
		service.deleteLeports();
		return "redirect:/manager/main.do?currentPage=1";
	}

}
