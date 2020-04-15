package com.library.service.impl;

import com.library.commons.utils.PageBean;
import com.library.dao.BookDao;
import com.library.po.Book;
import com.library.service.BookService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Resource
    private BookDao bookDao;

    @Override
    public PageBean<Book> getAllBooks(String title, Integer id, String cName, int pageCode, int pageSize) {
        Book book = new Book();
        if (StringUtils.isNotBlank(title)){
            book.setTitle(title);
        }
        if (id != null){
            book.setId(id);
        }
        if (StringUtils.isNotBlank(cName)){
            book.setcName(cName);
        }
        book.setStart((pageCode - 1) * pageSize);
        book.setSize(pageSize);
        //根据条件查询所有
        List<Book> books = bookDao.getAllBooks(book);
        //查询书籍总记录数
        int totalCount = bookDao.getCount(book);
        //通过计算 总记录数/每页数 得到总页数
        Double totalPage = Math.ceil((double)totalCount/pageSize);
        //创建PageBean返回对象
        PageBean<Book> result = new PageBean<>();
        result.setPageCode(pageCode);
        result.setTotalPage(totalPage.intValue());
        result.setTotalCount(totalCount);
        result.setPageSize(pageSize);
        result.setBeanList(books);
        return result;
    }

    @Override
    public List<String> getAllCategory() {
        return bookDao.getAllCategory();
    }

    @Override
    public Book getBookById(Integer id) {
        return bookDao.getBookById(id);
    }

    @Override
    public int add(Book book) {
        return bookDao.add(book);
    }

    @Override
    public int update(Book book) {
        return bookDao.update(book);
    }

    @Transactional
    public int add(Book book,Book bookBak){
        int rows = 0;
        rows = bookDao.add(book);
        rows += bookDao.add(bookBak);
        return rows;
    }

    @Override
    public int delete(Integer id) {
        return bookDao.delete(id);
    }

    @Override
    public int deleteWithBatch(String[] ids) {
        int rows = 0;
        for (String id:ids){
            delete(Integer.parseInt(id));
            rows++;
        }
        return rows;
    }




}
