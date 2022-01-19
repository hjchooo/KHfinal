package kh.com.finalProject.publicdata;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/publicdata")
public class DataController {

	@RequestMapping("/toDetailList")
	public String toDataList() throws Exception {
		return "publicData/dataList";
	}
//
//	// model객체로 데이터 출력
//	@RequestMapping("/getData01.do")
//	public String toDataList01(Model model) throws Exception {
//		model.addAttribute("data", service.getData("JSON"));
//		return "dataList01";
//	}
//
//	// ajax로 데이터 출력
//	// application/json <-- json형태로 반환 받겟다
//	@RequestMapping(value = "/getData02.do", produces = "application/json;charset=UTF-8")
//	@ResponseBody
//	public String getData02() throws Exception {
//		return service.getData("JSON");
//	}
//
//	@RequestMapping("/getData03.do")
//	public String getData03(Model model) throws Exception {
//		model.addAttribute("data", service.getData("XML"));
//		return "dataList03";
//	}
//
//	@RequestMapping("/toDetailList04.do")
//	public String toDetailList() throws Exception {
//		return "dataList04";
//	}
//
//	// xml파일 ajax로 불러오기
//	@RequestMapping(value = "/getData04.do", produces = "application/xml;charset=UTF-8")
//	@ResponseBody
//	public String getData04() throws Exception {
//		return service.getData("XML");
//	}
}
