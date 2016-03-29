

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public  class mancala {
	public static void main(String[] args) throws Exception {	
		File readFile = new File(args[1]);
		BufferedReader reader = new BufferedReader(new FileReader(readFile));		
		int algorithm   = Integer.parseInt(reader.readLine().trim());
		int myPlayer = Integer.parseInt(reader.readLine().trim());
		int cutoff = Integer.parseInt(reader.readLine().trim());
		
		String player_2_board[] = reader.readLine().split(" ");
		String player_1_board[] = reader.readLine().split(" ");
		int player2Mancala   = Integer.parseInt(reader.readLine().trim());
		int player1Mancala   = Integer.parseInt(reader.readLine().trim());
		
		Board board = new Board(player_1_board, player_2_board, player1Mancala, player2Mancala);
		Board maxPlayer = new Board(myPlayer, board);
		int min;
		if(myPlayer == 1)
			min = 2;
		else
			min = 1;
		Board minPlayer = new Board(min, board);
		HandleAlgorithms handle = new HandleAlgorithms(cutoff, maxPlayer, minPlayer);
		board =  handle.getBoardAfterNextMove(board,algorithm);

		int player_1_first_pos = board.getPlayer_1_first_pos();
		int player_2_first_pos = board.getPlayer_2_first_pos();
		int player_1_last_pos = board.getPlayer_1_last_pos();
		int player_2_last_pos = board.getPlayer_2_last_pos();
		String player2 = "";
		String player1 = "";
		List<String> list = new ArrayList<String>();
		for(int i=player_2_first_pos; i >= player_2_last_pos; i--) {
			player2 = player2 + board.board[i].coinsInNode + " ";
		}
		list.add(player2);
		for(int j=player_1_first_pos;j <= player_1_last_pos; j++) {
			player1 = player1 + board.board[j].coinsInNode + " ";
		}
		list.add(player1);
		PrintWriter printWriter = new PrintWriter("next_state.txt", "UTF-8");
		int player2MancalaAfterPlay = board.board[board.getPlayer_2_mancala_pos()].coinsInNode;
		int player1MancalaAfterPlay = board.board[board.getPlayer_1_mancala_pos()].coinsInNode;
		list.add(Integer.toString(player2MancalaAfterPlay));
		list.add(Integer.toString(player1MancalaAfterPlay));		
		for(String i : list){
			printWriter.println(i);
		}
		printWriter.close();	
	}	
}

class HandleAlgorithms{
	private int cutoff;
	private Board maxPlayer;
	private Board minPlayer;
	int evalValue;
	Board board;
	
	public HandleAlgorithms(int cutoff, Board maxPlayer, Board minPlayer) {
		this.cutoff = cutoff;
		this.maxPlayer = maxPlayer;
		this.minPlayer = minPlayer;
	}
	
	public HandleAlgorithms(int eval) {
		this.evalValue = eval;
	}
	
	public HandleAlgorithms(int eval, Board board) {
		this.evalValue = eval;
		this.board = board;
	}

	
	public Board getBoardAfterNextMove(Board board, int algorithm) throws Exception {		
		HandleAlgorithms temp = null;
		if(algorithm == 1){
			 temp = board.playByMax_Greedy(board,maxPlayer,minPlayer,"root", false, 0,1);
			}
		else if(algorithm == 2){
			PrintWriter writer = new PrintWriter("traverse_log.txt", "UTF-8");		
			writer.println("Node,Depth,Value");
			temp = board.playByMax_MiniMax(board,maxPlayer,minPlayer,"root", false, 0,cutoff,writer);
			writer.close();			
		}
		else if(algorithm == 3){
			PrintWriter writer = new PrintWriter("traverse_log.txt", "UTF-8");		
			writer.println("Node,Depth,Value,Alpha,Beta");
			temp = board.playByMax_AlphaBeta(board,maxPlayer,minPlayer, "root", false, 0,Integer.MIN_VALUE,Integer.MAX_VALUE,cutoff,writer);
			writer.close();
		}		
		return temp.board;
	}
}

