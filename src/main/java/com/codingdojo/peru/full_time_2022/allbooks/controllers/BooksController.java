package com.codingdojo.peru.full_time_2022.allbooks.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.codingdojo.peru.full_time_2022.allbooks.models.Book;
import com.codingdojo.peru.full_time_2022.allbooks.services.BookService;

import java.util.List;

import javax.validation.Valid;

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

	@GetMapping("/books/new")
	// Para poder usar Data Binding, tenemos que crear un objeto vacío con @ModelAttribute y pasarlo al JSP, del cual luego queremos recuperar datos en este objeto
	// Entre bambalinas, este objeto está haciendo algo muy parecido al modelo Model
	public String newBook(@ModelAttribute("book") Book book) {
		return "new.jsp";
	}

	@PostMapping(value = "/books/new")
	// El código comentado a continuación se emplea sin la anotación @ModelAttribute
	/*
	public String saveNewBook(@RequestParam(value = "title") String title, @RequestParam(value = "description") String description,
					   @RequestParam(value = "language") String language, @RequestParam(value = "pages") Integer numberOfPages) {
		Book book = new Book(title, description, language, numberOfPages);
	*/
	// Nuestro método saveNewBook con @ModelAttribute; tomar en cuenta que debemos emplear también @Valid y BindingResult para que funcione correctamente
	public String saveNewBook(@Valid @ModelAttribute("book") Book book, BindingResult result ) {

		if (result.hasErrors()) return "new.jsp";
		bookService.createBook(book);

		return "redirect:/books";
	}
}
