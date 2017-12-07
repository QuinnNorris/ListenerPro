package com.listener.mapper;

import com.listener.bean.CityCustom;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Title: CityCustomMapper
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/11/16 下午2:13 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("cityCustomMapper")
public interface CityCustomMapper {

    public void insert(CityCustom cityCustom);

    public CityCustom selectCityById(CityCustom cityCustom);

    public List<String> selectAllInCity();

}
