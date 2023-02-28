package entity;

import java.util.Date;

//Board 데이터베이스의 Board 테이블
//게시물 정보
public class BoardEntity {
	
	//게시물 번호
	private int boardNumber;
	//게시물 제목
	private String boardTitle;
	//게시물 내용
	private String boardContent;
	//게시물 이미지 url
	private String boardImgUrl;
	//게시물 작성 날짜 및 시간
	private Date boardWriteDatetime;
	//게시물 조회수
	private int viewCount;
	//작성자이메일
	private String writerEmail;
	//작성자 닉네임
	private String writerNickname;
	//작성자 프로필 사진 url
	private String writerProfileUrl;
	//게시물 댓글 수
	private int commentCount;
	//게시물 좋아요 수
	private int likeCount;
	
	public BoardEntity(int boardNumber, String boardTitle, String boardContent, String boardImgUrl,
			Date boardWriteDatetime, int viewCount, String writerEmail, String writerNickname, String writerProfileUrl,
			int commentCount, int likeCount) {
		
		this.boardNumber = boardNumber;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardImgUrl = boardImgUrl;
		this.boardWriteDatetime = boardWriteDatetime;
		this.viewCount = viewCount;
		this.writerEmail = writerEmail;
		this.writerNickname = writerNickname;
		this.writerProfileUrl = writerProfileUrl;
		this.commentCount = commentCount;
		this.likeCount = likeCount;
	}
	
	
	public BoardEntity() {}


	public int getBoardNumber() {
		return boardNumber;
	}


	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}


	public String getBoardTitle() {
		return boardTitle;
	}


	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}


	public String getBoardContent() {
		return boardContent;
	}


	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}


	public String getBoardImgUrl() {
		return boardImgUrl;
	}


	public void setBoardImgUrl(String boardImgUrl) {
		this.boardImgUrl = boardImgUrl;
	}


	public Date getBoardWriteDatetime() {
		return boardWriteDatetime;
	}


	public void setBoardWriteDatetime(Date boardWriteDatetime) {
		this.boardWriteDatetime = boardWriteDatetime;
	}


	public int getViewCount() {
		return viewCount;
	}


	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}


	public String getWriterEmail() {
		return writerEmail;
	}


	public void setWriterEmail(String writerEmail) {
		this.writerEmail = writerEmail;
	}


	public String getWriterNickname() {
		return writerNickname;
	}


	public void setWriterNickname(String writerNickname) {
		this.writerNickname = writerNickname;
	}


	public String getWriterProfileUrl() {
		return writerProfileUrl;
	}


	public void setWriterProfileUrl(String writerProfileUrl) {
		this.writerProfileUrl = writerProfileUrl;
	}


	public int getCommentCount() {
		return commentCount;
	}


	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}


	public int getLikeCount() {
		return likeCount;
	}


	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}


	
	@Override
	public String toString() {
		return "BoardEntity [boardNumber=" + boardNumber + ", boardTitle=" + boardTitle + ", boardContent="
				+ boardContent + ", boardImgUrl=" + boardImgUrl + ", boardWriteDatetime=" + boardWriteDatetime
				+ ", viewCount=" + viewCount + ", writerEmail=" + writerEmail + ", writerNickname=" + writerNickname
				+ ", writerProfileUrl=" + writerProfileUrl + ", commentCount=" + commentCount + ", likeCount="
				+ likeCount + "]";
	}
	
	

}
