package com.aps.news.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.aps.news.service.AddNewsServiceImpl;

@Controller
@RequestMapping("addnews/bigImg")
public class AddBigImgNewsControllerImpl {

	@Resource
	private AddNewsServiceImpl addNewsServiceImpl;

	@RequestMapping(value = "sendBigImgNews", method = RequestMethod.POST)
	private String sendBigImg(@RequestParam("file") List<MultipartFile> files, @RequestParam("title") String title,
			@RequestParam("selectmod") String selectmod, @RequestParam("textarea") String textarea,
			@RequestParam("coverfile") MultipartFile coverfile) throws IOException {
		// 将图片依次遍历存入模板中
		byte[] bs = new byte[1024];
		int len;
		// 保存路径
		File saveFile = new File("D:/ImgTemp/");
		if (!saveFile.exists()) {
			saveFile.mkdirs();
		}
		for (int i = 0; i < files.size(); i++) {
			String filename = files.get(i).getOriginalFilename();
			String newFileName = addNewsServiceImpl.makeFileName(filename);
			InputStream is = files.get(i).getInputStream();
			OutputStream os = new FileOutputStream("D:/ImgTemp/" + newFileName);
			while ((len = is.read(bs)) != -1) {
				os.write(bs, 0, len);
			}
			os.close();
			is.close();
		}

		return "redirect:/backstage/news/checking/list";
	}

}
