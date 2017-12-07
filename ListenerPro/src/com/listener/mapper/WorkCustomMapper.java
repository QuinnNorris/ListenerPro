package com.listener.mapper;

import com.listener.bean.WorkCustom;
import org.springframework.stereotype.Repository;

import java.util.List;

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

    public void insertWorker(WorkCustom workCustom);

    public List<String> selectAllInWork();

}
