package com.listener.mapper;

import com.listener.bean.CertCustom;
import org.springframework.stereotype.Repository;

/**
 * Title: CertCustomMapper
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/2 下午5:41 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
@Repository("certCustomMapper")
public interface CertCustomMapper {

    /**
     * 通过id寻找证书信息
     *
     * @param certCustom 需要id
     * @return 返回所有的证书信息
     */
    public CertCustom selectCertById(CertCustom certCustom);

    /**
     * 通过id寻找所有的证书信息
     *
     * @param certCustom 需要所有信息
     */
    public void insertCert(CertCustom certCustom);

    /**
     * 通过id更新验证时间
     *
     * @param certCustom 需要id，verificationTime
     */
    public void updateVerificationTime(CertCustom certCustom);

    /**
     * 通过id更新验证状态isVerification
     *
     * @param certCustom 需要id，isVerification
     */
    public void updateIsVerification(CertCustom certCustom);

}
