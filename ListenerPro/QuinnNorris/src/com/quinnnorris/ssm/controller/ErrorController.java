package com.quinnnorris.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Title: ErrorController
 * Description: 接收并处理关于报错页面的请求
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/1 下午3:58 星期日
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class ErrorController {

    /**
     * 接收404请求并返回页面
     *
     * @return 返回404页面
     */
    @RequestMapping("/404")
    public String error404(){
        return "404";
    }

}
