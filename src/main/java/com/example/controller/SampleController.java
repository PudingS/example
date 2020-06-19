package com.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.dto.Criteria;
import com.example.dto.PageDTO;
import com.example.dto.boardProDTO;
import com.example.service.boardProService;
import com.example.service.memberService;

@Controller
@RequestMapping("/sample/*")
public class SampleController {
	
	@Autowired
	private memberService memService;
	
	@Autowired
	private boardProService boardProService;
	
	Logger log = LoggerFactory.getLogger(SampleController.class);
	
	@GetMapping(value="product")
	public String product(Criteria crt, Model model) {
		System.out.println("product........");
		log.info(crt.toString());
		//List<memberDTO> list = memService.getMem();
//		for ( memberDTO memDto : list) {
//			memDto.toString();
//		}
		//model.addAttribute("list", memService.getMem());
		model.addAttribute("list", boardProService.getListPro(crt));
		model.addAttribute("pageMaker", new PageDTO(crt, 123));
		return "sample/product";
	}
	
	@PostMapping("/proregister")
	public String register(boardProDTO proDTO, RedirectAttributes rttr) {
		log.info("register : " + proDTO);
		boardProService.register(proDTO);
		rttr.addFlashAttribute("result", proDTO.getPro_board_id());
		return "redirect:/sample/product";
	}
	
	@GetMapping("/proget")
	public void get(@RequestParam("pro_board_id") String pro_board_id, Model model) {
		log.info("get");
		model.addAttribute("board", boardProService.get(pro_board_id));
	}
	
	@PostMapping("/promodify")
	public String modify(boardProDTO proDTO, RedirectAttributes rttr) {
		log.info("modify");
		boardProService.modify(proDTO);
		rttr.addFlashAttribute("result", "success");
		return "redirect:/sample/product";
	}
	
	@PostMapping("/proremove")
	public String remove(@RequestParam("pro_board_id") String pro_board_id, RedirectAttributes rttr) {
		log.info("revoce : " + pro_board_id);
		boardProService.remove(pro_board_id);
		rttr.addFlashAttribute("result", "success");
		return "redirect:/sample/product";
	}
	
	@GetMapping("/proregister")
	public void register() {
		
	}
	
	@GetMapping(value="author")
	public void author(Criteria crt, Model model) {
		System.out.println("author...........");
		log.info(crt.toString());
		//model.addAttribute"list"1)
		model.addAttribute("list", boardProService.getListPro(crt));
		model.addAttribute("pageMaker", new PageDTO(crt, 123));
	}
	
	@RequestMapping("test2")
	public void test2() {
		System.out.println("test2");
	}
}
