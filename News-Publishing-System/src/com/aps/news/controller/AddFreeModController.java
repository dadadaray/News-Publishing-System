package com.aps.news.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aps.entity.LoginUser;
import com.aps.entity.ModFree;
import com.aps.entity.News;
import com.aps.news.service.AddNewsServiceImpl;
import com.aps.news.service.NewsServiceImpl;
import com.aps.newsType.service.NewsTypeServiceImpl;
import com.aps.notice.service.NoticeServiceImpl;

@Controller
@RequestMapping("addNewsFree")
public class AddFreeModController {
	@Resource
	private AddNewsServiceImpl addNewsServiceImpl;

	@Resource
	private NewsTypeServiceImpl NewsTypeServiceImpl;

	@Resource
	private NewsServiceImpl newsServiceImpl;

	@Resource
	private NoticeServiceImpl noticeServiceImpl;

	@RequestMapping(value = "freeModSave", method = RequestMethod.POST)
	public String addModFree(@RequestParam(value = "freetitle") String freetitle,
			@RequestParam(value = "selectfree", required = false) Integer selectfree,
			@RequestParam(value = "coverImg", required = false) MultipartFile coverImg, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws IOException {
		// 获取用户信息
		LoginUser loginUser = (LoginUser) session.getAttribute("bloginUser");
		// 封面图片
		String coverImgname = coverImg.getOriginalFilename();
		String newcoverImgname = addNewsServiceImpl.makeFileName(coverImgname);
		InputStream is3 = coverImg.getInputStream();
		byte[] bs = new byte[1024];
		int len;
		// 保存路径
		String realpath = System.getProperty("b2cweb.root") + "newsImgUp";
		File saveFile = new File(realpath);
		if (!saveFile.exists()) {
			saveFile.mkdirs();
		}
		OutputStream os3 = new FileOutputStream(realpath + "\\" + newcoverImgname);
		while ((len = is3.read(bs)) != -1) {
			os3.write(bs, 0, len);
		}
		os3.close();
		is3.close();
		// 存入新闻
		News news3 = new News();
		news3.setNewsTitle(freetitle);
		news3.setCoverImgUrl(newcoverImgname);
		// 获取当前时间
		Date currentTime = new Date();
		news3.setCreateTime(currentTime);
		news3.setStatues(1);
		news3.setTopShow(0);
		// 设置审核人id
		news3.setAuditorId(30);
		// 设置新闻编辑人
		LoginUser u = (LoginUser) session.getAttribute("bloginUser");
		// 设置发送人发送文章的数量
		u.getUserInfo().setSendpassNum(u.getUserInfo().getSendpassNum() + 1);
		news3.setUserInfo(u.getUserInfo());
		// 设置模板
		Set<ModFree> modFree = new HashSet<ModFree>(0);
		// ModFree mod = this.addNewsServiceImpl.saveModMixSingle(newFileName1,
		// textarea1, news3);
		// modFree.add(mod);
		// news3.setModFrees(modFree);
		// 设置新闻类型

		news3.setNewsType(this.NewsTypeServiceImpl.getNewTypeById(selectfree));
		this.newsServiceImpl.saveNews(news3);

		// 给管理员发送通知
		this.noticeServiceImpl.publish(news3.getNewsId(), loginUser);

		session.setAttribute("newsmodFree", news3);

		return "redirect:/backstage/news/checking/list";
	}
	
	/**
	 * @dec 富文本框中接受图片
	 * @param coverImg
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("textImgup")
	@ResponseBody
	public String freeModImgUp(@RequestParam(value = "thumbnail", required = false) MultipartFile coverImg) throws IOException{
		String coverImgname = coverImg.getOriginalFilename();
		String newcoverImgname = addNewsServiceImpl.makeFileName(coverImgname);
		InputStream is3 = coverImg.getInputStream();
		byte[] bs = new byte[1024];
		int len;
		// 保存路径
		String realpath = System.getProperty("b2cweb.root") + "newsFreeImgUp";
		File saveFile = new File(realpath);
		if (!saveFile.exists()) {
			saveFile.mkdirs();
		}
		OutputStream os3 = new FileOutputStream(realpath + "\\" + newcoverImgname);
		while ((len = is3.read(bs))!= -1) {
			os3.write(bs, 0, len);
		}
		os3.close();
		is3.close();
		return newcoverImgname;
	}
	

}
