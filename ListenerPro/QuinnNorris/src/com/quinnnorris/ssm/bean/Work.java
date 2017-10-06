package com.quinnnorris.ssm.bean;

/**
 * Title: Work
 * Description:数据库中关于表work的映射表
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/6 下午5:58 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
public class Work {

    private int work_id;
    private String worker;

    public int getWork_id() {
        return work_id;
    }

    public void setWork_id(int work_id) {
        this.work_id = work_id;
    }

    public String getWorker() {
        return worker;
    }

    public void setWorker(String worker) {
        this.worker = worker;
    }
}
