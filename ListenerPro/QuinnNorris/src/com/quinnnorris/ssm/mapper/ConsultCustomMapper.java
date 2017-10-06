package com.quinnnorris.ssm.mapper;

import com.quinnnorris.ssm.bean.ConsultCustom;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Title: ConsultCustomMapper
 * Description:关于数据库中所有有关咨询情况的表的操作
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/6 下午8:17 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("consultCustomMapper")
public interface ConsultCustomMapper {

    public ConsultCustom selectConsultByNumber(ConsultCustom consultCustom);

    public List<ConsultCustom> selectConsultByUserId(ConsultCustom consultCustom);

    public List<ConsultCustom> selectConsultByExpertId(ConsultCustom consultCustom);

}
