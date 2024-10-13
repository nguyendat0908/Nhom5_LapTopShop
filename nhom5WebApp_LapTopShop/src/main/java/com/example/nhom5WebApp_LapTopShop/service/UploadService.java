package com.example.nhom5webapp_laptopshop.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadService {

	private final ServletContext servletContext;

	public UploadService(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	public String handleSaveUploadFile(MultipartFile file, String targeFolder) {

		// Trỏ tới đường dẫn để lưu file
		String rootPath = servletContext.getRealPath("/resources/images");
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

	// Xóa file cũ để thêm file mới
	public void deleteFile(String filePath) {
		try {
			// Lấy đường dẫn tới file
			Path path = Paths.get(filePath);
			if (Files.exists(path)) {
				Files.delete(path);
			} else {
				System.out.println("Không tìm thấy file: " + filePath);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// Trả về đường dẫn chính xác cho file
	public String getFullPathFile(String fileName, String targetFolder) {
		return servletContext.getRealPath("/resources/images" + targetFolder + "/" + fileName);
	}

}
