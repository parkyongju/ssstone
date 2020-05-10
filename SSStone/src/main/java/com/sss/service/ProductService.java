package com.sss.service;

import java.util.List;

import com.sss.domain.ProductCriteria;
import com.sss.domain.ProductImgDTO;
import com.sss.domain.ProductVO;


public interface ProductService {
	public void register(ProductVO product);
	public ProductVO get(Long p_no);
	public boolean modify(ProductVO vo);
	public boolean remove(Long p_no);
	public List<ProductVO> getList();
	public List<ProductVO> getList(ProductCriteria cri);
	public int getTotal(ProductCriteria cri);
	public List<ProductVO> getListWithMain(ProductCriteria cri);
	public List<ProductVO> getListSearchPaging(ProductCriteria cri);
	public List<ProductImgDTO> getSubFileList(Long p_no);
	public int getTotalProduct(ProductCriteria cri);
	
	public ProductVO read(Long p_no);
	public List<ProductImgDTO> readMainImg(Long p_no);
	public List<ProductImgDTO> readSubImg(Long p_no);
	
	public long countStockShartage();
	public List<ProductVO> readSoldout(); /*품절임박 상품을 메인페이지에 보여줌 */
	public List<ProductVO> readHot(); /* 인기상품을 메인페이지에 보여줌 */
}
