package com.sss.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sss.domain.PageDTO;
import com.sss.domain.ProductCriteria;
import com.sss.domain.ProductVO;
import com.sss.domain.PurchaseMemberVO;
import com.sss.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/product/*")
@Log4j
@AllArgsConstructor
public class ProductController {
	private ProductService productservice;

	@GetMapping("/shop")
	public void shop(Model model, ProductCriteria cri) {
		if (cri.getP_category1() != null || cri.getP_category1() != null) {
			model.addAttribute("productList", productservice.getListSearchPaging(cri));
			int total = productservice.getProductSearchTotal(cri);
			System.out.println("total : " + total);
			model.addAttribute("pageMaker", new PageDTO(cri, total));
			System.out.println(cri);
		} else {
			model.addAttribute("productList", productservice.getListWithMain(cri));
			int total = productservice.getTotalProduct(cri);
			model.addAttribute("pageMaker", new PageDTO(cri, total));
		}
	}

	@GetMapping("/product")
	public void get(@RequestParam("p_no") long p_no, Model model) {
		model.addAttribute("product", productservice.read(p_no));
		model.addAttribute("productmain", productservice.readMainImg(p_no));
		model.addAttribute("productsub", productservice.readSubImg(p_no));

	}

	@GetMapping("/Register")
	public void register() {

	}

	@GetMapping("/searchProduct/{p_category1}/{keyword}")
	public ResponseEntity<List<ProductVO>> purchaseOfProduct(@PathVariable("p_category1") String p_category1,
			@PathVariable("keyword") String keyword) {
		ProductCriteria cri = new ProductCriteria();
		cri.setAmount(5);
		cri.setP_category1(p_category1);
		cri.setP_category2("");
		if (keyword != null) {
			cri.setType("N");
			cri.setKeyword(keyword);
		}
		cri.setPageNum(1);
		if (p_category1.equals("*")) {
			return new ResponseEntity<>(productservice.getListWithMain(cri), HttpStatus.OK);
		} else {
			System.out.println(productservice.getListSearchPaging(cri));
			return new ResponseEntity<>(productservice.getListSearchPaging(cri), HttpStatus.OK);
		}
	}

}