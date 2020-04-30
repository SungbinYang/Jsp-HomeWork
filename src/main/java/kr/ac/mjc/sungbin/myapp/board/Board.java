package kr.ac.mjc.sungbin.myapp.board;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {

	private String seq;
	private String title;
	private String content;
	private String regdate;
	private String writer;
	private int cnt;
}