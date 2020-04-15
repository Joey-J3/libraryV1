package com.library.po;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Book implements Serializable {
    /**
     * 编号
     */
    private Integer id;
    /**
     * 书名
     */
    private String title;
    /**
     * 类名
     */
    private String cName;
    /**
     * 价格
     */
    private Double price;
    /**
     * 作者
     */
    private String author;
    /**
     * 出版社
     */
    private String press;
    /**
     * 出版日期
     */
    private Date publishDate;
    /**
     * 起始行
     */
    private int start;
    /**
     * 所取行数
     */
    private int size;

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPress() {
        return press;
    }

    public void setPress(String press) {
        this.press = press;
    }

    public String getPublishDate() {
        //把日期格式规范化为"yyyy-MM-dd"的格式
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(publishDate);
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", cName='" + cName + '\'' +
                ", price=" + price +
                ", author='" + author + '\'' +
                ", press='" + press + '\'' +
                ", publishDate=" + publishDate +
                '}';
    }
}
