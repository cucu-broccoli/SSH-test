package com.ssm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ssm.dao.NewsMapper;
import com.ssm.entity.Comments;
import com.ssm.entity.News;
import com.ssm.service.NewsService;

@Service("NewsService")
public class NewsServiceImpl implements NewsService {
	@Autowired//@Resource也可以将需要的资源自动注入进来
	private NewsMapper newsMapper;

	@Override
	public List<News> getList() {
		return newsMapper.getList();
	}

	@Override
	public List<Comments> getComById(Integer id) {
		return newsMapper.getComById(id);
	}

	@Override
	public int addCom(Comments com) {
		return newsMapper.addCom(com);
	}

	@Override
	public int delNews(Integer id) {
		return newsMapper.delNews(id);
	}

	@Override
	public List<News> getListByTitle(String title) {
		return newsMapper.getListByTitle(title);
	}

}
