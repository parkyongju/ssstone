package com.sss.shop;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.sss.mapper.ShoppingCartMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class shoppingcarttests {
	@Setter(onMethod_ = @Autowired)
	private ShoppingCartMapper mapper;
	
	@Test
	public void testRead() {
		mapper.listCart(3L);
	}
}
