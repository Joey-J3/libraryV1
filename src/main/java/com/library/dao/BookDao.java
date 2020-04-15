package com.library.dao;

import com.library.po.Book;

import java.util.List;

public interface BookDao {

    /**
     * 获得所有图书
     */
    public List<Book> getAllBooks(Book book);

    /**
     * 获取总记录数
     * @return
     */
    public int getCount(Book book);

    /**
     * 找出所有书籍种类
     * @return
     */
    public List<String> getAllCategory();

    /**
     * 根据id获取图书信息
     * @param id
     */
    public Book getBookById(Integer id);

    /**
     * 添加图书
     * @param book
     * @return
     */
    public int add(Book book);

    /**
     * 更新图书
     * @param book
     * @return
     */
    public int update(Book book);

    /**
     * 根据图书编号删除图书
     * @param id 图书id
     * @return
     */
    public int delete(Integer id);

}
