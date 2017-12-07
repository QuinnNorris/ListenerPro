package com.listener.controller;

import com.listener.service.SettingPageService;
import com.listener.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

/**
 * Title: SettingController
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/11/12 下午4:33 星期日
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class SettingController extends BaseController {

    @Autowired
    SettingPageService settingPageService;

    @RequestMapping("/setting")
    public String toSettingPage(Model model) {
        //if (getSessionAttribute("phone") == null) return "NotFindPage";
        setAMorPMAndActivePage(model, "settingP");
        settingPageService.setSettingPageModels(model, (String) getSessionAttribute("phone"));
        return "SettingPage";
    }

    @RequestMapping(value = "/changeBaseSetting", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson changeBaseSetting(@RequestParam String types, @RequestParam String values) {
        return settingPageService.updateSettingPage(types, values, (String) getSessionAttribute("phone"));
    }

    @RequestMapping(value = "/createNewComp", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson createNewComp(@RequestParam String com_type, @RequestParam String com_name,
                                  @RequestParam String length, @RequestParam String color) {
        return settingPageService.createNewComponent(com_type, com_name, color, length, (String) getSessionAttribute("phone"));
    }

    @RequestMapping(value = "/updateComponent", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson updateComponent(@RequestParam String options, @RequestParam String com_id) {
        return settingPageService.updateComponent(options, com_id, (String) getSessionAttribute("phone"));
    }


}
