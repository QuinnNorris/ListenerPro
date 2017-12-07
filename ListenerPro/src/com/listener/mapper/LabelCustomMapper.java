package com.listener.mapper;

import com.listener.bean.LabelCustom;
import org.springframework.stereotype.Repository;

/**
 * Title: LabelCustomMapper
 * Description:关于数据库中有关label表的有关操作
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/6 下午6:07 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("labelCustomMapper")
public interface LabelCustomMapper {

    public void insertSelfLabel(LabelCustom labelCustom);

    public LabelCustom selectLabelById(LabelCustom labelCustom);

    public void updateSelfLabel(LabelCustom labelCustom);

    public void updateFindLabel(LabelCustom labelCustom);

    public void updateCustomLabel(LabelCustom labelCustom);

    public void updateStars(LabelCustom labelCustom);

    public LabelCustom selectLabelByPhone(LabelCustom labelCustom);
}
