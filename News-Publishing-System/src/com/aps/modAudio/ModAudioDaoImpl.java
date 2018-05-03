/**
 * @FileName com.aps.modAudio/ModAudioDaoImpl.java 
 * @Project News-Publishing-System
 * @author lenovo 
 * @date 2018年5月3日 下午3:21:42
 * @version 
 * @Description TODO
 */

package com.aps.modAudio;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.aps.entity.ModAudio;
import com.framework.BaseDao;

/**
 * 
 * @ClassName ModAudioDaoImpl
 * @Description 音频模板
 * @author HanChen
 * @version
 *
 */
@Repository
public class ModAudioDaoImpl extends BaseDao<ModAudio, String> {
	@Resource
	private SessionFactory sessionFactory;
	
	public void saveModAudioDao(ModAudio mod) {
		try {
			this.save(mod);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
