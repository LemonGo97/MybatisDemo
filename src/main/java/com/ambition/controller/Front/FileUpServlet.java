package com.ambition.controller.Front;
/**
 * @Author: ambition
 * @Date: 2018/11/12 9:45
 * @Version 1.0
 */

import com.ambition.util.LogTools;

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
 * @program: MybatisDemo
 * @description: 文件上传控制器
 * @author: ambition
 * @create: 2018-11-12 09:45
 **/
@WebServlet("/FileUpload")
@MultipartConfig
public class FileUpServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        String BrowersPath="";

        //存储路径
        String savePath = req.getServletContext().getRealPath("/upload");
        //获取到的上传文件的集合
        Collection<Part> parts = req.getParts();
        if (parts.size() == 1) {
            //Servlet3.0将multipart/form-data的POST请求封装成Part，通过Part对上传的文件进行操作。
            //Part part = parts[0];//从上传的文件集合中获取Part对象
            Part part = req.getPart("filename");//通过表单file控件(<input type="file" name="file">)的名字直接获取Part对象
            //Servlet3没有提供直接获取文件名的方法,需要从请求头中解析出来
            //获取请求头，请求头的格式：form-data; name="file"; filename="snmp4j--api.zip"
            String header = part.getHeader("content-disposition");
            //获取文件名
            String fileName = getFileName(header);
            //为防止一个目录下面出现太多文件，要使用hash算法打散存储。
            //防止文件覆盖，所以要产生一个唯一的文件名
            savePath=makePath(fileName,savePath);
            fileName=makeFileName(fileName);
            //把文件写到指定路径
            BrowersPath=makePath(fileName,savePath) + File.separator + makeFileName(fileName);
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
                savePath=makePath(fileName,savePath);
                fileName=makeFileName(fileName);
                //把文件写到指定路径
                BrowersPath=makePath(fileName,savePath) + File.separator + makeFileName(fileName);
                part.write(BrowersPath);
            }
        }
        PrintWriter out = resp.getWriter();
        LogTools.DEBUG("传给前台的JSON数据====>",overJSON(true));
        out.write(overJSON(true));
    }

    /**
     * 根据请求头解析出文件名
     * 请求头的格式：火狐和google浏览器下：form-data; name="file"; filename="snmp4j--api.zip"
     * IE浏览器下：form-data; name="file"; filename="E:\snmp4j--api.zip"
     *
     * @param header 请求头
     * @return 文件名
     */

    public String getFileName(String header) {
        /**
         * String[] tempArr1 = header.split(";");代码执行完之后，在不同的浏览器下，tempArr1数组里面的内容稍有区别
         * 火狐或者google浏览器下：tempArr1={form-data,name="file",filename="snmp4j--api.zip"}
         * IE浏览器下：tempArr1={form-data,name="file",filename="E:\snmp4j--api.zip"}
         */
        String[] tempArr1 = header.split(";");
        /**
         *火狐或者google浏览器下：tempArr2={filename,"snmp4j--api.zip"}
         *IE浏览器下：tempArr2={filename,"E:\snmp4j--api.zip"}
         */
        String[] tempArr2 = tempArr1[2].split("=");
        //获取文件名，兼容各种浏览器的写法
        String fileName = tempArr2[1].substring(tempArr2[1].lastIndexOf("\\") + 1).replaceAll("\"", "");
        return fileName;
    }


    /**
     * @Method: makeFileName
     * @Description: 生成上传文件的文件名，文件名以：uuid+"_"+文件的原始名称
     * @Anthor:ambition
     * @param filename 文件的原始名称
     * @return uuid+"_"+文件的原始名称
     */
    private String makeFileName(String filename){  //2.jpg
        //为防止文件覆盖的现象发生，要为上传文件产生一个唯一的文件名
        return UUID.randomUUID().toString() + "_" + filename;
    }

    /**
     * 为防止一个目录下面出现太多文件，要使用hash算法打散存储
     * @Method: makePath
     * @Description:
     * @Anthor:ambition
     *
     * @param filename 文件名，要根据文件名生成存储目录
     * @param savePath 文件存储路径
     * @return 新的存储目录
     */
    private String makePath(String filename,String savePath){
        //得到文件名的hashCode的值，得到的就是filename这个字符串对象在内存中的地址
        int hashcode = filename.hashCode();
        int dir1 = hashcode&0xf;  //0--15
        int dir2 = (hashcode&0xf0)>>4;  //0-15
        //构造新的保存目录
        String dir = savePath + "\\" + dir1 + "\\" + dir2;  //upload\2\3  upload\3\5
        //File既可以代表文件也可以代表目录
        File file = new File(dir);
        //如果目录不存在
        if(!file.exists()){
            //创建目录
            file.mkdirs();
        }
        return dir;
    }

    public String overJSON(Boolean msg){

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

        StringBuffer stringBuffer=new StringBuffer("{\"code\":");

        if (msg){
            stringBuffer.append(0);
            stringBuffer.append(",\"msg\": \"success\"");
        }else{
            stringBuffer.append(-1);
            stringBuffer.append(",\"msg\": \"failed\"");
        }
        stringBuffer.append(",\"data\": {");
        stringBuffer.append("\"src\": \"\"");
        stringBuffer.append("}}");

        return stringBuffer.toString();
    }
}
