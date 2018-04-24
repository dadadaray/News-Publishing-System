package com.aps.modMixLF;

import org.springframework.stereotype.Repository;
import com.aps.entity.ModMixLR;
import com.framework.BaseDao;

@Repository
public class modMixLFDaoImpl extends BaseDao<ModMixLR, String> {
	/**
	 * @dec 保存混合左右模板
	 * @author Ray
	 * @param mod
	 */
	public void saveModMixLF(ModMixLR mod) {
		try {
			this.save(mod);
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
