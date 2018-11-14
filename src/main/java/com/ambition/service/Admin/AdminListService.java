package com.ambition.service.Admin;
/**
 * @Author: ambition
 * @Date: 2018/11/14 8:38
 * @Version 1.0
 */

import com.ambition.dao.AdminDao;
import com.ambition.entity.Admin.Admin;

import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 管理员service层
 * @author: ambition
 * @create: 2018-11-14 08:38
 **/

public class AdminListService {
    public List<Admin> queryAdminList(String account, String password) {
        AdminDao adminDao = new AdminDao();
        return adminDao.queryAdminList(account, password);
    }
}
