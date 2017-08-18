package com.ssm.dao;


import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import com.ssm.entity.Comments;
import com.ssm.entity.News;


public interface NewsMapper {
@Select("select * from news_detail order by createdate desc")
List<News> getList();//查询新闻列表
	
@Select("select * from news_comment where newsid=#{newsid}")
List<Comments> getComById(@Param("newsid")Integer id);


@Delete("delete from news_detail where id=#{id}")
int delNews(Integer id);

@Insert("insert into news_comment(newsid,content,author,createdate) values(#{newsid},#{content},#{author},#{createdate})")
int addCom(Comments com);

@Select("select * from news_detail where title like concat('%',#{tit},'%')")
List<News> getListByTitle(String tit);

}
