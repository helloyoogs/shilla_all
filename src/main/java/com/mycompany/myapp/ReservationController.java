package com.mycompany.myapp;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.myapp.DTO.RsvDetailDto;
import com.mycompany.myapp.Service.Reservation;

@Controller
@RequestMapping("reservation")
public class ReservationController {
	
	@Autowired
	Reservation reservation;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list(@RequestParam Map<String, Object> map) {
		List<Map<String, Object>> list = this.reservation.list(map);
		ModelAndView mav = new ModelAndView();
		System.out.println(map);
		String id = map.get("id").toString();
		mav.addObject("id",id);
		//mav.addObject("data", list);
		
		System.out.println("reverve_/list");
		System.out.println("mav="+mav);
		//System.out.println("list="+list);
		System.out.println("map2");

		
		mav.setViewName("reservation/Reservation_step1");
		return mav;
	}
	
	@RequestMapping(value="/date_check", method=RequestMethod.GET)
	public ModelAndView dateCheck(@RequestParam Map<String, Object> map, HttpServletRequest httpServletRequest) {
		ModelAndView mav = new ModelAndView();
		System.out.println(map);
		List<Map<String, Object>> list = this.reservation.dateCheck(map);
		String id = map.get("mem_id").toString();
//		String mem_id = httpServletRequest.getParameter("id");
		String date_in = httpServletRequest.getParameter("date_in");
		String date_out = httpServletRequest.getParameter("date_out");
		//String myid = httpServletRequest.getParameter("date_out");
		System.out.println("ididididid");
		System.out.println(id);
		mav.addObject("data", list);
		mav.addObject("id", id);
		mav.addObject("date_in", date_in);
		mav.addObject("date_out", date_out);
		
		System.out.println("/date_check");
		System.out.println("mav="+mav);
		System.out.println("list="+list);
		System.out.println("map2");

		mav.setViewName("reservation/Reservation_step1");
		return mav;
	}
	
	@RequestMapping(value="/select_room", method=RequestMethod.POST)
	public ModelAndView createReservation(@RequestParam Map<String, Object> map) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println(map);
		String id = map.get("id").toString();
		mav.addObject("id",id);
		String rsv_idx = this.reservation.createReservation(map);
		if(rsv_idx==null) {
			mav.setViewName("redirect:/reservation/list");
		} else {
			mav.setViewName("redirect:/reservation/Reservation_step2?rsv_idx="+rsv_idx);
		}
		
		return mav;
	}
	
	@RequestMapping(value="/my_room", method=RequestMethod.GET)
	public ModelAndView my_reservation(@RequestParam Map<String, Object> map) {
		System.out.println("/my_room");
		System.out.println("mymap - ["+map+"]");
		List<Map<String, Object>> list = this.reservation.mylist(map);
		System.out.println("mylist - ["+list+"]");
		ModelAndView mav = new ModelAndView();
		System.out.println(map);
		String id = map.get("id").toString();
		mav.addObject("id",id);
		mav.addObject("detail", list);
		mav.setViewName("reservation/my_Reservation");
		return mav;
	}
	
	@RequestMapping(value="/Reservation_step2", method = RequestMethod.GET)
	public ModelAndView roomDetail(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();
		RsvDetailDto detailDto = this.reservation.detail(map);
		System.out.println("Reservation_step2="+map);
		System.out.println("Reservation_step2  detailMap ="+ detailDto.getId());
		mav.addObject("detail", detailDto);
		String rsv_idx = map.get("rsv_idx").toString(); 
		mav.addObject("rsv_idx", rsv_idx);
		mav.addObject("id",detailDto.getId());
		mav.setViewName("/reservation/Reservation_step2");
		return mav;
	}	
	
	@RequestMapping(value="cancelDeal", method = RequestMethod.GET)
	public ModelAndView deleteRsv(@RequestParam Map<String, Object> map,HttpServletRequest httpServletRequest) {
		ModelAndView mav = new ModelAndView();
		String id = httpServletRequest.getParameter("id");
		mav.addObject("id", id);
		System.out.println(map);
		boolean isDeleteSuccess = this.reservation.remove(map);
		if(isDeleteSuccess) {
			mav.setViewName("redirect:/");
		} else {
			String rsv_idx = map.get("rsv_idx").toString();
			mav.setViewName("redirect:reservation/Reservation_step2?rsv_idx="+rsv_idx);
		}
		return mav;
	}
	
	@RequestMapping(value="payOk", method = RequestMethod.GET)
	public ModelAndView payOk(@RequestParam Map<String, Object> map, HttpServletRequest httpServletRequest) {
		ModelAndView mav = new ModelAndView();
		String id = httpServletRequest.getParameter("id");
		mav.addObject("id", id);
		System.out.println(map);
		boolean isUpdateSuccess = this.reservation.pay_update(map);
		if(isUpdateSuccess) {
			mav.setViewName("redirect:/");
		} else {
			String rsv_idx = map.get("rsv_idx").toString();
			mav.setViewName("redirect:reservation/Reservation_step2?rsv_idx="+rsv_idx);
		}
		return mav;
	}
	
//	@RequestMapping(value="/kakaoPay", method = RequestMethod.GET)
//	@ResponseBody
//	public String kakaoPay(@RequestParam Map<String, Object> map, HttpServletRequest httpServletRequest) {
//		System.out.println(map);
//		
//		String rsv_idx = httpServletRequest.getParameter("rsv_idx");
//		String mem_id = httpServletRequest.getParameter("mem_id");
//		String item_name = httpServletRequest.getParameter("item_name");
//		String total_amount = httpServletRequest.getParameter("total_amount");
//		
//		System.out.println(rsv_idx+", "+mem_id+", "+item_name+", "+total_amount);
//		
//		try {
//			URL uri = new URL("https://kapi.kakao.com/v1/payment/ready");
//			HttpURLConnection con = (HttpURLConnection) uri.openConnection();
//			con.setRequestMethod("POST");
//			con.setRequestProperty("Authorization", "KakaoAK d81bce73bb950cfa1375b2c6596eb4f3");
//			con.setRequestProperty("Content-type","application/x-www-form-urlencoded;charset=utf-8");
//			con.setDoOutput(true);
//			
//			String params = "cid=TC0ONETIME"
//					+ "&partner_order_id=" + rsv_idx
//					+ "&partner_user_id=" + mem_id
//					+ "&item_name=" + item_name
//					+ "&quantity=1"
//					+ "&total_amount=" + total_amount
//					+ "&tax_free_amount=0"
//					+ "&approval_url=http://localhost:8080/kakaoPay"
//					+ "&cancel_url=http://localhost:8080/fail"
//					+ "&fail_url=http://localhost:8080/cancel";
//			OutputStream outpay = con.getOutputStream();
//			DataOutputStream outData = new DataOutputStream(outpay);
//			outData.writeBytes(params);
//			outData.close();
//			
//			int result = con.getResponseCode();
//			
//			InputStream inData;
//			if(result == 200) {
//				inData = con.getInputStream();
//			} else {
//				inData = con.getErrorStream();
//			}
//			InputStreamReader inputReader = new InputStreamReader(inData);
//			BufferedReader bufferedReader = new BufferedReader(inputReader);
//			return bufferedReader.readLine();
//			
//		} catch (MalformedURLException e) {
//			e.printStackTrace();
//		} catch (IOException e2) {
//			e2.printStackTrace();
//		}
//		
//		return "{\result}";
//	}
	
	
	
	
	
	
	
}
