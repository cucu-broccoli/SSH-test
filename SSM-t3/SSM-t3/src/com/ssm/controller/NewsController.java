package com.ssm.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.entity.Comments;
import com.ssm.entity.News;
import com.ssm.service.NewsService;

@Controller
public class NewsController {
	private static Logger logger = Logger.getLogger(NewsController.class);

@Autowired
private NewsService sService;

//新闻列表主页面
@RequestMapping("/list.do")
public ModelAndView list(){
	return new ModelAndView("list","list",sService.getList());
	}

//新闻标题模糊查询
@RequestMapping("/doSearch.do")
public ModelAndView dosearch(String title){
	return new ModelAndView("list","list",sService.getListByTitle(title));
	}

//新闻列表主页面
@RequestMapping("/tosercom.do")
public ModelAndView toSerCom(Integer id){
//	List<Comments> list=sService.getComById(id);
	System.out.println(1111);
	return new ModelAndView("sercom","list",sService.getComById(id));
	}

@RequestMapping("/toAdd.do")
public ModelAndView toAdd(int id){
	return new ModelAndView("add","newsid",id);
}

@RequestMapping("/doAdd.do")
public ModelAndView doReg(Comments com){
	int num=sService.addCom(com);
	if(num>0){
		//forward:转发   redirect：重定向
		return new ModelAndView("forward:list.do","msg","评论成功");
	}else{
		return null;
	}
}
	//删除新闻
	@RequestMapping("/doDel.do")
	public ModelAndView doDel(int id){
		int num=sService.delNews(id);
		if(num>0){
			//forward:转发   redirect：重定向
			return new ModelAndView("forward:list.do","msg","评论成功");
		}else{
			return null;
		}

}

}
