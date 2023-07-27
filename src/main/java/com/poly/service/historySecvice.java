package com.poly.service;

import java.util.List;

import com.poly.entity.history;
import com.poly.entity.user;
import com.poly.entity.video;

public interface historySecvice {
	
	List<history> findByUserName(String userName);

	List<history> findUserAndIsLike(String userName);

	history findUserIdAndVideoId(int userID, int videoId);

	history create(user userID, video videoId );

	Boolean updateLikeAndUnlike(user userid, String videoHref);
}
