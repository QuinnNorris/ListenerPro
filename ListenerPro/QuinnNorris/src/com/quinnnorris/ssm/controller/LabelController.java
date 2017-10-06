package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.LabelCustom;
import com.quinnnorris.ssm.service.impl.SettingServiceImpl;
import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Title: LabelController
 * Description: 接收所有关于倾听者标签控件的请求
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/6 下午5:23 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class LabelController {

    @Autowired
    SettingServiceImpl settingService;

    /**
     * 接收关于填充个人标签的请求并处理
     *
     * @param sex         性别
     * @param city        城市
     * @param age         年龄
     * @param work        工作类别，通过work表联合查询
     * @param httpSession 服务器session
     * @return 根据情况返回404或0001
     */
    @RequestMapping(value = "/homePage/yourLabel", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson insertOnesLabel(@RequestParam String sex, @RequestParam String city,
                                    @RequestParam String age, @RequestParam String work, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(sex, city, age, work)) return new BaseJson("404");
        LabelCustom labelCustom = new LabelCustom();
        labelCustom.setAge(Integer.parseInt(age));
        labelCustom.setWork_id(Integer.parseInt(work));
        labelCustom.setSex(Integer.parseInt(sex));
        labelCustom.setCity(city);
        settingService.insertselfLabel(labelCustom, httpSession);
        return new BaseJson("0001");
    }

    /**
     * 接收关于填充自定义的标签的请求并进行处理
     *
     * @param label1      自定义标签1
     * @param label2      自定义标签2
     * @param label3      自定义标签3
     * @param label4      自定义标签4
     * @param label5      自定义标签5
     * @param httpSession 服务器session
     * @return 根据情况返回404或0001
     */
    @RequestMapping(value = "/homePage/customLabel", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson updateCustomLabel(@RequestParam String label1, @RequestParam String label2,
                                      @RequestParam String label3, @RequestParam String label4,
                                      @RequestParam String label5, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(label1, label2, label3, label4, label5)) return new BaseJson("404");
        LabelCustom labelCustom = new LabelCustom();
        labelCustom.setLabel1(label1);
        labelCustom.setLabel2(label2);
        labelCustom.setLabel3(label3);
        labelCustom.setLabel4(label4);
        labelCustom.setLabel5(label5);
        settingService.updateCustomLabel(labelCustom, httpSession);
        return new BaseJson("0001");
    }

    /**
     * 接收关于填充寻找对象的标签的请求并进行处理
     *
     * @param fsex        性别
     * @param fcity       城市
     * @param fage        年龄
     * @param fwork       工作
     * @param httpSession 服务器session
     * @return 根据情况返回404或0001
     */
    @RequestMapping(value = "/homePage/findLabel", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson updateFindLabel(@RequestParam String fsex, @RequestParam String fcity,
                                    @RequestParam String fage, @RequestParam String fwork, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(fsex, fcity, fage, fwork)) return new BaseJson("404");
        LabelCustom labelCustom = new LabelCustom();
        labelCustom.setAge(Integer.parseInt(fage));
        labelCustom.setWork_id(Integer.parseInt(fwork));
        labelCustom.setSex(Integer.parseInt(fsex));
        labelCustom.setCity(fcity);
        settingService.updateFindLabel(labelCustom, httpSession);
        return new BaseJson("0001");
    }

    /**
     * 接收关于重新计算平均登记分数的请求并进行处理
     *
     * @param star        等级评分
     * @param httpSession 服务器session
     * @return 根据情况返回404或0001
     */
    @RequestMapping(value = "/homePage/updateStars", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson updateStars(@RequestParam String star, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(star)) return new BaseJson("404");
        LabelCustom labelCustom = new LabelCustom();
        labelCustom.setStars(Double.parseDouble(star));
        settingService.updateStarsLabel(labelCustom, httpSession);
        return new BaseJson("0001");
    }

}
