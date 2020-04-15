package com.library;

import com.library.commons.utils.DateConverter;
import com.library.commons.utils.PageBean;
import com.library.po.Book;
import com.library.service.BookService;
import com.library.service.impl.BookServiceImpl;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;

public class test {

    private BookService bookService;

    @Before
    public void init(){
        //获取容器
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        //获取对象
        bookService = ac.getBean(BookServiceImpl.class);
    }

    /**
     * 测试分页查找
     */
    @Test
    public void getAllBooksTest(){
        String title="";
        Integer id = null;
        String cName = "";
        PageBean<Book> books = bookService.getAllBooks("Java", id, "JavaSE", 1, 10);
        System.out.println(books.getTotalCount());
        System.out.println(books.getTotalPage());
        for (Book book: books.getBeanList()){
            System.out.println(book);
        }
    }


    /**
     * 测试添加书籍
     */
    @Test
    public void addTest(){
        Book book = new Book();
        book.setTitle("c");
        book.setcName("JavaEE");
        book.setPrice(50.0);
        book.setAuthor("小卢");
        book.setPress("机械工业出版社");

        DateConverter dc = new DateConverter();
        //把String类型转换为Date类型
        Date date = dc.convert("2005-03-01");

        book.setPublishDate(date);
        bookService.add(book);
    }

    //测试修改书籍信息
    @Test
    public void editTest() {
        Book book = bookService.getBookById(10);
        book.setAuthor("啊");
        book.setPress("啊");
        System.out.println(book);
        bookService.update(book);
    }


/*    *//**
     * 测试事务管理
     *//*
    @Test
    public void addDouble() {
        Book book1 = new Book();
        book1.setId(10);
        book1.setTitle("transactionTest");
        book1.setPrice(20.0);
        book1.setPublishDate();
        Book book2 = book1;
    }*/


    //测试删除书籍
    @Test
    public void deleteTest() {
        int rows = bookService.delete(15);
        if (rows > 0){
            System.out.println("OK");
        }else{
            System.out.println("FAIL");
        }
    }

    //测试批量删除
    @Test
    public void deleteWithBatchTest() {
        String[] ids = {"12","13"};
        bookService.deleteWithBatch(ids);
    }

}
