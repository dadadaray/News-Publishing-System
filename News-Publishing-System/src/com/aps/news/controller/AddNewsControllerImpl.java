package com.aps.news.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.border.TitledBorder;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.aps.entity.LoginUser;
import com.aps.entity.ModMixCenter;
import com.aps.entity.News;
import com.aps.news.service.AddNewsServiceImpl;
import com.aps.news.service.NewsServiceImpl;
import com.aps.newsType.service.NewsTypeServiceImpl;

@Controller
@RequestMapping("addnews")
public class AddNewsControllerImpl {
	@Resource
	private AddNewsServiceImpl addNewsServiceImpl;

	@Resource
	private NewsTypeServiceImpl NewsTypeServiceImpl;

	@Resource
	private NewsServiceImpl newsServiceImpl;

	/**
	 * @dec 模板2 上传新闻
	 * @actor Ray
	 * @param file1
	 * @param file2
	 * @param file3
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "mod2SendNews", method = RequestMethod.POST)
	public String mod2SendNews(@RequestParam("mod2title") String mod2title, @RequestParam("file1") MultipartFile file1,
			@RequestParam("textarea1") String textarea1, @RequestParam("file2") MultipartFile file2,
			@RequestParam("textarea2") String textarea2, @RequestParam("file3") MultipartFile file3,
			@RequestParam("textarea3") String textarea3, @RequestParam("selectmod2") String selectmod2,
			@RequestParam("coverImg") MultipartFile coverImg, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws IOException {

		// 第一个图片
		String filename1 = file1.getOriginalFilename();
		String newFileName1 = addNewsServiceImpl.makeFileName(filename1);

		// 第二个图片
		String filename2 = file2.getOriginalFilename();
		String newFileName2 = addNewsServiceImpl.makeFileName(filename2);

		// 第三个图片
		String filename3 = file3.getOriginalFilename();
		String newFileName3 = addNewsServiceImpl.makeFileName(filename3);

		// 封面图片
		String coverImgname = coverImg.getOriginalFilename();
		String newcoverImgname = addNewsServiceImpl.makeFileName(coverImgname);

		// 写入本地磁盘
		InputStream is = file1.getInputStream();
		InputStream is1 = file2.getInputStream();
		InputStream is2 = file3.getInputStream();
		InputStream is3 = coverImg.getInputStream();

		byte[] bs = new byte[1024];
		int len;
		// 保存路径
		File saveFile = new File("D:/ImgTemp/");
		if (!saveFile.exists()) {
			saveFile.mkdirs();
		}
		OutputStream os = new FileOutputStream("D:/ImgTemp/" + newFileName1);
		while ((len = is.read(bs)) != -1) {
			os.write(bs, 0, len);
		}
		os.close();
		is.close();
		OutputStream os1 = new FileOutputStream("D:/ImgTemp/" + newFileName2);
		while ((len = is1.read(bs)) != -1) {
			os1.write(bs, 0, len);
		}
		os1.close();
		is1.close();
		OutputStream os2 = new FileOutputStream("D:/ImgTemp/" + newFileName3);
		while ((len = is2.read(bs)) != -1) {
			os2.write(bs, 0, len);
		}
		os2.close();
		is2.close();
		OutputStream os3 = new FileOutputStream("D:/ImgTemp/" + newcoverImgname);
		while ((len = is3.read(bs)) != -1) {
			os3.write(bs, 0, len);
		}
		os3.close();
		is3.close();

		// 存入新闻
		News news1 = new News();
		news1.setNewsTitle(mod2title);
		news1.setCoverImgUrl("D:/ImgTemp/" + newcoverImgname);
		// 获取当前时间
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = formatter.format(currentTime);
		news1.setCreateTime(dateString);
		news1.setStatues(1);
		// 设置审核人id
		news1.setAuditorId(30);
		// 设置新闻编辑人
		LoginUser u = (LoginUser) session.getAttribute("bloginUser");
		news1.setUserInfo(u.getUserInfo());

		// 保存模板
		ModMixCenter mod = this.addNewsServiceImpl.saveModMixCenter(saveFile +"/"+ newFileName1, textarea1,
				saveFile +"/"+ newFileName2, textarea2, saveFile +"/"+ newFileName3, textarea3);
		news1.setModMixCenter(mod);
		// 设置新闻类型
		news1.setNewsType(this.NewsTypeServiceImpl.getNewType(selectmod2));
		this.newsServiceImpl.saveNews(news1);

		session.setAttribute("newsmodMixCenter", news1);

		return "redirect:/backstage/news/checking/list";
	}

}