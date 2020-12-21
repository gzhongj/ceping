package com.gzj.app.ceping.admin.controller;

import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.UUID;

public class SuperController extends BaseController {

    protected Logger LOG = LoggerFactory.getLogger(this.getClass());

    public final static String SLANT = "/";
    public final static String DOT = ".";
    public final static String URL_SUFFIX = "";
    public final static String MANAGER = "login_manager";

    /**
     * 保存文件
     *
     * @param uploadFile
     * @return
     */
    protected String saveFile(MultipartFile uploadFile, String uploadPath) {
        try {
            if (null == uploadFile || uploadFile.isEmpty()) {
                return "";
            }
            String extendName = FilenameUtils.getExtension(uploadFile.getOriginalFilename());
            String newName = UUID.randomUUID() + "." + extendName;
            File finalFile = new File(uploadPath + newName);
            if (!finalFile.exists()) {
                finalFile.mkdirs();
            }
            uploadFile.transferTo(finalFile);
            return newName;
        } catch (Exception e) {
            LOG.error("savefile:", e);
        }
        return "";
    }

    /**
     * 从request中获取file域
     *
     * @param request
     * @param name
     * @return
     */
    protected MultipartFile getFile(HttpServletRequest request, String name) {
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request; // 获取文件表单
        return multipartRequest.getFile(name);
    }

}
