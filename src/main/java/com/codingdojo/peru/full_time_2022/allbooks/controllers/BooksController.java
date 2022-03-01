package com.codingdojo.peru.full_time_2022.allbooks.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.codingdojo.peru.full_time_2022.allbooks.models.Book;
import com.codingdojo.peru.full_time_2022.allbooks.services.BookService;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class BooksController {
	
	@Autowired
	BookService bookService;
	
	@GetMapping("/books/{bookId}")
	public String index(@PathVariable("bookId") Long bookId, Model model) {
		
		Book book = bookService.findBook(bookId);
		model.addAttribute("book", book);
		
		return "show.jsp";
	}

	@RequestMapping("/books")
	public String books(Model model) {
		List<Book> books = bookService.allBooks();
		model.addAttribute("books", books);
		return "/books.jsp";
	}
}
