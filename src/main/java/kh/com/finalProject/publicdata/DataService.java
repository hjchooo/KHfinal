package kh.com.finalProject.publicdata;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

@Service
public class DataService {
	@Autowired
	private DataDAO dataDao;
	
	private int recordCntPerPage = 10;
	private int naviCntPerPage = 10;
	
	// 전국 관광지 가져오기
	public List<DataDTO> selectAll(int currentPage) throws Exception{
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<DataDTO> list = dataDao.selectAll(startRange, endRange);
		return list;
	}
	
	// 전국 관광지 데이터 수 가져오기
	public int countAll() throws Exception{
		return dataDao.countAll();
	}
	
	// 관광지 상세보기
	public DataDTO selectOne(String contentid) throws Exception{
		return dataDao.selectOne(contentid);
	}
	
	// 관광지 리스트(지역별로)
	public List<DataDTO> selectAllArea(String addr1, int currentPage) throws Exception{
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<DataDTO> list = dataDao.selectAllArea(addr1, startRange, endRange);
		return list;
	}
	
	// 관광지 리스트(지역별로) 데이터 수 가져오기
	public int countAllArea(String addr1) throws Exception{
		return dataDao.countAllArea(addr1);
	}
	
	// 관광지 리스트 인기순
	public List<DataDTO> readcountList(int currentPage) throws Exception {
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<DataDTO> list = dataDao.readcountList(startRange, endRange);
		return list;
	}
	
	// 축제 데이터 수 가져오기
	public int countAllFestival() throws Exception{
		return dataDao.countAllFestival();
	}
	
	// 축제 리스트 가져오기
	public List<FestivalDTO> selectAllFestival(int currentPage) throws Exception{
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<FestivalDTO> list = dataDao.selectAllFestival(startRange, endRange);
		return list;
	}
	
	// 축제 상세보기
	public FestivalDTO selectOneFestival(String contentid) throws Exception{
		return dataDao.selectOneFestival(contentid);
	}
	
	// 축제 리스트(지역별로)
	public List<FestivalDTO> selectAllFestivalArea(String addr1, int currentPage) throws Exception{
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<FestivalDTO> list = dataDao.selectAllFestivalArea(addr1, startRange, endRange);
		return list;
	}
	
	// 축제 리스트(지역별로) 데이터 수 가져오기
	public int countAllFestivalArea(String addr1) throws Exception{
		return dataDao.countAllFestivalArea(addr1);
	}
	
	// 축제 리스트 인기순
	public List<FestivalDTO> readcountFestivalList(int currentPage) throws Exception {
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<FestivalDTO> list = dataDao.readcountFestivalList(startRange, endRange);
		return list;
	}
	
	// 축제 리스트(지역별로) 인기순
	public List<FestivalDTO> readcountAreaFestivalList(String addr1, int currentPage) throws Exception{
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<FestivalDTO> list = dataDao.readcountAreaFestivalList(addr1, startRange, endRange);
		return list;
	}
	
	// 관광지 리스트(지역별로) 인기순
	public List<DataDTO> readcountAreaList(String addr1, int currentPage) throws Exception{
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<DataDTO> list = dataDao.readcountAreaList(addr1, startRange, endRange);
		return list;
	}
	
	// 레포츠 리스트 가져오기
	public List<LeportsDTO> selectAllLeports(int currentPage) throws Exception {
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<LeportsDTO> list = dataDao.selectAllLeports(startRange, endRange);
		return list;
	}
	
	// 레포츠 데이터 수 가져오기
	public int countAllLeports() throws Exception{
		return dataDao.countAllLeports();
	}
	
	// 레포츠 상세보기
	public LeportsDTO selectOneLeports(String contentid) throws Exception{
		return dataDao.selectOneLeports(contentid);
	}
	
	// 레포츠 리스트(지역별로)
	public List<LeportsDTO> selectAllLeportsArea(String addr1, int currentPage) throws Exception{
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<LeportsDTO> list = dataDao.selectAllLeportsArea(addr1, startRange, endRange);
		return list;
	}
	
	// 레포츠 데이터 수 가져오기(지역별로)
	public int countAllLeportsArea(String addr1) throws Exception{
		return dataDao.countAllLeportsArea(addr1);
	}
	
	// 레포츠 리스트 인기순
	public List<LeportsDTO> readcountLeportsList(int currentPage) throws Exception{
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<LeportsDTO> list = dataDao.readcountLeportsList(startRange, endRange);
		return list;
	}
	
	// 레포츠 리스트(지역별로) 인기순
	public List<LeportsDTO> readcountAreaLeportsList(String addr1, int currentPage) throws Exception{
		int startRange = currentPage * recordCntPerPage - (recordCntPerPage - 1);
		int endRange = currentPage * recordCntPerPage;
		System.out.println("startRange : " + startRange);
		System.out.println("endRange : " + endRange);
		List<LeportsDTO> list = dataDao.readcountAreaLeportsList(addr1, startRange, endRange);
		return list;
	}
	
