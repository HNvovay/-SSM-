package com.fanpin.dao;



import com.fanpin.entity.Comment;

import java.util.List;

public interface ICommentDao {
    List<Comment> selCommentListByUid(Integer uid);

    List<Comment> selCommentListByPid(Integer pid);

    List<Comment> getCommentList();

    int deleteCommentById(Integer commentid);
    int deleteAllCommentByUid(Integer uid);
    int addComment(Comment comment);
}
