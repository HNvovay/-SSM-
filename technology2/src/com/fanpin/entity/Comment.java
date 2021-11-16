package com.fanpin.entity;

import java.util.Date;

public class Comment {
    private Integer commentid;
    private Integer pid;
    private Integer uid;
    private String uname;
    private String pname;
    private String descb;
    private Date commentdate;
    public Comment() {
    }

    public Comment(Integer commentid, Integer pid, Integer uid, String uname, String pname, String descb, Date commentdate) {
        this.commentid = commentid;
        this.pid = pid;
        this.uid = uid;
        this.uname = uname;
        this.pname = pname;
        this.descb = descb;
        this.commentdate = commentdate;
    }

    public Comment(Integer pid, Integer uid, String uname, String pname, String descb, Date commentdate) {
        this.pid = pid;
        this.uid = uid;
        this.uname = uname;
        this.pname = pname;
        this.descb = descb;
        this.commentdate = commentdate;
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getDescb() {
        return descb;
    }

    public void setDescb(String descb) {
        this.descb = descb;
    }

    public Date getCommentdate() {
        return commentdate;
    }

    public void setCommentdate(Date commentdate) {
        this.commentdate = commentdate;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }
}