class Board {
Node board[];
private int player_1_first_pos;
private int player_1_last_pos;
private int startIndex;
private int player_2_first_pos;
private int player_2_last_pos;
private int endIndex;
private int player_1_mancala_pos;
private int myPlayerMancalaIndex;
private int player_2_mancala_pos;
private int anotherPlayerMancalaIndex;
private int size;		
int indicatorFlag;
int player;
public Board(String[] player_1_board, String[] player_2_board, int player1MancalaCount, int player2MancalaCount) {
		size = player_1_board.length + player_2_board.length + 2;
		setPlayer_1_first_pos(0);
		setPlayer_1_last_pos(player_1_board.length - 1);
		setPlayer_2_first_pos(size - 2);
		setPlayer_2_last_pos(player_1_board.length + 1);
		setPlayer_1_mancala_pos(player_1_board.length);		
		setPlayer_2_mancala_pos(size - 1);		
		board = new Node[size];
		
		for(int i=0; i<player_1_board.length; i++) { 
			board[getPlayer_1_first_pos()+i] = new Node("B"+(i+2), Integer.parseInt(player_1_board[i]),getPlayer_1_first_pos()+i);
		}
		for(int i=0; i<player_2_board.length; i++) { 
			board[getPlayer_2_first_pos()-i] = new Node("A"+(i+2), Integer.parseInt(player_2_board[i]),getPlayer_2_first_pos()-i);
		}
		board[getPlayer_1_mancala_pos()] = new Node("B"+(getPlayer_1_mancala_pos()+2), player1MancalaCount,getPlayer_1_mancala_pos());
		board[getPlayer_2_mancala_pos()] = new Node("A1", player2MancalaCount,getPlayer_2_mancala_pos());
	}

public Board(Board boardNode) {
	size = boardNode.size;
	setPlayer_1_first_pos(boardNode.getPlayer_1_first_pos());
	setPlayer_1_last_pos(boardNode.getPlayer_1_last_pos());
	setPlayer_1_mancala_pos(boardNode.getPlayer_1_mancala_pos());
	setPlayer_2_first_pos(boardNode.getPlayer_2_first_pos());
	setPlayer_2_last_pos(boardNode.getPlayer_2_last_pos());
	setPlayer_2_mancala_pos(boardNode.getPlayer_2_mancala_pos());			
	board = new Node[size];
	for(int i=0; i<boardNode.size; i++) {
		board[i] = new Node(boardNode.board[i]);
	}
}	

public Board(int playerNumber, Board board) {
	setEndIndex(board.getPlayer_1_mancala_pos());
	if(playerNumber == 2) {
		setStartIndex(board.getPlayer_2_first_pos());
		setmyPlayerMancalaIndex(board.getPlayer_2_mancala_pos());
		setanotherPlayerMancalaIndex(board.getPlayer_1_mancala_pos());
		setIndicatorFlag(-1);		
		setPlayer(2);
	}
	else {
		setStartIndex(board.getPlayer_1_first_pos());
		setmyPlayerMancalaIndex(board.getPlayer_1_mancala_pos());
		setanotherPlayerMancalaIndex(board.getPlayer_2_mancala_pos());
		setIndicatorFlag(1);	
		setPlayer(1);
	}
}

public void setStartIndex(int player_1_first_pos) {
	this.startIndex = player_1_first_pos;
	}

public int getStartIndex() {
	return startIndex;
	}

public void setIndicatorFlag(int indicator) {
	this.indicatorFlag = indicator;
	}
		
public int getIndicatorFlag() {
	return indicatorFlag;
	}

public void setPlayer(int player) {
	this.player = player;
	}
		
public int getPlayer() {
	return player;
	}

public void setEndIndex(int player_1_mancala_pos) {
	this.endIndex = player_1_mancala_pos;
	}

public int getEndIndex() {
	return endIndex;
	}

public void setmyPlayerMancalaIndex(int player_1_mancala_pos) {
	this.myPlayerMancalaIndex = player_1_mancala_pos;
	}

public int getmyPlayerMancalaIndex() {
		return myPlayerMancalaIndex;
	}

public void setanotherPlayerMancalaIndex(int player_2_mancala_pos) {
	this.anotherPlayerMancalaIndex = player_2_mancala_pos;
	}

public int getanotherPlayerMancalaIndex() {
		return anotherPlayerMancalaIndex;
	}


public Node getNode(int boardIndex) {
	return board[boardIndex%size];
	}
		
public List<Node> constructBoard(Board board) {
	List<Node> nodesList = new ArrayList<Node>();
	for(int i = startIndex; i != endIndex;) {
		nodesList.add(board.getNode(i));
		 i=i+indicatorFlag;
	}
	return nodesList;
}

	
public boolean isNextMoveValid(Board board) {
	List<Node> listNodes = new ArrayList<Node>();
	for(int i = startIndex; i != endIndex; ) {
		listNodes.add(board.getNode(i));
		i=i+indicatorFlag;
	}
	for(Node node : listNodes) {
		if(node.coinsInNode != 0) {
			return true;
		}
	}
	return false;
}

public boolean constructMancala(Board board1, int makeMoveStartIndex) {
	size = board1.board.length;
	int index = makeMoveStartIndex;
	int count = board1.board[makeMoveStartIndex%size].coinsInNode;
	board1.board[makeMoveStartIndex%size].coinsInNode = 0;
	for(int k=count; k>0; ){
		index = (index+1)%board1.size;
		if(index != anotherPlayerMancalaIndex) {
		++board1.board[index%size].coinsInNode;
		--k;
		}
	}
	
	boolean inPlayerHole = false;
	for(int i = startIndex; i != endIndex;) {
		if(index == i) {
			inPlayerHole = true;
		}
		 i=i+indicatorFlag;
	}
	if(inPlayerHole && board1.board[index%size].coinsInNode == 1) {
		board1.board[index%size].coinsInNode = 0;
		int presentMancalaCount = board1.board[myPlayerMancalaIndex%size].coinsInNode + 1;
		int opponentHoleToEmpty = board1.getPlayer_1_mancala_pos() + (board1.getPlayer_1_mancala_pos() - index);
		presentMancalaCount = presentMancalaCount + board1.board[opponentHoleToEmpty%size].coinsInNode ;
		board1.board[opponentHoleToEmpty%size].coinsInNode = 0;
		board1.board[myPlayerMancalaIndex%size].coinsInNode = presentMancalaCount;
		}
	if(index == myPlayerMancalaIndex) {
		return true;
	}
		return false;
}

public void setGameEndBoard (Board maxPlayer, Board minPlayer, Board board){
	if(!maxPlayer.isNextMoveValid(board)) {
		int sum = 0;
		size = board.board.length;
		List<Node> nodes = new ArrayList<Node>();
		int startIndex = (maxPlayer.player == 1) ? board.player_2_last_pos : board.player_1_first_pos;
		int endIndex = (maxPlayer.player == 1 ) ? board.player_2_first_pos : board.player_1_last_pos;
		for(int i = startIndex; i <= endIndex; i++) {
			nodes.add(board.getNode(i));
		}
		for(Node node : nodes) {
			sum = sum + node.coinsInNode;
			node.coinsInNode = 0;
		}
		int mancalapos = (maxPlayer.player == 1) ? board.player_2_mancala_pos : board.player_1_mancala_pos;
		sum = sum + board.board[mancalapos%size].coinsInNode ;
		board.board[mancalapos%size].coinsInNode = sum;

	}
	if(!minPlayer.isNextMoveValid(board)) {
		int sum = 0;
		size = board.board.length;
		List<Node> nodes = new ArrayList<Node>();
		int startIndex = (minPlayer.player == 1) ? board.player_2_last_pos : board.player_1_first_pos;
		int endIndex = (minPlayer.player == 1 ) ? board.player_2_first_pos : board.player_1_last_pos;
		for(int i = startIndex; i <= endIndex; i++) {
			nodes.add(board.getNode(i));
		}
		for(Node node : nodes) {
			sum = sum + node.coinsInNode;
			node.coinsInNode = 0;
		}
		int mancalapos = (minPlayer.player == 1) ? board.player_2_mancala_pos : board.player_1_mancala_pos;
		sum = sum + board.board[mancalapos%size].coinsInNode ;
		board.board[mancalapos%size].coinsInNode = sum;
	}

}

public int evaluateBoard(Board board) {
	size = board.board.length;
	return board.board[myPlayerMancalaIndex%size].coinsInNode - board.board[anotherPlayerMancalaIndex%size].coinsInNode ;
	}
	
public void setPlayer_1_first_pos(int player_1_first_pos) {
	this.player_1_first_pos = player_1_first_pos;
	}
	
public int getPlayer_1_first_pos() {
	return player_1_first_pos;
	}
	
public void setPlayer_1_last_pos(int player_1_last_pos) {
	this.player_1_last_pos = player_1_last_pos;
	}
	
public int getPlayer_1_last_pos() {
	return player_1_last_pos;
	}

public void setPlayer_2_first_pos(int player_2_first_pos) {
	this.player_2_first_pos = player_2_first_pos;
	}

public int getPlayer_2_first_pos() {
	return player_2_first_pos;
	}
		
public void setPlayer_2_last_pos(int player_2_last_pos) {
	this.player_2_last_pos = player_2_last_pos;
	}
	
public int getPlayer_2_last_pos() {
	return player_2_last_pos;
	}

public void setPlayer_1_mancala_pos(int player_1_mancala_pos) {
	this.player_1_mancala_pos = player_1_mancala_pos;
	}
	
public int getPlayer_1_mancala_pos() {
	return player_1_mancala_pos;
}

public void setPlayer_2_mancala_pos(int player_2_mancala_pos) {
	this.player_2_mancala_pos = player_2_mancala_pos;
	}
	
public int getPlayer_2_mancala_pos() {
	return player_2_mancala_pos;
	}

	
public  HandleAlgorithms playByMax_Greedy(Board board,Board maxPlayer,Board minPlayer, String currentNode, boolean anotherTurn, int level,int cutoff) {
	HandleAlgorithms temp;			
	if(level >= cutoff && !anotherTurn) {
			if(!maxPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = minPlayer.startIndex; i != minPlayer.endIndex; i+=minPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;
					node.coinsInNode = 0;
				}
				sum = sum + board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;

			}
			if(!minPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = maxPlayer.startIndex; i != maxPlayer.endIndex; i+=maxPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;
					node.coinsInNode = 0;
				}
				sum = sum + board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;
			}
			return new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
		}
		HandleAlgorithms finalMaxEvalValue = new HandleAlgorithms(Integer.MIN_VALUE, board);
		for(Node node : maxPlayer.constructBoard(board)) {
			Board currentBoard = new Board(board);
			if(node.coinsInNode > 0) {		
				boolean nextChance = maxPlayer.constructMancala(currentBoard, node.nodeArrayIndex);
				setGameEndBoard(maxPlayer, minPlayer, currentBoard);
				if(!nextChance) {
					int levelNo = anotherTurn ? level : level+1; 
					temp = playByMin_Greedy(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance, levelNo,cutoff);
				}
				else {
					int levelNos = anotherTurn ? level : level+1; 
					temp = playByMax_Greedy(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance, levelNos,cutoff);
				}
				if(temp.evalValue > finalMaxEvalValue.evalValue) {
					finalMaxEvalValue = temp;
				}
			}
		}
		return finalMaxEvalValue;
		
	}
	
