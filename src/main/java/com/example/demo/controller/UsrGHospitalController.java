package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.BoardService;
import com.example.demo.service.GHospitalService;
import com.example.demo.service.ReactionPointService;
import com.example.demo.service.ReplyService;
import com.example.demo.vo.Board;
import com.example.demo.vo.GHospital;
import com.example.demo.vo.Rq;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class UsrGHospitalController {

	@Autowired
	private Rq rq;

	@Autowired
	private GHospitalService gHospitalService;

	@Autowired
	private BoardService boardService;

	@Autowired
	private ReplyService replyService;

	@Autowired
	private ReactionPointService reactionPointService;

	public UsrGHospitalController() {

	}

	// 액션 메서드

	@RequestMapping("/usr/gHospital/list")
	public String showList(HttpServletRequest req, Model model, @RequestParam(defaultValue = "4") int boardId,
			@RequestParam(defaultValue = "1") int page,
			@RequestParam(defaultValue = "hName,areaName") String searchKeywordTypeCode,
			@RequestParam(defaultValue = "") String searchKeyword) {

		Rq rq = (Rq) req.getAttribute("rq");

		Board board = boardService.getBoardById(boardId);

		int gHospitalsCount = gHospitalService.getGHospitalsCount(boardId, searchKeywordTypeCode, searchKeyword);
		System.err.println(gHospitalsCount);
		System.out.println(123);
		if (board == null) {
			return rq.historyBackOnView("없는 병원이야");
		}

		// 한페이지에 글 10개씩이야
		// 글 20개 -> 2 page
		// 글 24개 -> 3 page
		int itemsInAPage = 10;

		int pagesCount = (int) Math.ceil(gHospitalsCount / (double) itemsInAPage);

		List<GHospital> gHospitals = gHospitalService.getForPrintGHospitals(boardId, itemsInAPage, page, searchKeywordTypeCode,	searchKeyword);

		model.addAttribute("board", board);
		model.addAttribute("boardId", boardId);
		model.addAttribute("page", page);
		model.addAttribute("pagesCount", pagesCount);
		model.addAttribute("searchKeywordTypeCode", searchKeywordTypeCode);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("gHospitalsCount", gHospitalsCount);
		model.addAttribute("gHospitals", gHospitals);

		return "usr/gHospital/list";
	}

}