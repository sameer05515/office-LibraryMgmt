package edu.group6.library.model;

import java.util.Date;

public class Order {
    private Long id;

    private Long bookId;

    private Long userId;

    private Date lendTime;

    private Date rtrnTime;

    private Integer state;

    private Byte isUse;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBookId() {
        return bookId;
    }

    public void setBookId(Long bookId) {
        this.bookId = bookId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Date getLendTime() {
        return lendTime;
    }

    public void setLendTime(Date lendTime) {
        this.lendTime = lendTime;
    }

    public Date getRtrnTime() {
        return rtrnTime;
    }

    public void setRtrnTime(Date rtrnTime) {
        this.rtrnTime = rtrnTime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Byte getIsUse() {
        return isUse;
    }

    public void setIsUse(Byte isUse) {
        this.isUse = isUse;
    }
}