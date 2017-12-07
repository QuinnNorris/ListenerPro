package com.listener.mapper;

import com.listener.bean.CompUsingCustom;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Title: CompUsingCustomMapper
 * Description: 关于映射comp_using表的所有数据操作
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/3 上午9:09 星期二
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("compUsingCustomMapper")
public interface CompUsingCustomMapper {

    public CompUsingCustom selectWithIdAndCom_id(CompUsingCustom compUsingCustom);

    public void updateWithIdAndCom_id(CompUsingCustom compUsingCustom);

    public void insertWithIdAndCom_id(CompUsingCustom compUsingCustom);

    public List<CompUsingCustom> selectWithIdAndUse_type(CompUsingCustom compUsingCustom);
}
