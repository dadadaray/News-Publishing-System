package com.aps.modBigImg.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.aps.entity.ModBigImg;
import com.framework.BaseDao;

@Repository
public class ModBigImgDaoImpl extends BaseDao<ModBigImg, String> {
	@Resource
	private SessionFactory sessionFactory;
	
	public void saveModBigImgDao(ModBigImg mod) {
		try {
			this.save(mod);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
