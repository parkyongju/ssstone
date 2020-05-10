package com.sss.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sss.domain.ProductCriteria;
import com.sss.domain.ProductImgDTO;
import com.sss.domain.ProductVO;
import com.sss.mapper.ProductImgMapper;
import com.sss.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Service
public class ProductServiceImpl implements ProductService {
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	@Setter(onMethod_ = @Autowired)
	private ProductImgMapper imgMapper;

	@Override
	public ProductVO read(Long p_no) {
		return mapper.read(p_no);
	}

	@Override
	public List<ProductImgDTO> readSubImg(Long p_no) {
		return imgMapper.readSubImg(p_no);
	}

	@Override
	public List<ProductImgDTO> readMainImg(Long p_no) {
		return imgMapper.readMainImg(p_no);
	}

	@Transactional
	public void register(ProductVO product) {
		log.info("register.............." + product);
		mapper.insertSelectKey(product);
		if (product.getFilelist() == null || product.getFilelist().size() <= 0) {
			log.info("들어오는 파일 없음 -- 서비스");
			return;
		}
		product.getFilelist().forEach(attach -> {
			attach.setP_no(product.getP_no());
			imgMapper.insert(attach);
		});
	}

	@Override
	public ProductVO get(Long p_no) {
		log.info("get.............." + p_no);
		return mapper.read(p_no);
	}

	// 상품 등록 수정
	// @Transactionalm
	@Override
	public boolean modify(ProductVO product) {
		log.info("modify..........." + product);
		imgMapper.deleteAll(product.getP_no());
		boolean modifyResult = mapper.update(product) == 1;
		log.info("=====================================================");
		log.info(modifyResult);
		if (modifyResult && product.getFilelist() != null && product.getFilelist().size() > 0) {
			product.getFilelist().forEach(attach -> {
				attach.setP_no(product.getP_no());
				imgMapper.insert(attach);
			});
		}
		return modifyResult;
	}

	// @Transactional
	@Override
	public boolean remove(Long p_no) {
		log.info("remove......." + p_no);
		imgMapper.deleteAll(p_no);
		return mapper.delete(p_no) == 1;
	}

	@Override
	public List<ProductVO> getList(ProductCriteria cri) {
		log.info("get List with criteria : " + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(ProductCriteria cri) {
		log.info("get total count");
		return mapper.getProductTotal(cri);
	}

	@Override
	public List<ProductImgDTO> getSubFileList(Long p_no) {
		log.info("get Attach list by bno" + p_no);
		return imgMapper.readSubImg(p_no);
	}

	@Override
	public List<ProductVO> getListWithMain(ProductCriteria cri) {
		return mapper.getListWithPaging(cri);
	}

	@Override
	public List<ProductVO> getListSearchPaging(ProductCriteria cri) {
		return mapper.getListSearchPaging(cri);
	}

	@Override
	public List<ProductVO> getList() {

		return mapper.getList();
	}

	@Override
	public long countStockShartage() {

		return mapper.countStockShartage();
	}

	@Override
	public int getTotalProduct(ProductCriteria cri) {

		return mapper.getProductTotal(cri);
	}

	public List<ProductVO> readSoldout() {
		
		return mapper.readSoldout();
	}
	@Override
	public List<ProductVO> readHot() {
		return mapper.readHot();
	}
	@Override
	public List<ProductVO> readNew() {
		return mapper.readNew();
	}

}