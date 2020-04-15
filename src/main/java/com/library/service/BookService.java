package com.library.service;

import com.library.commons.utils.PageBean;
import com.library.po.Book;

import java.util.List;

/**
 * Service层接口
 */
public interface BookService {

    /**
     * 获得所有图书
     */
    public PageBean<Book> getAllBooks(String title, Integer id, String cName,
                                int pageCode, int pageSize);

    /**
     * 得到所有书籍种类
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
     * 用于测试事务管理
     * @param book
     * @param bookBak
     * @return
     */
    public int add(Book book,Book bookBak);

    /**
     * 根据图书编号删除图书
     * @param id 图书id
     * @return
     */
    public int delete(Integer id);

    /**
     * 批量删除
     * @param ids 多个图书id
     * @return
     */
    public int deleteWithBatch(String[] ids);



}
