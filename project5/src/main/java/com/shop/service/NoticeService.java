package com.shop.service;

import java.util.List;

import com.shop.vo.NoticeVO;

public interface NoticeService {
	/* 공지사항 등록 */
    public void noticeEnroll(NoticeVO notice);
    
    /* 공지사항 목록*/
    public List<NoticeVO> getList();
    
}
