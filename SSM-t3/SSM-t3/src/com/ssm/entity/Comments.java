package com.ssm.entity;

public class Comments {
private Integer id=null;
private Integer newsid=null;
private String content=null;
private String author=null;
private String createdate=null;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Integer getNewsid() {
	return newsid;
}
public void setNewsid(Integer newsid) {
	this.newsid = newsid;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public String getCreatedate() {
	return createdate;
}
public void setCreatedate(String createdate) {
	this.createdate = createdate;
}

}
