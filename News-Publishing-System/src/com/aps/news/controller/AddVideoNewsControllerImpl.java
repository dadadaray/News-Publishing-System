/**
 * @FileName com.aps.news.controller/AddVideoNewsControllerImpl.java 
 * @Project News-Publishing-System
 * @author lenovo 
 * @date 2018年5月2日 下午8:19:05
 * @version 
 * @Description TODO
 */

package com.aps.news.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.aps.entity.LoginUser;
import com.aps.entity.ModVedio;
import com.aps.entity.News;
import com.aps.news.service.AddNewsServiceImpl;
import com.aps.news.service.NewsServiceImpl;
import com.aps.newsType.service.NewsTypeServiceImpl;
import com.framework.EncodingTool;

/**
 * 
 * @ClassName AddVideoNewsControllerImpl
 * @Description 视频模板
 * @author HanChen
 * @version
 *
 */

@Controller
@RequestMapping("addnews/video")
public class AddVideoNewsControllerImpl {
	
	@Resource
	private AddNewsServiceImpl addNewsServiceImpl;
	
	@Resource
	private NewsTypeServiceImpl NewsTypeServiceImpl;
	
	@Resource
	private NewsServiceImpl newsServiceImpl;
	
	/**
	 * @Title: sendVideo
	 * @Description: 发表视频
	 * @param videoFile
	 * @param title
	 * @param selectmod
	 * @param textarea
	 * @param coverfile
	 * @param session
	 * @return
	 * @throws IOException
	 * @author HanChen 
	 * @return String
	 */
	@RequestMapping(value = "sendVideoNews", method = RequestMethod.POST)
	private String sendVideo(@RequestParam("videoFile") MultipartFile videoFile,
			@RequestParam("title") String title, @RequestParam("selectmod") String selectmod, 
			@RequestParam("textarea") String textarea, @RequestParam("coverfile") MultipartFile coverfile, 
			HttpSession session) throws IOException{
		//视频文件名称
		String filename = videoFile.getOriginalFilename();
		String newFileName = addNewsServiceImpl.makeFileName(filename);
		
		// 写入本地磁盘
		InputStream is = videoFile.getInputStream();
				
		//上传视频
		byte[] bs = new byte[1024];
		int len;
		// 保存路径
		String realpath = System.getProperty("b2cweb.root") + "newsVideoUp";
		File saveFile = new File(realpath);
		if (!saveFile.exists()) {
			saveFile.mkdirs();
		}
		OutputStream os = new FileOutputStream(realpath + "\\" + newFileName);
		while ((len = is.read(bs)) != -1) {
			os.write(bs, 0, len);
		}
		os.close();
		is.close();
		
		// 封面图片
		String realpath1 = System.getProperty("b2cweb.root") + "newsImgUp";
		File saveFile1 = new File(realpath1);
		if (!saveFile1.exists()) {
			saveFile1.mkdirs();
		}
		
		String coverImgname = coverfile.getOriginalFilename();
		String newcoverImgname = addNewsServiceImpl.makeFileName(coverImgname);
		InputStream is1 = coverfile.getInputStream();
		OutputStream os1 = new FileOutputStream(realpath1 + "\\" + newcoverImgname);
		while ((len = is1.read(bs))!= -1) {
			os1.write(bs, 0, len);
		}
		os1.close();
		is1.close();
		
		// 存入新闻
		News news1 = new News();
		news1.setNewsTitle(title);
		news1.setCoverImgUrl(newcoverImgname);
		// 获取当前时间
		Date currentTime = new Date();
		news1.setCreateTime(currentTime);
		news1.setStatues(1);
		news1.setTopShow(0);
		//设置默认值
		news1.setCommentNum(0);
		news1.setViews(0);
		news1.setShare(0);
		news1.setLikes(0);
		// 设置审核人id
		news1.setAuditorId(30);
		// 设置新闻编辑人
		LoginUser u = (LoginUser) session.getAttribute("bloginUser");
		news1.setUserInfo(u.getUserInfo());
		
		// 设置新闻类型
		news1.setNewsType(this.NewsTypeServiceImpl.getNewType(selectmod));
		// 保存模板
		ModVedio m = new ModVedio();
		m.setMvideoUrl(newFileName);
		m.setModVedioContent(textarea);
		
		ModVedio mod = this.addNewsServiceImpl.saveModVedio(newFileName, textarea);
		// 设置新闻模板
		news1.setModVedio(mod);
		// 保存新闻
		this.newsServiceImpl.saveNews(news1);
		
		return "redirect:/backstage/news/checking/list";
	}
	
