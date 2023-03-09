package com.koreait.board.service;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileService {
    
    @Value("${file.path}") private String FILE_PATH;
    @Value("${file.url.image}") private String FILE_URL_IMAGE;

  

    public String upload(MultipartFile file) {

        // 실제파일이 존재하는지 검증
        if (file.isEmpty()) return null;

        // 원본 파일명
        String originalFileName = file.getOriginalFilename();
        // 원본 확장자명 (img.png)
        String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
        // 난수형의 이름 생성
        String uuid = UUID.randomUUID().toString();
        // 저장할 이름
        String saveName = uuid + extension;
        // 저장할 경로
        String savePath = FILE_PATH + saveName;


        try {
            // 파일 생성
            file.transferTo(new File(savePath));

        } catch(Exception exception) {
            exception.printStackTrace();
            return null;
        }
        String fileUrl = FILE_URL_IMAGE + saveName;

        return fileUrl;


    }

    public Resource getImageFile(String imageName) {

        Resource resource = null;

        String fileURL = "file:" + FILE_PATH + imageName ;

        try{
            resource = new UrlResource(fileURL);
        } catch (Exception exception) {
            exception.printStackTrace();
            return null;
        }
        
         return resource;
        
    }
    
    
}