public  HandleAlgorithms playByMin_Greedy(Board board,Board maxPlayer, Board minPlayer, String currentNode, boolean anotherTurn, int level, int cutoff) {
	HandleAlgorithms temp;	
	if(level >= cutoff && !anotherTurn) {
			if(!minPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = maxPlayer.startIndex; i != maxPlayer.endIndex; i+=maxPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;
					node.coinsInNode = 0;
				}
				sum = sum + board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;

			}
			if(!maxPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = minPlayer.startIndex; i != minPlayer.endIndex; i+=minPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;
					node.coinsInNode = 0;
				}
				sum = sum + board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;
			}
			return new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
		}
		HandleAlgorithms finalMinEvalValue = new HandleAlgorithms(Integer.MAX_VALUE, board);
		for(Node node : minPlayer.constructBoard(board)) {
			Board currentBoard = new Board(board);
			if(node.coinsInNode > 0) {
				boolean nextChance = minPlayer.constructMancala(currentBoard, node.nodeArrayIndex);
				setGameEndBoard(maxPlayer, minPlayer, currentBoard);
				if(!nextChance) {
					int levelNo = anotherTurn ? level : level+1;
					temp = playByMax_Greedy(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance, levelNo,cutoff);
				}
				else {
					int levelNos = anotherTurn ? level : level+1;
					temp = playByMin_Greedy(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance, levelNos,cutoff);
				}
				if(temp.evalValue < finalMinEvalValue.evalValue) {
					finalMinEvalValue.evalValue = temp.evalValue;
					if(level != 1) {
						finalMinEvalValue.board = temp.board;
					}
				}
			}
		}
		return finalMinEvalValue;
	}		
	
