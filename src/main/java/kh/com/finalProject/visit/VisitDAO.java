package kh.com.finalProject.visit;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class VisitDAO {
	
	@Autowired
	private SqlSession session;
	
	public int visitInsert() throws Exception{
        return session.insert("visitMapper.insert");
    }
	
	public int totalCount() throws Exception{
		return session.selectOne("visitMapper.totalCount");
	}
	
	public int todayCount() throws Exception{
		return session.selectOne("visitMapper.todayCount");
	}
}
