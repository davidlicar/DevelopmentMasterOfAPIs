package com.mulesoft;

public class RecursionDemo {
	
	public static void main(String args[]) {
		printNumbersUsingRecursion(10);
	}
	
	public static void printNumbers(int number) {
		for (int i=1;i<10;i++) {
			System.out.println(i);
		}		
	}
	
	public static void printNumbersUsingRecursion(int number) {
		if(number!=0) {
			printNumbersUsingRecursion(number-1);
		}		
		System.out.println(number);
	}

}
