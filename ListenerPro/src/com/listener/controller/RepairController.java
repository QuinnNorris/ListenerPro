package com.listener.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Title: RepairController
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/11/30 下午1:56 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class RepairController extends BaseController {

    @RequestMapping("/repair")
    public String toSettingPage(Model model) {
        //if (getSessionAttribute("phone") == null) return "NotFindPage";
        setAMorPMAndActivePage(model, "repairP");

        return "RepairPage";
    }

}
