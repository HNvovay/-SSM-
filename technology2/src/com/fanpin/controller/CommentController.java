package com.fanpin.controller;

import com.fanpin.entity.Comment;
import com.fanpin.entity.Log;
import com.fanpin.entity.Product;
import com.fanpin.service.ICommentSvc;
import com.fanpin.service.ILoginSvc;
import com.fanpin.service.IProductSvc;
import com.fanpin.util.ToolsUtil;
import com.fanpin.util.UserUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Resource
    private ICommentSvc commentSvc;
    @Resource
    private IProductSvc productSvc;
    @Resource
    private ILoginSvc loginSvc;
    @ResponseBody
    @RequestMapping(value = "showCommentByPid", produces = "application/json;charset=UTF-8")
    public Map<String, Object> selCommentByPid(Integer pid) {
        List<Comment> list = commentSvc.selCommentListByPid(pid);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("commentByPid", list);
        return map;
    }
    @RequestMapping(value = "myComment")
    public ModelAndView selCommentByUid(ModelAndView view) {
        List<Comment> list = commentSvc.selCommentListByUid(UserUtil.getLoginUserId());
        view.addObject("commentlist", list);
        view.setViewName("user_comment");
        Log log = ToolsUtil.insertLog(UserUtil.getLoginUserId(), "您查看了评论");
        loginSvc.insertUserLog(log);
        return view;
    }
    @ResponseBody
    @RequestMapping(value = "addComment", produces = "application/json;charset=UTF-8")
    public int addComment(@RequestParam int pid,@RequestParam String descb){
        Comment comment=new Comment();
        Product product = productSvc.proSelByCId(pid);
        comment.setPid(pid);
        comment.setUid(UserUtil.getLoginUserId());
        comment.setUname(UserUtil.getLoginUserName());
        comment.setDescb(descb);
        comment.setPname(product.getPname());
        Log log = ToolsUtil.insertLog(UserUtil.getLoginUserId(), "您在编号为【"+pid+"】的商品中添加了一条评论");
        loginSvc.insertUserLog(log);
        return commentSvc.addComment(comment);
    }
    @ResponseBody
    @RequestMapping(value = "delComment")
    public int delComment(@RequestParam Integer commentid){
        int i= commentSvc.deleteCommentById(commentid);
        Log log = ToolsUtil.insertLog(UserUtil.getLoginUserId(), "您删除了编号为【"+commentid+"】的评论");
        loginSvc.insertUserLog(log);
        return i;
    }
    @RequestMapping(value = "delAnyComment")
    public String delAnyCommentById(int[] commentid){
        int i=0;
        for (int id:commentid ) {
            i+= commentSvc.deleteCommentById(id);

        }
        Log log = ToolsUtil.insertLog(UserUtil.getLoginUserId(), "您删除了"+i+"条评论");
        loginSvc.insertUserLog(log);
        return "redirect:myComment";
    }
    @RequestMapping(value = "delAllComment")
    public String delAllCommentByUid(){
        int i= commentSvc.deleteAllCommentByUid(UserUtil.getLoginUserId());
        Log log = ToolsUtil.insertLog(UserUtil.getLoginUserId(), "您删除了自己的所有评论");
        loginSvc.insertUserLog(log);
        return "redirect:myComment";
    }
}
