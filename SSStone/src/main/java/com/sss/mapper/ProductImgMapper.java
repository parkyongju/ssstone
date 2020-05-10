package com.sss.mapper;

import java.util.List;

import com.sss.domain.ProductImgDTO;


public interface ProductImgMapper {
   public void insert(ProductImgDTO vo);
   public void delete(String uuid);
   public List<ProductImgDTO> findByBno(Long p_no);
   public void deleteAll(Long p_no);
   public List<ProductImgDTO> getOldFiles();
   public List<ProductImgDTO> readMainImg(Long p_no);
   public List<ProductImgDTO> readSubImg(Long p_no);
}