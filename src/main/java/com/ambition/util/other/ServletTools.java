package com.ambition.util.other;
/**
 * @Author: ambition
 * @Date: 2018/10/30 15:22
 * @Version 1.0
 */

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/**
 * @program: MybatisDemo
 * @description: Controller层Servlet的优化
 * @author: ambition
 * @create: 2018-10-30 15:22
 **/

public class ServletTools {
    public static void dosth(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
    }
}
