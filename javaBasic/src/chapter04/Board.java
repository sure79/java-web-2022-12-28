package chapter04;

import java.sql.Date;

public class Board {
	private Integer boardNumber;
	private String boardTitle;
	private String boardWriter;
	private Date resistDate;
	private String boardContent;
	public Board(Integer boardNumber, String boardTitle, String boardWriter, Date resistDate, String boardContent) {
		
		this.boardNumber = boardNumber;
		this.boardTitle = boardTitle;
		this.boardWriter = boardWriter;
		this.resistDate = resistDate;
		this.boardContent = boardContent;
	}
	
	
}
