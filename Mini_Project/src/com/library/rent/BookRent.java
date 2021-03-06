package com.library.rent;

public class BookRent {

	private String title;
	private String authors;
	private String publisher;
	private String isbn;
	private String thumbnail;
	private String rent;
	
	
	public BookRent() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public BookRent(String title, String authors, String publisher, String isbn, String thumbnail, String rent) {
		super();
		this.title = title;
		this.authors = authors;
		this.publisher = publisher;
		this.isbn = isbn;
		this.thumbnail = thumbnail;
		this.rent = rent;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthors() {
		return authors;
	}
	public void setAuthors(String authors) {
		this.authors = authors;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getRent() {
		return rent;
	}
	public void setRent(String rent) {
		this.rent = rent;
	}
	
	
}
