package home.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import home.web.bean.Book;
import home.web.mapper.BookMapper;
import home.web.service.BookService;

@Service("bookService")
public class BookServiceImpl implements BookService {

	@Autowired
	BookMapper bookMapper;
	
	@Override
	public List<Book> getBooks() {
		return bookMapper.getBooks();
	}

}
