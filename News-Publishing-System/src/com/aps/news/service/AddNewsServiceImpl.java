package com.aps.news.service;

import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aps.entity.ModMixCenter;
import com.aps.news.dao.AddNewsDaoImpl;

@Service
public class AddNewsServiceImpl {
	@Resource
	private AddNewsDaoImpl addNewsDaoImpl;

	/**
	 * @Method: makeFileName
	 * @Description: 生成上传文件的文件名，文件名以：uuid+"_"+文件的原始名称
	 * @Anthor:Ray
	 * @param filename
	 *            文件的原始名称
	 * @return uuid+"_"+文件的原始名称
	 */
	public String makeFileName(String filename) { // 2.jpg
		// 为防止文件覆盖的现象发生，要为上传文件产生一个唯一的文件名
		// System.out.print(UUID.randomUUID().toString() + "_" + filename);
		return UUID.randomUUID().toString() + "_" + filename;
	}
    /** 
     * @dec  新闻模板居中保存并返回
     * @author Ray
     * @param f1
     * @param t1
     * @param f2
     * @param t2
     * @param f3
     * @param t3
     */
	public ModMixCenter saveModMixCenter(String f1, String t1, String f2, String t2, String f3, String t3) {

		ModMixCenter modMixCenter=new ModMixCenter();
		modMixCenter.setmMixCenterImgOne(f1);
		modMixCenter.setmMixCenterContentOne(t1);
		modMixCenter.setmMixCenterImgTwo(f2);
		modMixCenter.setmMixCenterContentTwo(t2);
		modMixCenter.setmMixCenterImgThree(f3);
		modMixCenter.setmMixCenterContentThree(t3);
		this.addNewsDaoImpl.saveModMixCenterDao(modMixCenter);
		return modMixCenter;
	}

}
