package library;
import java.sql.*;
import java.util.ArrayList;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
public class Main extends ActionSupport{
	public String author;
	
	public String bookname;
	public String Title;
	public String ISBN;
	public String Name;
	public String Age;
	public String AuthorId;
	public String Publisher;
	public String PublishDate;
	public String Price;
	public String Country;
	ArrayList<String> BookTitle = new ArrayList<String>(); 
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAge() {
		return Age;
	}
	public void setAge(String age) {
		Age = age;
	}
	public String getAuthorId() {
		return AuthorId;
	}
	public void setAuthorId(String authorId) {
		AuthorId = authorId;
	}
	public String getPublisher() {
		return Publisher;
	}
	public void setPublisher(String publisher) {
		Publisher = publisher;
	}
	public String getPublishDate() {
		return PublishDate;
	}
	public void setPublishDate(String publishDate) {
		PublishDate = publishDate;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String delete() throws UnsupportedEncodingException, SQLException{
		//ISBN = Tool.changeCode(ISBN);
		System.out.println(ISBN);
		Statement stmt = Tool.initSQL("library", "root","qazwsx234");
		ResultSet rs = stmt.executeQuery("select * from book where ISBN=\""+ISBN+"\"");
		if(!rs.next()){
			System.out.println("dwd");
		}
		String authorid=rs.getString("Author");
		System.out.println(authorid);
		stmt.executeUpdate("delete from book where ISBN=\""+ISBN+"\"");
		rs = stmt.executeQuery("select * from book where Author=\""+authorid+"\"");
		if(!rs.next()){
			stmt.executeUpdate("delete from author where Author=\""+authorid+"\"");
		}
		return SUCCESS;
	}
	public String toupdate() throws UnsupportedEncodingException{
		//Title = Tool.changeCode(Title);
		return SUCCESS;
	}
	public String update() throws UnsupportedEncodingException, SQLException{
		//Name = Tool.changeCode(Name);
		//Title = Tool.changeCode(Title);
		//Publisher = Tool.changeCode(Publisher);
		//PublishDate = Tool.changeCode(PublishDate);
		//Price = Tool.changeCode(Price);
		System.out.println(Title);
		System.out.println(Name);
		Statement stmt = Tool.initSQL("library", "root","qazwsx234");
		ResultSet rs = stmt.executeQuery("select * from author where Name=\""+Name+"\"");
		System.out.println("dsw");
		if(!rs.next()){
			return ERROR;
		}
		AuthorId = rs.getString("Author");
		stmt.executeUpdate("UPDATE book SET Author = \""+AuthorId+"\", Publisher = \""+Publisher+"\",PublishDate=\""+PublishDate+"\",Price=\""+Price+"\" WHERE Title=\""+Title+"\""); 
		return SUCCESS;
	}
	
	public String search() throws UnsupportedEncodingException, SQLException{
		//Title = Tool.changeCode(Title);
		Statement stmt = Tool.initSQL("library", "root","qazwsx234");
		ResultSet rs = stmt.executeQuery("select * from book"); 
		while(rs.next()){
			if(rs.getString("Title").equals(Title)){
				Title = rs.getString("Title");
				ISBN = rs.getString("ISBN");
				AuthorId = rs.getString("Author");
				Publisher = rs.getString("Publisher");
				PublishDate = rs.getString("PublishDate");
				Price = rs.getString("Price");
			}
		}
		rs = stmt.executeQuery("select * from author where Author=\""+AuthorId+"\""); 
		rs.next();
		Name = rs.getString("Name");
		Age = rs.getString("Age");
		Country = rs.getString("Country");
		return SUCCESS;
	}
	
	public String execute() throws UnsupportedEncodingException, SQLException{ 
		//author = Tool.changeCode(author);
		Statement stmt = Tool.initSQL("library", "root","qazwsx234");
		ResultSet rs = stmt.executeQuery("select * from author where Name=\""+author+"\""); 
		if(!rs.next()){
      	  return ERROR;
        }
        String authorId = rs.getString("Author");
        rs = stmt.executeQuery("select * from book"); 
        while (rs.next()) {
	      	if(rs.getString("Author").equals(authorId)){
	      		BookTitle.add(rs.getString("Title"));
	      	}
        }
		return SUCCESS;
	}
	public String addbook() throws UnsupportedEncodingException, SQLException{
		//ISBN = Tool.changeCode(ISBN);
		//Title = Tool.changeCode(Title);
		//Publisher = Tool.changeCode(Publisher);
		//PublishDate = Tool.changeCode(PublishDate);
		//Price = Tool.changeCode(Price);
		//AuthorId = Tool.changeCode(AuthorId);
		Statement stmt = Tool.initSQL("library","root", "qazwsx234");
		ResultSet rs = stmt.executeQuery("select * from book where ISBN=\""+ISBN+"\"");
		if(rs.next()){
			return "fail";
		}
		
		stmt.executeUpdate("INSERT INTO book (ISBN, Title, Author,Publisher,PublishDate,Price)VALUES(\""+ISBN+"\", \""+Title+"\", \""+AuthorId+"\",\""+Publisher+"\",\""+PublishDate+"\",\""+Price+"\")");
		rs = stmt.executeQuery("select * from author where Author=\""+AuthorId+"\"");
		if(rs.next())
			return SUCCESS;
		else
			return ERROR;
		
		
		
		
	}
	public String addauthor() throws UnsupportedEncodingException, SQLException{
		//AuthorId=Tool.changeCode(AuthorId);
		//Name=Tool.changeCode(Name);
		//Age=Tool.changeCode(Age);
		//Country=Tool.changeCode(Country);
		Statement stmt = Tool.initSQL("library","root", "qazwsx234");
		stmt.executeUpdate("INSERT INTO author (Author, Name, Age,Country)VALUES(\""+AuthorId+"\", \""+Name+"\", \""+Age+"\",\""+Country+"\")");
		
		
		return SUCCESS;
	}
	
	
	
	
	
	
	
	
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public ArrayList<String> getBookTitle() {
		return BookTitle;
	}

	public void setBookTitle(ArrayList<String> bookTitle) {
		BookTitle = bookTitle;
	}

}
