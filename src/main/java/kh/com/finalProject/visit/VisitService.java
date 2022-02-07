package kh.com.finalProject.visit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VisitService {
	
	@Autowired
	private VisitDAO dao;
	
	public int visitInsert() throws Exception {
		return dao.visitInsert();
	}
	
	public int totalCount() throws Exception {
		return dao.totalCount();
	}
	
	public int todayCount() throws Exception {
		return dao.todayCount();
	}

}