	// 게시판 페이징
	public HashMap<String, Object> getPageNavi(int currentPage, int recordTotalCnt1) throws Exception {
		int recordTotalCnt = recordTotalCnt1;

		int pageTotalCnt = 0;
		if (recordTotalCnt % recordCntPerPage > 0) {
			pageTotalCnt = (recordTotalCnt / recordCntPerPage) + 1;
		} else {
			pageTotalCnt = recordTotalCnt / recordCntPerPage;
		}

		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCnt) {
			currentPage = pageTotalCnt;
		}

		int startNavi = ((currentPage - 1) / naviCntPerPage) * naviCntPerPage + 1;
		int endNavi = startNavi + naviCntPerPage - 1;

		if (endNavi > pageTotalCnt) {
			endNavi = pageTotalCnt;
		}

		boolean needPrev = true;
		boolean needNext = true;
		if (startNavi == 1)
			needPrev = false;
		if (endNavi == pageTotalCnt)
			needNext = false;

		System.out.println("startNavi : " + startNavi);
		System.out.println("endNavi : " + endNavi);
		System.out.println("needPrev : " + needPrev);
		System.out.println("needNext : " + needNext);

		HashMap<String, Object> map = new HashMap<>();
		map.put("startNavi", startNavi);
		map.put("endNavi", endNavi);
		map.put("needPrev", needPrev);
		map.put("needNext", needNext);
		map.put("currentPage", currentPage);

