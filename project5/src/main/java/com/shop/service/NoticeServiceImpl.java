package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.mapper.NoticeMapper;
import com.shop.vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeMapper mapper;
	
	@Override
    public void noticeEnroll(NoticeVO notice) {
        
        mapper.noticeEnroll(notice);
        
    }
	
	@Override
    public List<NoticeVO> getList() {
        
        return mapper.getList();
    }
}
