package com.rest.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mybatis.service.BoardService;
import com.mybatis.vo.Board;

// @RestController : @Controller + @ResponseBody
@CrossOrigin(origins= "*", maxAge=6000)
@RestController
public class BoardRestController {

	@Autowired
	BoardService service;

	// localhost:9090/rest/
	@RequestMapping(value = "/boards", method = RequestMethod.GET)
	public List<Board> allBoards() {
		return service.selectAll();
	}

	@RequestMapping(value = "/boards/{num}", method = RequestMethod.GET)
	public Board oneBoard(@PathVariable String num) {
		return service.selectOne(0, num);
	}

	@RequestMapping(value = "/boards/{type}/{val}", method = RequestMethod.GET)
	public List<Board> findBoard(@PathVariable String type, @PathVariable String val) {
		System.out.println(type + " " + val);
		val = "%" + val + "%";
		if (type.equals("id")) {
			return service.searchByID(val);
		} else if (type.equals("title")) {
			return service.searchByTitle(val);
		}
		return null;
	}

	@RequestMapping(value = "/boards/{num}", method = RequestMethod.DELETE)
	public String deleteBoard(@PathVariable String num) {
		service.deleteBoard(num);
		return "delete success";
	}

	@RequestMapping(value = "/boards", method = RequestMethod.POST, headers = { "Content-type=application/json" })
	public Map insertBoard(@RequestBody Board b) {
		
		service.insert(b);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "insert success");
		return map;
	}

	@RequestMapping(value = "/boards", method = RequestMethod.PUT, headers = { "Content-type=application/json" })
	public Map modifyBoard(@RequestBody Board b) {
		service.modifyBoard(b);
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "update success");
		return map;
	}
}
