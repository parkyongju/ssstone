package com.sss.controller;

import java.util.List; 

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PathVariable;
import com.sss.domain.Criteria;
import com.sss.domain.ReplyPageDTO;
import com.sss.domain.ReplyVO;
import com.sss.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/replies/*")
@RestController
@Log4j
@AllArgsConstructor
public class ReplyController {

   private ReplyService service;

   @PostMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
   public ResponseEntity<String> create(@RequestBody ReplyVO vo) {

      log.info("ReplyVO: " + vo);

      int insertCount = service.register(vo);

      log.info("Reply INSERT COUNT: " + insertCount);

      return insertCount == 1

            ? new ResponseEntity<>("success", HttpStatus.OK)
            : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
      // 삼항 연산자 처리

   }

   @GetMapping(value = "/pages/{b_no}/{page}",
         produces = { MediaType.APPLICATION_XML_VALUE,
         MediaType.APPLICATION_JSON_UTF8_VALUE })
   public ResponseEntity<ReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("b_no") Long b_no) {
      Criteria cri = new Criteria(page, 10);
      return new ResponseEntity<>(service.getListPage(cri, b_no),HttpStatus.OK);
   }

   @GetMapping(value = "/{r_no}", produces = { MediaType.APPLICATION_XML_VALUE,
         MediaType.APPLICATION_JSON_UTF8_VALUE })
   public ResponseEntity<ReplyVO> get(@PathVariable("r_no") Long r_no) {
      return new ResponseEntity<>(service.get(r_no), HttpStatus.OK);
   }

   @DeleteMapping(value = "/{r_no}", produces = { MediaType.TEXT_PLAIN_VALUE })

   public ResponseEntity<String> remove(@PathVariable("r_no") Long r_no) {

      log.info("remove : " + r_no);

      return service.remove(r_no) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
            : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
   }

   @RequestMapping(method = { RequestMethod.PUT,
         RequestMethod.PATCH }, value = "{r_no}", consumes = "application/json", produces = {
               MediaType.TEXT_PLAIN_VALUE })
   public ResponseEntity<String> modify(@RequestBody ReplyVO vo, @PathVariable("r_no") Long r_no) {

      vo.setR_no(r_no);
      log.info("r_no: " + r_no);
      log.info("modify: " + vo);

      return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
            : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
   }

}