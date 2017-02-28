package edu.group6.library.model;

public class Account {
    private Integer id;

    private String phone;

    private String name;

    private String idNum;

    private String password;

    private Integer vip;

    private Integer lendTimes;

    private Integer overTimes;

    private Byte isUse;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum == null ? null : idNum.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getVip() {
        return vip;
    }

    public void setVip(Integer vip) {
        this.vip = vip;
    }

    public Integer getLendTimes() {
        return lendTimes;
    }

    public void setLendTimes(Integer lendTimes) {
        this.lendTimes = lendTimes;
    }

    public Integer getOverTimes() {
        return overTimes;
    }

    public void setOverTimes(Integer overTimes) {
        this.overTimes = overTimes;
    }

    public Byte getIsUse() {
        return isUse;
    }

    public void setIsUse(Byte isUse) {
        this.isUse = isUse;
    }
}