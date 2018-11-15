package com.ambition.controller.Front;

import com.ambition.service.Front.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.UUID;

/**
 * @Author: ambition
 * @Date: 2018/11/10 16:04
 * @Version 1.0
 */
@WebServlet("/customerInfoEdit")
@MultipartConfig
public class InfoEditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String BrowersPath = "";
        String BrowersfilePath = "";
        //存储路径
        String savePath = request.getServletContext().getRealPath("/upload/assert");
        //获取到的上传文件的集合
        Collection<Part> parts = request.getParts();
        if (parts.size() == 1) {
            //Servlet3.0将multipart/form-data的POST请求封装成Part，通过Part对上传的文件进行操作。
            //Part part = parts[0];//从上传的文件集合中获取Part对象
            Part part = request.getPart("filename");
            //通过表单file控件(<input type="file" name="file">)的名字直接获取Part对象
            //Servlet3没有提供直接获取文件名的方法,需要从请求头中解析出来
            //获取请求头，请求头的格式：form-data; name="file"; filename="snmp4j--api.zip"
            String header = part.getHeader("content-disposition");
            //获取文件名
            String fileName = getFileName(header);
            //防止文件覆盖，所以要产生一个唯一的文件名
            BrowersfilePath = makeFileName(fileName);
            //把文件写到指定路径
            BrowersPath = savePath+ File.separator + BrowersfilePath;
            part.write(BrowersPath);
        } else {
            //一次性上传多个文件
            for (Part part : parts) {//循环处理上传的文件
                //获取请求头，请求头的格式：form-data; name="file"; filename="snmp4j--api.zip"

                String header = part.getHeader("content-disposition");
                //获取文件名
                String fileName = getFileName(header);
                //为防止一个目录下面出现太多文件，要使用hash算法打散存储。
                //防止文件覆盖，所以要产生一个唯一的文件名
                if (fileName.indexOf('.') != -1) {
//                    BrowersDirPath = makePath(fileName,savePath);
                    BrowersfilePath = makeFileName(fileName);

                    BrowersPath = savePath+ File.separator + BrowersfilePath;
                    //把文件写到指定路径
                    part.write(BrowersPath);
                }
            }
        }


        PrintWriter out = response.getWriter();

        ///////////////////////////////////////////
        //获取前台数据
        String userId=request.getParameter("userId");
        String username=request.getParameter("username");
        String email=request.getParameter("email");
        String weibo=request.getParameter("weibo");
        String telephone=request.getParameter("telephone");
        String qq=request.getParameter("qq");
        String intro=request.getParameter("intro");

        BrowersfilePath="/upload/assert/"+BrowersfilePath;
        //调用Service层服务
        LoginService loginService=new LoginService();
        loginService.customerInfoEdit(userId,username,email,weibo,telephone,qq,intro,BrowersfilePath);
        out.write(overJSON(true,"/customerInfoQuery?userId="+userId+"&isDel=0"));
    }

    public String getFileName(String header) {
        String filename = "";
        if (header.contains("filename")) {
            filename = header.substring(header.indexOf("filename=\"") + "filename=\"".length());
            filename = filename.substring(0, filename.length() - 1);
        }
        return filename;
    }


    /**
     * @param filename 文件的原始名称
     * @return uuid+"_"+文件的原始名称
     * @Method: makeFileName
     * @Description: 生成上传文件的文件名，文件名以：uuid+"_"+文件的原始名称
     * @Anthor:ambition
     */
    private String makeFileName(String filename) {  //2.jpg
        //为防止文件覆盖的现象发生，要为上传文件产生一个唯一的文件名
        return UUID.randomUUID().toString() + "_" + filename;
    }

    public String overJSON(Boolean msg,String mag) {

        /**
         * layui接受的前台返回JSON格式
         * {
         *   "code": 0
         *   ,"msg": ""
         *   ,"data": {
         *     "src": "http://cdn.layui.com/123.jpg"
         *   }
         * }
         */

        StringBuffer stringBuffer = new StringBuffer("{\"code\":");

        if (msg) {
            stringBuffer.append(0);
            stringBuffer.append(",\"msg\": \"success\"");
        } else {
            stringBuffer.append(-1);
            stringBuffer.append(",\"msg\": \"failed\"");
        }
        stringBuffer.append(",\"data\": {");
        stringBuffer.append("\"url\": \""+mag+"\"");
        stringBuffer.append("}}");

        return stringBuffer.toString();
    }

}
