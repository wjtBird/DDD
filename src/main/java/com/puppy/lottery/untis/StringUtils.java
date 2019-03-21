package com.puppy.lottery.untis;

import org.slf4j.helpers.FormattingTuple;
import org.slf4j.helpers.MessageFormatter;

public abstract class StringUtils {

	public static String format(String messagePattern, Object... args) {
		if (args.length == 0) {
			return messagePattern;
		}
		if (messagePattern == null) {
			return messagePattern;
		}
		FormattingTuple formattingTuple = MessageFormatter.arrayFormat(messagePattern, args);
		return formattingTuple.getMessage();
	}

}