	/**
	 * @Title: videoSaveNewsDraft
	 * @Description: 存草稿
	 * @param videoFile
	 * @param title
	 * @param selectmod
	 * @param textarea
	 * @param coverfile
	 * @param session
	 * @return
	 * @throws IOException
	 * @author HanChen
	 * @return String
	 */
	@RequestMapping(value = "videoSaveNewsDraft", method = RequestMethod.POST)
	private String videoSaveNewsDraft(@RequestParam("videoFile") MultipartFile videoFile,
			@RequestParam("title") String title, @RequestParam("selectmod") String selectmod, 
			@RequestParam("textarea") String textarea, @RequestParam("coverfile") MultipartFile coverfile, 
			HttpSession session) throws IOException{
		//视频文件名称
		String filename = videoFile.getOriginalFilename();
		String newFileName = addNewsServiceImpl.makeFileName(filename);
		
		// 写入本地磁盘
		InputStream is = videoFile.getInputStream();
				
		//上传视频
		byte[] bs = new byte[1024];
		int len;
		// 保存路径
		String realpath = System.getProperty("b2cweb.root") + "newsVideoUp";
		File saveFile = new File(realpath);
		if (!saveFile.exists()) {
			saveFile.mkdirs();
		}
		OutputStream os = new FileOutputStream(realpath + "\\" + newFileName);
		while ((len = is.read(bs)) != -1) {
			os.write(bs, 0, len);
		}
		os.close();
		is.close();
		
		// 封面图片
		String realpath1 = System.getProperty("b2cweb.root") + "newsImgUp";
		File saveFile1 = new File(realpath1);
		if (!saveFile1.exists()) {
			saveFile1.mkdirs();
		}		
		
		String coverImgname = coverfile.getOriginalFilename();
		String newcoverImgname = addNewsServiceImpl.makeFileName(coverImgname);
		InputStream is1 = coverfile.getInputStream();
		OutputStream os1 = new FileOutputStream(realpath1 + "\\" + newcoverImgname);
		while ((len = is1.read(bs))!= -1) {
			os1.write(bs, 0, len);
		}
		os1.close();
		is1.close();
		
		// 存入新闻
		News news1 = new News();
		news1.setNewsTitle(title);
		news1.setCoverImgUrl(newcoverImgname);
		// 获取当前时间
		Date currentTime = new Date();
		news1.setCreateTime(currentTime);
		news1.setStatues(0);
		news1.setTopShow(0);
		//设置默认值
		news1.setCommentNum(0);
		news1.setViews(0);
		news1.setShare(0);
		news1.setLikes(0);
		// 设置审核人id
		news1.setAuditorId(30);
		// 设置新闻编辑人
		LoginUser u = (LoginUser) session.getAttribute("bloginUser");
		news1.setUserInfo(u.getUserInfo());
		
		// 设置新闻类型
		news1.setNewsType(this.NewsTypeServiceImpl.getNewType(selectmod));
		// 保存模板
		ModVedio m = new ModVedio();
		m.setMvideoUrl(newFileName);
		m.setModVedioContent(textarea);
		
		ModVedio mod = this.addNewsServiceImpl.saveModVedio(newFileName, textarea);
		// 设置新闻模板
		news1.setModVedio(mod);
		// 保存新闻
		this.newsServiceImpl.saveNews(news1);
		
		return "redirect:/backstage/draft/list";
	}
	
	/**
	 * @Title: previewVideo
	 * @Description: 视频预览
	 * @param videoFile
	 * @param title
	 * @param selectmod
	 * @param textarea
	 * @param coverfile
	 * @param session
	 * @return
	 * @throws IOException
	 * @author HanChen 
	 * @return String
	 */
	@RequestMapping(value = "previewVideo", method = RequestMethod.POST)
	private String previewVideo(@RequestParam("videoFile") MultipartFile videoFile,
			@RequestParam("title") String title, @RequestParam("selectmod") String selectmod, 
			@RequestParam("textarea") String textarea, @RequestParam("coverfile") MultipartFile coverfile, 
			HttpSession session) throws IOException{
		
		// 新闻预览不保存，只设置session
		session.setAttribute("title", title);
		session.setAttribute("textarea", textarea);
		session.setAttribute("selectmod", selectmod);		
		Date currentTime = new Date();
		session.setAttribute("videoViewCurrentTime", currentTime);
		
		//保存视频
		String filename = videoFile.getOriginalFilename();
		String newFileName = addNewsServiceImpl.makeFileName(filename);

		// 写入本地磁盘
		InputStream is = videoFile.getInputStream();
		
		byte[] bs = new byte[1024];
		int len;
		// 保存路径
		String realpath = System.getProperty("b2cweb.root") + "preViewVideo";
		File saveFile = new File(realpath);
		if (!saveFile.exists()) {
			saveFile.mkdirs();
		}
		OutputStream os = new FileOutputStream(realpath + "\\" + newFileName);
		while ((len = is.read(bs)) != -1) {
			os.write(bs, 0, len);
		}
		os.close();
		is.close();
		session.setAttribute("preVideoF1", newFileName);

		return "news_post_video_eye";		
		
	}

}
