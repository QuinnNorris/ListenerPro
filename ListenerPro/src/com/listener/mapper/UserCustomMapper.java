package com.listener.mapper;

import com.listener.bean.UserCustom;
import org.springframework.stereotype.Repository;

/**
 * Title: UserCustomMapper
 * Description: 关于映射user表的所有数据操作
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/29 上午10:57 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("userCustomMapper")
public interface UserCustomMapper {

    /**
     * 通过用户的手机和密码确认是否能查出该用户
     *
     * @param userCustom 需要Phone字段和Password字段
     * @return 返回整张user表信息
     */
    public UserCustom selectUserByPhoneAndPW(UserCustom userCustom);

    /**
     * 通过用户的手机确认是否能查询到该用户
     *
     * @param userCustom 需要Phone字段
     * @return 返回整张user表信息
     */
    public UserCustom selectUserByPhone(UserCustom userCustom);

    /**
     * 所有字段插入用户到user表中，并将id信息填充到参数userCustom中
     *
     * @param userCustom 需要所有user表的信息，id信息将被填充
     */
    public void insertUserReturnId(UserCustom userCustom);

    /**
     * 更新user表中头像headp的信息
     *
     * @param userCustom 需要headp，phone字段
     */
    public void updateUserHeadp(UserCustom userCustom);

    /**
     * 更新user表中username昵称信息
     *
     * @param userCustom 需要username，phone字段
     */
    public void updateUserUsername(UserCustom userCustom);

    /**
     * 更新user表中usrtype用户类型信息
     *
     * @param userCustom 需要usertype，phone字段
     */
    public void updateUserUsertype(UserCustom userCustom);


    /**
     * 更新user表中password密码信息
     *
     * @param userCustom 需要password，phone字段
     */
    public void updateUserPW(UserCustom userCustom);

    /**
     * 添加了user表中的email信息
     *
     * @param userCustom 需要email，phone字段
     */
    public void insertUserEmail(UserCustom userCustom);

    public void updateAllUser(UserCustom selectUser);
}
