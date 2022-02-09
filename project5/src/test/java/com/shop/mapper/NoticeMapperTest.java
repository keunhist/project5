package com.shop.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.shop.vo.NoticeVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class NoticeMapperTest {
 private static final Logger log = LoggerFactory.getLogger(NoticeMapperTest.class);
     
     @Autowired
     private NoticeMapper mapper;
 
     @Test
     public void testEnroll() {
         
         NoticeVO vo = new NoticeVO();
         
        vo.setTitle("title");
        vo.setContent("content");
        vo.setWriter("writer");
        
        mapper.noticeEnroll(vo);
         
     }
     
}
