package com.sss.mapper;

import java.util.List;

import com.sss.domain.ProductCriteria;
import com.sss.domain.ProductVO;

public interface ProductMapper {
	public List<ProductVO> getList();
	public List<ProductVO> getListWithPaging(ProductCriteria cri);	//메인 사진과 상품 목록 페이징 검색 처리 가져오기
	public List<ProductVO> getListSearchPaging(ProductCriteria cri);	//검색 기능
	public List<ProductVO> getListWithMain(); // 메인사진과 상품 목록 가저오기
	public void insert(ProductVO product);
	public void insertSelectKey(ProductVO product);
	public ProductVO read(Long p_no);
	public int delete(Long p_no);
	public int update(ProductVO product);
	public List<ProductVO> StockShartage(); /* 재고 부족을 불러오는 매퍼 */
	public List<ProductVO> highSoldProduct();
	public List<ProductVO> category();
	public int countUpdate(ProductVO product);
	public int getProductTotal(ProductCriteria cri);
	public ProductVO readWithMainImg(long p_no);
	public long countStockShartage();
	public List<ProductVO> readSoldout(); /* 품절임박 상품을 메인페이지에 보여줌*/
	public List<ProductVO> readHot(); /* 인기상품을 메인페이지에 보여줌 */
	public List<ProductVO> readNew(); /* 새로등록한 상품을 보여줌*/
}
