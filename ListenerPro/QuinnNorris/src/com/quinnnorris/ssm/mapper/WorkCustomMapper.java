package com.quinnnorris.ssm.mapper;

import com.quinnnorris.ssm.bean.WorkCustom;
import org.springframework.stereotype.Repository;

/**
 * Title: WorkCustomMapper
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/6 下午6:26 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("workCustomMapper")
public interface WorkCustomMapper {

    public WorkCustom selectWorkerById(WorkCustom workCustom);

}
