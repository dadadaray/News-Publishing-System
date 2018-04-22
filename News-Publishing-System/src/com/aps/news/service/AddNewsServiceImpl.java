package com.aps.news.service;


import java.util.UUID;


import org.springframework.stereotype.Service;

@Service
public class AddNewsServiceImpl {
	
	/**
     * @Method: makeFileName
     * @Description: 生成上传文件的文件名，文件名以：uuid+"_"+文件的原始名称
     * @Anthor:Ray
     * @param filename 文件的原始名称
     * @return uuid+"_"+文件的原始名称
     */ 
     public String makeFileName(String filename){  //2.jpg
         //为防止文件覆盖的现象发生，要为上传文件产生一个唯一的文件名
    	 System.out.print(UUID.randomUUID().toString() + "_" + filename);
         return UUID.randomUUID().toString() + "_" + filename;
     }

}
