package com.listener.controller;

import com.listener.service.HealingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Title: HealingController
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/11/30 下午1:22 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class HealingController extends BaseController {

    @Autowired
    HealingService healingService;

    @RequestMapping("/healing")
    public String toSettingPage(Model model) {
        //if (getSessionAttribute("phone") == null) return "NotFindPage";
        setAMorPMAndActivePage(model, "healingP");

        return "HealingPage";
    }

}
