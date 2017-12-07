package com.listener.controller;

import com.listener.service.SecretGardenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Title: SecretGardenController
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/11/26 下午9:16 星期日
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class SecretGardenController extends BaseController {

    @Autowired
    SecretGardenService secretGardenService;

    @RequestMapping("/secretGarden")
    public String toSettingPage(Model model) {
        //if (getSessionAttribute("phone") == null) return "NotFindPage";
        setAMorPMAndActivePage(model, "secretG");

        return "SecretGardenPage";
    }

}
