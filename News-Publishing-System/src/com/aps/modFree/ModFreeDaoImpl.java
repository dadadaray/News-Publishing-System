package com.aps.modFree;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.aps.entity.ModFree;
import com.framework.BaseDao;

@Repository
public class ModFreeDaoImpl extends BaseDao<ModFree, String>{
	@Resource
	private SessionFactory sessionFactory;
	
	public void saveModFreeDao(ModFree mod) {
		try {
			this.save(mod);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
