package com.aps.modMixCenter;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.aps.entity.ModMixCenter;
import com.aps.entity.ModMixLR;
import com.framework.BaseDao;

@Repository
public class modMixCenterDaoImpl extends BaseDao<ModMixCenter, String> {
	@Resource
	private SessionFactory sessionFactory;

	/**
	 * @dec 保存混合居中模板
	 * @author Ray
	 * @param mod
	 */
	public void saveModMixCenterDao(ModMixCenter mod) {
		try {
			this.save(mod);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
