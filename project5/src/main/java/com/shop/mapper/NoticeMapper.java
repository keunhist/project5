package com.shop.mapper;

import java.util.List;

import com.shop.vo.NoticeVO;

public interface NoticeMapper {
	/* 공지사항 등록 */
    public void noticeEnroll(NoticeVO notice);
    
    /* 공지사항 목록 */
    public List<NoticeVO> getList();
}
