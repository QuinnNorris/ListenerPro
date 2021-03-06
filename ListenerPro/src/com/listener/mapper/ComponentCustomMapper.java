package com.listener.mapper;

import com.listener.bean.ComponentCustom;
import org.springframework.stereotype.Repository;

/**
 * Title: ComponentCustom
 * Description: 关于映射component表的所有数据操作
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/3 下午5:06 星期二
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("componentCustomMapper")
public interface ComponentCustomMapper {

    public int insertComponent(ComponentCustom componentCustom);

    public ComponentCustom selectCompBycom_idAndCreate_id(ComponentCustom componentCustom);
}
