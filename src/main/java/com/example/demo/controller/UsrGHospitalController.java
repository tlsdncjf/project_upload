package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.ArticleService;
import com.example.demo.service.BoardService;
import com.example.demo.service.GHositalService;
import com.example.demo.service.ReactionPointService;
import com.example.demo.service.ReplyService;
import com.example.demo.util.Ut;
import com.example.demo.vo.Article;
import com.example.demo.vo.Board;
import com.example.demo.vo.Reply;
import com.example.demo.vo.ResultData;
import com.example.demo.vo.Rq;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class UsrGHospitalController {

	@Autowired
	private Rq rq;

	@Autowired
	private GHositalService gHositalService;

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
	public String showList(HttpServletRequest req, Model model, @RequestParam(defaultValue = "1")
			@RequestParam(defaultValue = "1") int page,
			@RequestParam(defaultValue = "hName,areaName") String searchKeywordTypeCode,
			@RequestParam(defaultValue = "") String searchKeyword) {

		Rq rq = (Rq) req.getAttribute("rq");

		int articlesCount = gHositalService.getArticlesCount(searchKeywordTypeCode, searchKeyword);

		if (hName == null) {
			return rq.historyBackOnView("없는 병원이야");
		}

		// 한페이지에 글 10개씩이야
		// 글 20개 -> 2 page
		// 글 24개 -> 3 page
		int itemsInAPage = 10;

		int pagesCount = (int) Math.ceil(articlesCount / (double) itemsInAPage);

		List<Article> articles = gHositalService.getForPrintArticles(boardId, itemsInAPage, page, searchKeywordTypeCode,
				searchKeyword);

		model.addAttribute("hName", hName);
		model.addAttribute("areaName", areaName);
		model.addAttribute("page", page);
		model.addAttribute("pagesCount", pagesCount);
		model.addAttribute("searchKeywordTypeCode", searchKeywordTypeCode);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("articlesCount", articlesCount);
		model.addAttribute("articles", articles);

		return "usr/article/list";
	}

}