public  HandleAlgorithms playByMax_MiniMax(Board board,Board maxPlayer,Board minPlayer, String currentNode, boolean anotherTurn, int level,int cutoff,PrintWriter writer) {
	HandleAlgorithms temp;	
	if(level >= cutoff && !anotherTurn ) {
			if(!maxPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = minPlayer.startIndex; i != minPlayer.endIndex; i+=minPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;					
					node.coinsInNode = 0;
				}
				sum = sum + board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;

			}
			if(!minPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = maxPlayer.startIndex; i != maxPlayer.endIndex; i+=maxPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;					
					node.coinsInNode = 0;

				}
				sum = sum + board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;
			}
			writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board)).evalValue);
			return new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
		}
	if (!maxPlayer.isNextMoveValid(board) && !minPlayer.isNextMoveValid(board))
	{
		if (cutoff == level){
			if (anotherTurn)
			writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board)).evalValue);
		}
		else{
			writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board)).evalValue);
		}
		return new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
	}
		HandleAlgorithms finalMaxEvalValue = new HandleAlgorithms(Integer.MIN_VALUE, board);
		if(level == cutoff && anotherTurn ) {
			HandleAlgorithms temp1 = new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
			writer.println(currentNode + "," + level + "," + "-Infinity");
		}
		else {
			writer.println(currentNode + "," + level + "," + "-Infinity");
		}
		
		for(Node node : maxPlayer.constructBoard(board)) {
			Board currentBoard = new Board(board);
			if(node.coinsInNode > 0) {
				boolean nextChance = maxPlayer.constructMancala(currentBoard, node.nodeArrayIndex);
				setGameEndBoard(maxPlayer, minPlayer, currentBoard);
				if(!nextChance) {
					int levelNo = anotherTurn ? level : level+1;
					temp = playByMin_MiniMax(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance, levelNo,cutoff,writer);
				}
				else {
					int levelNos = anotherTurn ? level : level+1;
					temp = playByMax_MiniMax(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance, levelNos,cutoff,writer);
				}
				if(temp.evalValue > finalMaxEvalValue.evalValue) {
					finalMaxEvalValue = temp;
				}
				writer.println(currentNode + "," + level + "," + finalMaxEvalValue.evalValue);
			}
		}
		return finalMaxEvalValue;
		
	}
	
