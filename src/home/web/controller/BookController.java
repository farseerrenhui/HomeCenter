package home.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import home.web.bean.Book;
import home.web.service.BookService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class BookController {

	@Autowired
	BookService bookService;

	@RequestMapping(value = "/getBooks", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String getBooks(Model model, HttpServletRequest request, HttpServletResponse response) {

		List<Book> books = bookService.getBooks();
		
//		JSONObject jsonObject = JSONObject.fromObject(books);
//		return jsonObject.toString();
		
		return JSONArray.fromObject(books).toString();
	}

//	@RequestMapping(value = "/getBooks", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
//	@ResponseBody
//	public String getBooks(Model model, HttpServletRequest request, HttpServletResponse response,
//			@RequestParam(value = "id", required = false) int id,
//			@RequestParam(value = "isbn", required = false) String isbn,
//			@RequestParam(value = "name", required = false) String name,
//			@RequestParam(value = "author", required = false) String author,
//			@RequestParam(value = "translator", required = false) String translator,
//			@RequestParam(value = "publisher", required = false) String publisher,
//			@RequestParam(value = "category", required = false) String category,
//			@RequestParam(value = "note", required = false) String note,
//			@RequestParam(value = "star", required = false) int star) {
//
//		List<Book> books = bookService.getBooks();
//		
//		JSONObject jsonObject = JSONObject.fromObject(books);
//		return jsonObject.toString();
//	}
}
