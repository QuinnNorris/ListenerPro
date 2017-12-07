package com.listener.controller;

import com.listener.service.ListenerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Title: ListenerController
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/11/27 下午6:34 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class ListenerController extends BaseController {

    @Autowired
    ListenerService listenerService;

    @RequestMapping("/listener")
    public String toSettingPage(Model model) {
        //if (getSessionAttribute("phone") == null) return "NotFindPage";
        setAMorPMAndActivePage(model, "listenerP");

        return "ListenerPage";
    }
}