public  HandleAlgorithms playByMin_MiniMax(Board board,Board maxPlayer, Board minPlayer, String currentNode, boolean anotherTurn, int level, int cutoff, PrintWriter writer) {
	HandleAlgorithms temp;	
	if(level >= cutoff && !anotherTurn) {
			if(!minPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = maxPlayer.startIndex; i != maxPlayer.endIndex; i+=maxPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;				
					node.coinsInNode = 0;
				}
				sum = sum + board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;
			}
			if(!maxPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = minPlayer.startIndex; i != minPlayer.endIndex; i+=minPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;					
					node.coinsInNode = 0;
				}
				sum = sum + board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;
			}
			writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board)).evalValue);
			return new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
		}
		if (!maxPlayer.isNextMoveValid(board) && !minPlayer.isNextMoveValid(board))
		{
			if (cutoff == level){
				if(anotherTurn)
				writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board)).evalValue);
			}
			else{
				writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board)).evalValue);
			}
			return new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
		}
		HandleAlgorithms finalMinEvalValue = new HandleAlgorithms(Integer.MAX_VALUE, board);
		if(level == cutoff && anotherTurn) {
			HandleAlgorithms temp1 = new HandleAlgorithms(minPlayer.evaluateBoard(board), board);
				writer.println(currentNode + "," + level + "," + "Infinity");
		}
		else {
			writer.println(currentNode + "," + level + "," + "Infinity");
		}
		for(Node node : minPlayer.constructBoard(board)) {
			Board currentBoard = new Board(board);
			if(node.coinsInNode > 0) {
				boolean nextChance = minPlayer.constructMancala(currentBoard, node.nodeArrayIndex);
				setGameEndBoard(maxPlayer, minPlayer, currentBoard);
				if(!nextChance) {
					int levelNo = anotherTurn ? level : level+1; 
					temp = playByMax_MiniMax(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance,levelNo,cutoff,writer);
				}
				else {
					int levelNos =  anotherTurn ? level : level+1;
					temp = playByMin_MiniMax(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance,levelNos,cutoff,writer);
				}
				if(temp.evalValue < finalMinEvalValue.evalValue) {
					finalMinEvalValue.evalValue = temp.evalValue;
					if(level != 1) {
						finalMinEvalValue.board = temp.board;
					}
				}
				writer.println(currentNode + "," + level + "," + finalMinEvalValue.evalValue);
			}
		}
		return finalMinEvalValue;
	}	
	

