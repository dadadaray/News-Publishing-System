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
import com.aps.entity.ModMixLR;
import com.aps.entity.ModMixSingle;
import com.aps.entity.News;
import com.aps.news.service.AddNewsServiceImpl;
import com.aps.news.service.NewsServiceImpl;
import com.aps.newsType.service.NewsTypeServiceImpl;
import com.framework.EncodingTool;

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
		news1.setCreateTime(currentTime);
		news1.setStatues(1);
		// 设置审核人id
		news1.setAuditorId(30);
		// 设置新闻编辑人
		LoginUser u = (LoginUser) session.getAttribute("bloginUser");
		news1.setUserInfo(u.getUserInfo());

		// 保存模板
		ModMixCenter mod = this.addNewsServiceImpl.saveModMixCenter("D:/ImgTemp/" + newFileName1, textarea1,
				"D:/ImgTemp/" + newFileName2, textarea2, "D:/ImgTemp/" + newFileName3, textarea3);
		news1.setModMixCenter(mod);
		// 设置新闻类型
		news1.setNewsType(this.NewsTypeServiceImpl.getNewType(selectmod2));
		this.newsServiceImpl.saveNews(news1);

		session.setAttribute("newsmodMixCenter", news1);
		session.setAttribute("1", mod);

		return "redirect:/backstage/news/checking/list";
	}

	/**
	 * @dec 模板1 上传新闻
	 * @actor Ray
	 * @param file1
	 * @param file2
	 * @param file3
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "mod1SendNews", method = RequestMethod.POST)
	public String mod1SendNews(@RequestParam("mod1title") String mod2title, @RequestParam("file1") MultipartFile file1,
			@RequestParam("textarea1") String textarea1, @RequestParam("file2") MultipartFile file2,
			@RequestParam("textarea2") String textarea2, @RequestParam("file3") MultipartFile file3,
			@RequestParam("textarea3") String textarea3, @RequestParam("selectmod1") String selectmod2,
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
		News news2 = new News();
		news2.setNewsTitle(mod2title);
		news2.setCoverImgUrl("D:/ImgTemp/" + newcoverImgname);
		// 获取当前时间
		Date currentTime = new Date();
		news2.setCreateTime(currentTime);
		news2.setStatues(1);
		// 设置审核人id
		news2.setAuditorId(30);
		// 设置新闻编辑人
		LoginUser u = (LoginUser) session.getAttribute("bloginUser");
		news2.setUserInfo(u.getUserInfo());

		// 保存模板
		ModMixLR mod = this.addNewsServiceImpl.saveModMixLR("D:/ImgTemp/" + newFileName1, textarea1,
				"D:/ImgTemp/" + newFileName2, textarea2, "D:/ImgTemp/" + newFileName3, textarea3);

		news2.setModMixLR(mod);
		// 设置新闻类型
		news2.setNewsType(this.NewsTypeServiceImpl.getNewType(selectmod2));
		this.newsServiceImpl.saveNews(news2);

		session.setAttribute("newsmodMixLR", news2);

		return "redirect:/backstage/news/checking/list";
	}

	/**
	 * Deck 模板3 上传新闻
	 * 
	 * @actor Ray
	 * @param file1
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "mod3SendNews", method = RequestMethod.POST)
	public String mod3SendNews(@RequestParam("mod3title") String mod2title, @RequestParam("file1") MultipartFile file1,
			@RequestParam("textarea1") String textarea1, @RequestParam("selectmod3") String selectmod2,
			@RequestParam("coverImg") MultipartFile coverImg, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws IOException {

		// 第一个图片
		String filename1 = file1.getOriginalFilename();
		String newFileName1 = addNewsServiceImpl.makeFileName(filename1);

		// 封面图片
		String coverImgname = coverImg.getOriginalFilename();
		String newcoverImgname = addNewsServiceImpl.makeFileName(coverImgname);

		// 写入本地磁盘
		InputStream is = file1.getInputStream();
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
		OutputStream os3 = new FileOutputStream("D:/ImgTemp/" + newcoverImgname);
		while ((len = is3.read(bs)) != -1) {
			os3.write(bs, 0, len);
		}
		os3.close();
		is3.close();

		// 存入新闻
		News news3 = new News();
		news3.setNewsTitle(mod2title);
		news3.setCoverImgUrl("D:/ImgTemp/" + newcoverImgname);
		// 获取当前时间
		Date currentTime = new Date();
		news3.setCreateTime(currentTime);
		news3.setStatues(1);
		// 设置审核人id
		news3.setAuditorId(30);
		// 设置新闻编辑人
		LoginUser u = (LoginUser) session.getAttribute("bloginUser");
		news3.setUserInfo(u.getUserInfo());

		// 保存模板
		ModMixSingle mods = this.addNewsServiceImpl.saveModMixSingle("D:/ImgTemp/" + newFileName1, textarea1);

		news3.setModMixSingle(mods);
		// 设置新闻类型
		news3.setNewsType(this.NewsTypeServiceImpl.getNewType(selectmod2));
		this.newsServiceImpl.saveNews(news3);

		session.setAttribute("newsmodMixLR", news3);

		return "redirect:/backstage/news/checking/list";
	}

	/**
	 * @dec 图文混合模板二 预览功能
	 * @param mod2title
	 * @param file1
	 * @param textarea1
	 * @param file2
	 * @param textarea2
	 * @param file3
	 * @param textarea3
	 * @param selectmod2
	 * @param coverImg
	 * @param request
	 * @param response
	 * @param session
	 * @return
	 * @throws IOException 
	 */
	// 模板二预览新闻
	@RequestMapping("previewMixMod2")
	public String viewNewsMod2(@RequestParam("mod2title") String mod2title, @RequestParam("file1") MultipartFile file1,
			@RequestParam("textarea1") String textarea1, @RequestParam("file2") MultipartFile file2,
			@RequestParam("textarea2") String textarea2, @RequestParam("file3") MultipartFile file3,
			@RequestParam("textarea3") String textarea3, @RequestParam("selectmod2") String selectmod2,
			@RequestParam("coverImg") MultipartFile coverImg, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws IOException {
		

		// 新闻预览不保存，只设置session
		session.setAttribute("mod2title", mod2title);
		session.setAttribute("mod2textarea1", textarea1);
		session.setAttribute("mod2textarea2", textarea1);
		session.setAttribute("mod2textarea3", textarea3);
		session.setAttribute("previewselectmod", selectmod2);
		Date currentTime = new Date();
		session.setAttribute("mod2viewcurrentTime", currentTime);
		//System.out.print(file1.getOriginalFilename());
		
		// 第一个图片
		String filename1 = file1.getOriginalFilename();
		String newFileName1 = addNewsServiceImpl.makeFileName(filename1);

		// 第二个图片
		String filename2 = file2.getOriginalFilename();
		String newFileName2 = addNewsServiceImpl.makeFileName(filename2);

		// 第三个图片
		String filename3 = file3.getOriginalFilename();
		String newFileName3 = addNewsServiceImpl.makeFileName(filename3);

		// 写入本地磁盘
		InputStream is = file1.getInputStream();
		InputStream is1 = file2.getInputStream();
		InputStream is2 = file3.getInputStream();

		byte[] bs = new byte[1024];
		int len;
		// 保存路径
		String realpath = System.getProperty("b2cweb.root") + "preViewImgUp";
		File saveFile = new File(realpath);
		if (!saveFile.exists()) {
			saveFile.mkdirs();
		}
		OutputStream os = new FileOutputStream(realpath+"\\" + newFileName1);
		while ((len = is.read(bs)) != -1) {
			os.write(bs, 0, len);
		}
		os.close();
		is.close();
		OutputStream os1 = new FileOutputStream(realpath+"\\" + newFileName2);
		while ((len = is1.read(bs)) != -1) {
			os1.write(bs, 0, len);
		}
		os1.close();
		is1.close();
		OutputStream os2 = new FileOutputStream(realpath+"\\" + newFileName3);
		while ((len = is2.read(bs)) != -1) {
			os2.write(bs, 0, len);
		}
		os2.close();
		is2.close();
		System.out.print(realpath + newFileName1);
		session.setAttribute("premod2F1",newFileName1);
		session.setAttribute("premod2F2",newFileName2);
		session.setAttribute("premod2F3",newFileName3);

		return "news_post_style1_eye";
	}
}
