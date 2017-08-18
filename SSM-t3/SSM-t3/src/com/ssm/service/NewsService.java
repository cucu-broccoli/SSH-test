package com.ssm.service;

import java.util.List;
import com.ssm.entity.Comments;
import com.ssm.entity.News;

public interface NewsService {
List<News> getList();
List<Comments> getComById(Integer id);
int addCom(Comments com);
int delNews(Integer id);
List<News> getListByTitle(String title);//根据标题的模糊查询

}