public  HandleAlgorithms playByMax_AlphaBeta(Board board,Board maxPlayer,Board minPlayer, String currentNode, boolean anotherTurn, int level,int alpha,int beta,int cutoff, PrintWriter writer) {
	HandleAlgorithms temp;	
	if(level >= cutoff && !anotherTurn) {
			if(!maxPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = minPlayer.startIndex; i != minPlayer.endIndex; i+=minPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;
					node.coinsInNode = 0;
				}
				sum = sum + board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;
			}
			if(!minPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = maxPlayer.startIndex; i != maxPlayer.endIndex; i+=maxPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;
					node.coinsInNode = 0;
				}
				sum = sum + board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;
			}
			String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
			String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
			writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board).evalValue) + "," + printAlpha + "," + printBeta);
			return new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
		}
	if (!maxPlayer.isNextMoveValid(board) && !minPlayer.isNextMoveValid(board))
	{
		if (cutoff == level){
			if(anotherTurn){
			String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
		String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
		writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board).evalValue) + "," + printAlpha + "," + printBeta);
		}
		}
		else{
			String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
			String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
			writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board).evalValue) + "," + printAlpha + "," + printBeta);
		}
		return new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
	}

		HandleAlgorithms finalMaxEvalValue = new HandleAlgorithms(Integer.MIN_VALUE, board);
		if(level == cutoff && anotherTurn ) {
				HandleAlgorithms temp1 = new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
				String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
				String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
				writer.println(currentNode + "," + level + "," + "-Infinity" + "," + printAlpha + "," + printBeta);
		}
		else {
			String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
			String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
			writer.println(currentNode + "," + level + "," + "-Infinity" + "," + printAlpha + "," + printBeta);
		}
		
		for(Node node : maxPlayer.constructBoard(board)) {
			Board currentBoard = new Board(board);
			if(node.coinsInNode > 0) {
				boolean nextChance = maxPlayer.constructMancala(currentBoard, node.nodeArrayIndex);
				setGameEndBoard(maxPlayer, minPlayer, currentBoard);
				if(!nextChance) {
					int levelNo = anotherTurn ? level : level+1;
					temp = playByMin_AlphaBeta(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance, levelNo,alpha,beta,cutoff,writer);
				}
				else {
					int levelNos = anotherTurn ? level : level+1;
					temp = playByMax_AlphaBeta(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance, levelNos,alpha,beta,cutoff,writer);
				}
				if(temp.evalValue > finalMaxEvalValue.evalValue) {
					finalMaxEvalValue = temp;
				}
								
				if(temp.evalValue >= beta) {
					String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
					String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
					writer.println(currentNode + "," + level + "," + finalMaxEvalValue.evalValue + "," + printAlpha + "," + printBeta);
					return finalMaxEvalValue;
				}
				
				if(temp.evalValue > alpha) {
					alpha = temp.evalValue;
				}
				String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
				String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
				writer.println(currentNode + "," + level + "," + finalMaxEvalValue.evalValue + "," + printAlpha + "," + printBeta);
			}
		}
		return finalMaxEvalValue;
		
	}
	
