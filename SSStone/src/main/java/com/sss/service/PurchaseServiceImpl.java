package com.sss.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sss.domain.PurchaseMemberVO;
import com.sss.domain.PurchaseVO;
import com.sss.domain.Shopping_cartVO;
import com.sss.mapper.ProductMapper;
import com.sss.mapper.PurchaseMapper;
import com.sss.mapper.PurchaseMemberMapper;
import com.sss.mapper.ShoppingCartMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Service
public class PurchaseServiceImpl implements PurchaseService {
	@Setter(onMethod_ = @Autowired)
	private PurchaseMapper mapper;
	@Setter(onMethod_ = @Autowired)
	private PurchaseMemberMapper MemberMapper;
	@Setter(onMethod_ = @Autowired)
	private ShoppingCartMapper cartMapper;
	@Setter(onMethod_ = @Autowired)

	private ProductMapper productMapper;

	@Override
	public PurchaseVO purchaseMember(Long pc_no) {

		return mapper.purchaseMember(pc_no);
	}

	public void register(long m_no) {
		mapper.insert(m_no);
		Long pc_no = mapper.readByM_no(m_no);
		Long p_no = 0L;
		ArrayList<Shopping_cartVO> cartlist = new ArrayList<>();
		cartlist = (ArrayList<Shopping_cartVO>) cartMapper.listCart(m_no);
		for (int i = 0; i < cartMapper.listCart(m_no).size(); i++) {
			PurchaseMemberVO membervo = new PurchaseMemberVO();
			p_no = cartlist.get(i).getP_no();
			membervo.setP_no(p_no);
			membervo.setPc_no(pc_no);
			Shopping_cartVO cart = new Shopping_cartVO();
			cart.setM_no(m_no);
			cart.setP_no(p_no);
			long amount = cartMapper.getamount(cart);
			membervo.setS_amount(amount);

			MemberMapper.insert(membervo);

		}
		cartMapper.deleteAll(m_no);
	}

	@Override
	public PurchaseVO read(Long pc_no) {
		return mapper.read(pc_no);
	}

	@Override
	public PurchaseVO readByM_no(Long m_no) {
		return null;
	}

	@Override
	public boolean delete(Long pc_no) {
		boolean updateResult = mapper.delete(pc_no) == 1;
		return updateResult;
	}

	@Override
	public List<PurchaseVO> getList() {

		return mapper.getList();
	}

	@Override
	public long getPurchaseMoney(long pc_no) {

		return MemberMapper.purchaseMoney(pc_no);
	}

	// 배송 false 의 개수
	@Override
	public int countNotDelivery() {

		return mapper.countNotDelivery();
	}

	// 오늘 판매 건수
	@Override
	public int countSalesToday() {

		return mapper.countSalesToday();
	}

	// 오늘 판매 금액
	@Override
	public Long priceSalesToday() {

		return mapper.priceSalesToday();
	}

	// 총 판매 금액
	@Override
	public Long priceSalesTotal() {

		return mapper.priceSalesTotal();
	}

	@Override
	public int updateTrue(long pc_no) {

		return mapper.updateTrue(pc_no);
	}

	@Override
	public int updateFalse(long pc_no) {

		return mapper.updateFalse(pc_no);
	}

	@Override
	public List<PurchaseMemberVO> purchaseProduct(Long pc_no) {

		return MemberMapper.purchaseProduct(pc_no);
	}

}