		return map;
	}
	
	// 관광지 공공데이터 저장
	public void saveData(int numOfRows1, int areaCode1) throws Exception {
		List<DataDTO> dataList = new ArrayList<>();
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		try {
			DocumentBuilder builder = factory.newDocumentBuilder();

			StringBuffer pharm_url = new StringBuffer();
			pharm_url.append("http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList");
			pharm_url.append(
					"?serviceKey=9gMNoeUir%2FGIqZlgXIA6wsUL6dIQCeIfnLJ6dx8QWbPVu%2B%2BwZn8tFDs%2BYG0lw%2B%2B%2Bw7zW2gVOYDpXOwYlO%2FWNoA%3D%3D&pageNo=1&numOfRows="+numOfRows1+"&MobileApp=AppTest&MobileOS=ETC&arrange=p&contentTypeId=14&areaCode="+areaCode1+"&listYN=Y");

			URL url = new URL(pharm_url.toString());

			BufferedInputStream xmldata = new BufferedInputStream(url.openStream());

			Document document = builder.parse(xmldata);
			Element root = document.getDocumentElement();
			System.out.println("1 : " + root.getTagName());
			NodeList list = root.getElementsByTagName("item");
			System.out.println("관광지");
			
			for (int i = 0; i < list.getLength(); i++) {
				DataDTO dto = new DataDTO();
				Node node = list.item(i);
				NodeList item_childlist = node.getChildNodes();
				for(int j = 0; j < item_childlist.getLength(); j ++) {
					Node item_child = item_childlist.item(j);
					if(item_child.getNodeName().equals("addr1")) {
						dto.setAddr1(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("addr2")) {
						dto.setAddr2(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("contentid")) {
						dto.setContentid(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("firstimage")) {
						dto.setFirstimage(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("firstimage2")) {
						dto.setFirstimage2(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("mapx")) {
						dto.setMapx(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("mapy")) {
						dto.setMapy(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("modifiedtime")) {
						dto.setModifiedtime(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("readcount")) {
						int readcount = Integer.parseInt(item_child.getTextContent());
						dto.setReadcount(readcount);
					}else if(item_child.getNodeName().equals("title")) {
						dto.setTitle(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("zipcode")) {
					}else {
						dto.setContent(null);
					}
				}
				dataList.add(dto);
			}
			dataDao.saveData(dataList);
			
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		}
	}

		
	// 축제 공공데이터 저장
	public void festival(int numOfRows2, int areaCode2) throws Exception{
		List<FestivalDTO> dataList = new ArrayList<>();
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		try {
			DocumentBuilder builder = factory.newDocumentBuilder();

			StringBuffer pharm_url = new StringBuffer();
			pharm_url.append("http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival");
			pharm_url.append(
					"?serviceKey=9gMNoeUir%2FGIqZlgXIA6wsUL6dIQCeIfnLJ6dx8QWbPVu%2B%2BwZn8tFDs%2BYG0lw%2B%2B%2Bw7zW2gVOYDpXOwYlO%2FWNoA%3D%3D&numOfRows="+numOfRows2+"&pageNo=1&MobileOS=ETC&MobileApp=AppTest&arrange=P&listYN=Y&areaCode="+areaCode2+"&eventStartDate=20211201&eventEndDate=20220228");

			URL url = new URL(pharm_url.toString());

			BufferedInputStream xmldata = new BufferedInputStream(url.openStream());

			Document document = builder.parse(xmldata);
			Element root = document.getDocumentElement();
			System.out.println(root.getTagName());
			NodeList list = root.getElementsByTagName("item");
			System.out.println("축제");
				
			for (int i = 0; i < list.getLength(); i++) {
				FestivalDTO dto = new FestivalDTO();
				Node node = list.item(i);
				NodeList item_childlist = node.getChildNodes();
				for(int j = 0; j < item_childlist.getLength(); j ++) {
					Node item_child = item_childlist.item(j);
					if(item_child.getNodeName().equals("addr1")) {
						dto.setAddr1(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("addr2")) {
						dto.setAddr2(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("contentid")) {
						dto.setContentid(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("firstimage")) {
						dto.setFirstimage(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("firstimage2")) {
						dto.setFirstimage2(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("modifiedtime")) {
//						String modifiedtimeStr = item_child.getTextContent();
//						SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMddhhmmss");
//						Date modifiedtime = transFormat.parse(modifiedtimeStr);
						dto.setModifiedtime(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("readcount")) {
						int readcount = Integer.parseInt(item_child.getTextContent());
						dto.setReadcount(readcount);
					}else if(item_child.getNodeName().equals("title")) {
						dto.setTitle(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("tel")) {
						dto.setTel(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("eventenddate")) {
//						String eventenddateStr = item_child.getTextContent();
//						SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMdd");
//						Date eventenddate = transFormat.parse(eventenddateStr);
						dto.setEventenddate(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("eventstartdate")) {
//						String eventstartdateStr = item_child.getTextContent();
//						SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMdd");
//						Date eventstartdate = transFormat.parse(eventstartdateStr);
						dto.setEventstartdate(item_child.getTextContent());
					}else {
						dto.setContent(null);
					}
				}
				dataList.add(dto);
			}
			dataDao.festival(dataList);

		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		}
	}
		
	// 레포츠 공공데이터 저장
	public void leports(int numOfRows, int areaCode) throws Exception{
		System.out.println("서비스 areaCode : " + areaCode);
		List<LeportsDTO> dataList = new ArrayList<>();
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		try {
			DocumentBuilder builder = factory.newDocumentBuilder();

			StringBuffer pharm_url = new StringBuffer();
			pharm_url.append("http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList");
			pharm_url.append(
					"?serviceKey=9gMNoeUir%2FGIqZlgXIA6wsUL6dIQCeIfnLJ6dx8QWbPVu%2B%2BwZn8tFDs%2BYG0lw%2B%2B%2Bw7zW2gVOYDpXOwYlO%2FWNoA%3D%3D&pageNo=1&numOfRows="+numOfRows+"&MobileApp=AppTest&MobileOS=ETC&arrange=P&contentTypeId=28&areaCode="+areaCode+"&listYN=Y");

			URL url = new URL(pharm_url.toString());

			BufferedInputStream xmldata = new BufferedInputStream(url.openStream());

			Document document = builder.parse(xmldata);
			Element root = document.getDocumentElement();
			System.out.println(root.getTagName());
			NodeList list = root.getElementsByTagName("item");
			System.out.println("레포츠");
			
			for (int i = 0; i < list.getLength(); i++) {
				LeportsDTO dto = new LeportsDTO();
				Node node = list.item(i);
				NodeList item_childlist = node.getChildNodes();
				for(int j = 0; j < item_childlist.getLength(); j ++) {
					Node item_child = item_childlist.item(j);
					if(item_child.getNodeName().equals("addr1")) {
						dto.setAddr1(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("addr2")) {
						dto.setAddr2(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("contentid")) {
						dto.setContentid(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("firstimage")) {
						dto.setFirstimage(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("firstimage2")) {
						dto.setFirstimage2(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("mapx")) {
						dto.setMapx(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("mapy")) {
						dto.setMapy(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("modifiedtime")) {
//						String modifiedtimeStr = item_child.getTextContent();
//						SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMddhhmmss");
//						Date modifiedtime = transFormat.parse(modifiedtimeStr);
						dto.setModifiedtime(item_child.getTextContent());
					}else if(item_child.getNodeName().equals("readcount")) {
						int readcount = Integer.parseInt(item_child.getTextContent());
						dto.setReadcount(readcount);
					}else if(item_child.getNodeName().equals("title")) {
						dto.setTitle(item_child.getTextContent());
					}else {
						dto.setContent(null);
					}
				}
				dataList.add(dto);
			}
			dataDao.leports(dataList);

		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		}
	}
	
	// 관광지 공공데이터 삭제
	public void deleteTourist() throws Exception{
		dataDao.deleteTourist();
	}
	
	// 축제 공공데이터 삭제
	public void deleteFestival() throws Exception{
		dataDao.deleteFestival();
	}
	
	// 레포츠 공공데이터 삭제
	public void deleteLeports() throws Exception{
		dataDao.deleteLeports();
	}
}