public  HandleAlgorithms playByMin_AlphaBeta(Board board,Board maxPlayer, Board minPlayer, String currentNode, boolean anotherTurn, int level,int alpha,int beta,int cutoff, PrintWriter writer) {
	HandleAlgorithms temp;	
	if(level >= cutoff && !anotherTurn) {
			if(!minPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = maxPlayer.startIndex; i != maxPlayer.endIndex; i+=maxPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;
					node.coinsInNode = 0;
				}
				sum = sum + board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[maxPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;
			}
			if(!maxPlayer.isNextMoveValid(board)) {
				int sum = 0;
				size = board.board.length;
				List<Node> nodes = new ArrayList<Node>();
				for(int i = minPlayer.startIndex; i != minPlayer.endIndex; i+=minPlayer.indicatorFlag) {
					nodes.add(board.getNode(i));
				}
				for(Node node : nodes) {
					sum = sum + node.coinsInNode;
					node.coinsInNode = 0;
				}
				sum = sum + board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode ;
				board.board[minPlayer.myPlayerMancalaIndex%size].coinsInNode = sum;
			}
			String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
			String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
			writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board).evalValue) + "," + printAlpha + "," + printBeta);
			return new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
		}
	if (!maxPlayer.isNextMoveValid(board) && !minPlayer.isNextMoveValid(board))
	{
		if (cutoff == level ){
			if(anotherTurn){
			String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
			String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
			writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board).evalValue) + "," + printAlpha + "," + printBeta);	
		}
		}
		else{
			String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
			String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
			writer.println(currentNode + "," + level + "," + (new HandleAlgorithms(maxPlayer.evaluateBoard(board), board).evalValue) + "," + printAlpha + "," + printBeta);	
		}			
		return new HandleAlgorithms(maxPlayer.evaluateBoard(board), board);
	}

		HandleAlgorithms finalMinEvalValue = new HandleAlgorithms(Integer.MAX_VALUE, board);
		if(level == cutoff && anotherTurn) {
				HandleAlgorithms temp1 = new HandleAlgorithms(minPlayer.evaluateBoard(board), board);
				String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
				String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
				writer.println(currentNode + "," + level + "," + "Infinity" + "," + printAlpha + "," + printBeta);
		}
		else {
			String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
			String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
			writer.println(currentNode + "," + level + "," + "Infinity" + "," + printAlpha + "," + printBeta);
		}
		for(Node node : minPlayer.constructBoard(board)) {
			Board currentBoard = new Board(board);
			if(node.coinsInNode > 0) {
				boolean nextChance = minPlayer.constructMancala(currentBoard, node.nodeArrayIndex);
				setGameEndBoard(maxPlayer, minPlayer, currentBoard);
				if(!nextChance) {
					int levelNo = anotherTurn ? level : level+1; 
					temp = playByMax_AlphaBeta(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance,levelNo,alpha,beta,cutoff,writer);
				}
				else {
					int levelNos =  anotherTurn ? level : level+1;
					temp = playByMin_AlphaBeta(currentBoard,maxPlayer,minPlayer, node.nodeName, nextChance,levelNos,alpha,beta,cutoff,writer);
				}
				if(temp.evalValue < finalMinEvalValue.evalValue) {
					finalMinEvalValue.evalValue = temp.evalValue;
					if(level != 1) {
						finalMinEvalValue.board = temp.board;
					}
				}
				
				if(temp.evalValue <= alpha) {
					String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
					String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
					writer.println(currentNode + "," + level + "," + finalMinEvalValue.evalValue + "," + printAlpha + "," + printBeta);
					return finalMinEvalValue;
				}
				if(temp.evalValue < beta) {
					beta = temp.evalValue;
				}
				String printAlpha = (alpha == Integer.MIN_VALUE ? "-Infinity" : alpha).toString();
				String printBeta = (beta == Integer.MAX_VALUE ? "Infinity" : beta).toString();
				writer.println(currentNode + "," + level + "," + finalMinEvalValue.evalValue + "," + printAlpha + "," + printBeta);
			}
		}
		return finalMinEvalValue;
	}	
	

}


class Node {	
String nodeName;
int coinsInNode;
int nodeArrayIndex;

public Node(String nodeName, int coinsInNode,int nodeArrayIndex) {
	this.nodeName = nodeName;
	this.coinsInNode = coinsInNode;
	this.nodeArrayIndex = nodeArrayIndex;
	}
	
public Node(Node node) {
	nodeArrayIndex = node.nodeArrayIndex;
	nodeName = node.nodeName;
	coinsInNode = node.coinsInNode;
	}
}
