package com.example.nhom5webapp_laptopshop.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadService {

    private final ServletContext servletContext;

    public UploadService(ServletContext servletContext){
        this.servletContext = servletContext;
    }

    public String handleSaveUploadFile(MultipartFile file, String targeFolder){

        // Trỏ tới đường dẫn để lưu file
        String rootPath = servletContext.getRealPath("/resource/images");
        String finalNameFile = "";
        
			try {
				byte[] bytes = file.getBytes();

				// Tạo thư mục để lưu file
				File dir = new File(rootPath + File.separator + targeFolder);
				if (!dir.exists())
					dir.mkdirs();

				// Tạo tên file khi lưu xuống lấy mốc thời gian tạo làm tên
                finalNameFile = System.currentTimeMillis() + "-" + file.getOriginalFilename();
				File serverFile = new File(dir.getAbsolutePath() + File.separator + finalNameFile);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
			} catch (Exception e) {
				e.printStackTrace();
            }
        return finalNameFile;
    }
    
}
