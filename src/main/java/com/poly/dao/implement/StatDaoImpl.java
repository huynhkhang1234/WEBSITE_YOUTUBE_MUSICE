package com.poly.dao.implement;



import java.util.ArrayList;
import java.util.List;

import com.poly.dao.AbstractDao;
import com.poly.dao.StatDao;

import dto.VideoLikedInfo;

public class StatDaoImpl extends AbstractDao<Object[]> implements StatDao{

	@Override
	public List<VideoLikedInfo> findVideoLikedInfo() {
		String sql= "select v.id, v.title, v.href, SUM(CAST(h.isLike as int)) as totalLike"
				+ " from videos v left join historys h on v.id = h.videoid"
				+ " where v.isActive=1"
				+ " group by v.id, v.title, v.href"
				+ " order by SUM(CAST(h.isLike as int)) desc";
		
		List<Object[]> objects = super.findManyByNativeQuery(sql);
		List<VideoLikedInfo> result = new ArrayList<>();
		objects.forEach(object ->{
			
			VideoLikedInfo videoLikedInfo = setDataVideoLikedInfo(object);
			
			result.add(videoLikedInfo);
		});
		return result;
	}

	
	private VideoLikedInfo setDataVideoLikedInfo(Object[] object) {
		
		VideoLikedInfo videoLikedInfo = new VideoLikedInfo();
		
		videoLikedInfo.setVideoId((Integer)object[0]);
		videoLikedInfo.setTitle((String) object[1]);
		videoLikedInfo.setHref((String) object[2]);
		videoLikedInfo.setTotalLike(object[3]==null?0 : (Integer) object[3]);
		
		return videoLikedInfo;
		
	}
	
	
	
}
