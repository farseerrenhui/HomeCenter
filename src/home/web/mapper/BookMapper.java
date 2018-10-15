package home.web.mapper;

import java.util.List;

import home.web.bean.Book;

public interface BookMapper {
//	List<Book> getBooks(@Param("id") int id, @Param("isbn") String isbn, @Param("name") String name, @Param("author") String author,
//			@Param("translator") String translator, @Param("publisher") String publisher, @Param("category") String category, @Param("note") String note,
//			@Param("star") int star) {
//		return null;
//	}
	List<Book> getBooks();
}
