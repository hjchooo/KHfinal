package kh.com.finalProject.home;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.com.finalProject.publicdata.DataDTO;
import kh.com.finalProject.publicdata.FestivalDTO;
import kh.com.finalProject.publicdata.LeportsDTO;

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