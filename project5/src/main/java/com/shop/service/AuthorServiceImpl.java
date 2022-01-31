package com.shop.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.mapper.AuthorMapper;
import com.shop.vo.AuthorVO;
import com.shop.vo.Criteria;

@Service
public class AuthorServiceImpl implements AuthorService {
	private static final Logger log = LoggerFactory.getLogger(AuthorServiceImpl.class);
	@Autowired
    AuthorMapper authorMapper;
	
	/* 작가 등록 */
	@Override
    public void authorEnroll(AuthorVO author) throws Exception {
        
        authorMapper.authorEnroll(author);
        
    }
	 /* 작가 목록 */
    @Override
    public List<AuthorVO> authorGetList(Criteria cri) throws Exception {
        
    	log.info("(service)authorGetList()......." + cri);
        
    	return authorMapper.authorGetList(cri);
    }
    /* 작가 총 수 */
    @Override
    public int authorGetTotal(Criteria cri) throws Exception {
        log.info("(service)authorGetTotal()......." + cri);
        return authorMapper.authorGetTotal(cri);
    }
    /* 작가 상세 페이지 */
	@Override
	public AuthorVO authorGetDetail(int authorId) throws Exception {
		log.info("authorGetDetail........" + authorId);
		return authorMapper.authorGetDetail(authorId);
	}	
}