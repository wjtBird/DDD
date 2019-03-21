package com.puppy.lottery.exceptions;

public class JsonException extends RuntimeException {
	private static final long serialVersionUID = 1L;
	public JsonException(String msg) {
		super(msg);
	}
	public JsonException(Throwable t) {
		super(t);
	}
	public JsonException(String msg, Throwable t) {
		super(msg, t);
	}
}
