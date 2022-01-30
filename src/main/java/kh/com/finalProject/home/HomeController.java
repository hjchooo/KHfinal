package kh.com.finalProject.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.com.finalProject.publicdata.DataDTO;
import kh.com.finalProject.publicdata.FestivalDTO;

@Controller
public class HomeController {
	@Autowired
	private HomeService service;
	
	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}
	
	// Top 리스트 가져오기
	@RequestMapping("getTopList.do")
	public String getTopList(Model model) throws Exception{
		System.out.println("Top 리스트 가져오기");
		List<DataDTO> dataList = service.getDataList(); 
		List<FestivalDTO> festivalList = service.getFestivalList();
		for(DataDTO dataDto : dataList) {
			System.out.println("dataDto : " + dataDto);
		}
		for(FestivalDTO festivalDto : festivalList) {
			System.out.println("festivalDto : " + festivalDto);
		}
		boolean bool = false;
		model.addAttribute("bool", bool);
		model.addAttribute("dataList", dataList);
		model.addAttribute("festivalList", festivalList);
		return "home";
	}
}

