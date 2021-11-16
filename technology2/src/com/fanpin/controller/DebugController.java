package com.fanpin.controller;

import com.fanpin.entity.User;
import com.fanpin.service.ILoginSvc;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("debugMode")
public class DebugController {
    @Resource
    private ILoginSvc iLoginSvc;
    @ResponseBody
    @RequestMapping(value = "showAllUser")
    public User showAllUser(){
        List<User> users = iLoginSvc.selAllUser();
        if (users.size() > 0){
            return users.get(0);
        }
        return null;
    }
}
