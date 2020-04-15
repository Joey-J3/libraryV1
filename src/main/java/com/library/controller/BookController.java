package com.library.controller;

import com.library.commons.utils.PageBean;
import com.library.po.Book;
import com.library.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class BookController {
    //依赖注入
    @Autowired
    private BookService bookService;

    /**
     * 查询图书列表Action
     * @return
     */
    @RequestMapping("/list.action")
    public String list(String title,Integer id,String categoryName,
                       @RequestParam(value = "pageCode", required = false, defaultValue = "1") int pageCode,
                       @RequestParam(value = "pageSize", required = false, defaultValue = "5") int pageSize,
                       Model model){
        //获得所有书籍种类名称
        List<String> categories = bookService.getAllCategory();
        //根据条件并分页查询所有图书,设置每页显示5/10/15条书籍信息
        PageBean<Book> pageInfo = bookService.getAllBooks(title, id, categoryName, pageCode, pageSize);
        //封装结果集
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("categories",categories);
        return "library";
    }

    /**
     * 添加图书Action
     * @param book 从前端获取到的信息封装到book中
     * @return
     */
    @RequestMapping("/add.action")
    @ResponseBody
    public String bookAdd(@RequestBody Book book){
        int rows = bookService.add(book);
        if (rows > 0){
            return "OK";
        }else {
            return "FAIL";
        }
    }

    /**
     * 编辑图书Action
     * @param id 根据id查找要编辑的图书
     * @return
     */
    @RequestMapping("/edit.action")
    @ResponseBody
    public Book getBookById(Integer id){
        Book book = bookService.getBookById(id);
        return book;
    }

    /**
     * 保存编辑图书Action
     * @param book  从前端获取到的信息封装到book中
     * @return
     */
    @RequestMapping("/update.action")
    @ResponseBody
    public String editBook(@RequestBody Book book){
        int rows = bookService.update(book);
        if (rows > 0){
            return "OK";
        }else {
            return "FAIL";
        }
    }

    /**
     * 删除图书Action
     * @param id    图书编号
     * @return
     */
    @RequestMapping("/delete.action")
    @ResponseBody
    public String delete(Integer id){
        int rows = bookService.delete(id);
        if (rows > 0){
            return "OK";
        }else{
            return "FAIL";
        }
    }

    /*//批量删除图书Action
    @RequestMapping("/deletes")
    public String Deletes(HttpSession session){
        String[] ids = (String[]) session.getAttribute("ids");
        if (ids != null && ids.length>0){
            session.setAttribute("message",bookService.deleteWithBatch(ids)>0?"删除成功！":"删除失败！");
        }else{
            session.setAttribute("message","请选择删除项！");
        }
        session.setAttribute("books",bookService.getAllBooks());
        return "list";
    }*/
}
