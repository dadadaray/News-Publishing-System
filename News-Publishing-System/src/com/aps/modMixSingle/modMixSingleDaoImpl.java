package com.aps.modMixSingle;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.aps.entity.ModMixSingle;
import com.framework.BaseDao;

@Repository
public class modMixSingleDaoImpl extends BaseDao<ModMixSingle,String>{

	@Resource
	private SessionFactory sessionFactory;
	
	/**
	 * @dec  保存图文混合模板一
	 * @author Ray
	 * @param mod
	 */
	public void saveModMixSingle(ModMixSingle mod){
		try {
			this.save(mod);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
}
