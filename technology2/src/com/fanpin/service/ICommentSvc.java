package com.fanpin.service;

import com.fanpin.entity.Comment;

import java.util.List;

public interface ICommentSvc {
    List<Comment> selCommentListByUid(Integer uid);

    List<Comment> selCommentListByPid(Integer pid);

    List<Comment> getCommentList();

    int deleteCommentById(Integer commentid);
    int deleteAllCommentByUid(Integer uid);
    int addComment(Comment comment);
}
