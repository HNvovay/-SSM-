package com.fanpin.service.impl;

import com.fanpin.dao.ICommentDao;
import com.fanpin.entity.Comment;
import com.fanpin.service.ICommentSvc;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CommentSvclMPL implements ICommentSvc {
    @Resource
    private ICommentDao commentDao;

    @Override
    public List<Comment> selCommentListByUid(Integer uid) {return commentDao.selCommentListByUid(uid);}

    @Override
    public List<Comment> selCommentListByPid(Integer pid) {return commentDao.selCommentListByPid(pid);}

    @Override
    public List<Comment> getCommentList() {return commentDao.getCommentList();}

    @Override
    public int deleteCommentById(Integer commentid) {return commentDao.deleteCommentById(commentid);}

    @Override
    public int deleteAllCommentByUid(Integer uid) {
        return commentDao.deleteAllCommentByUid(uid);
    }

    @Override
    public int addComment(Comment comment) {return commentDao.addComment(comment);}
}
