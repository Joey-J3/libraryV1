package com.library.commons.utils;

import java.io.Serializable;
import java.util.List;

public class PageBean<T> implements Serializable {
	private int pageCode;	//当前页
	private int totalPage;	//总页数
	private int totalCount;	//总记录数
	private int pageSize;     	//每页数
	private List<T> beanList; 	//每页显示的数据

	public int getPageCode() {
		return pageCode;
	}

	public void setPageCode(int pageCode) {
		this.pageCode = pageCode;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<T> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<T> beanList) {
		this.beanList = beanList;
	}
}
