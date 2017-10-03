package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.CompUsingCustom;
import com.quinnnorris.ssm.service.impl.SettingServiceImpl;
import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Title: ComponentController
 * Description:有关个人中心中的二级页面组件设置页面请求
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/3 上午8:38 星期二
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class ComponentController {

    @Autowired
    SettingServiceImpl settingService;

    /**
     * 切换用户当前使用或禁用组件状态
     *
     * @param com_id      组件id，通过前端id直接读取
     * @param use_type    使用状态 0为不使用，1为启用，2为删除
     * @param httpSession 服务器session
     * @return 返回404如果访问错误，返回0001如果返回正确
     */
    @RequestMapping("/homePage/ChangeUsing")
    @ResponseBody
    public BaseJson changeUsingType(@RequestParam String com_id, @RequestParam String use_type, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(com_id, use_type)) return new BaseJson("404");
        CompUsingCustom compUsingCustom = new CompUsingCustom();
        compUsingCustom.setCom_id(Integer.parseInt(com_id));
        compUsingCustom.setUse_type(Integer.parseInt(use_type));
        BaseJson baseJson = settingService.changeComponentUsingType(compUsingCustom, httpSession);
        baseJson.setErrorCode("0001");
        return baseJson;
    }

    

}
