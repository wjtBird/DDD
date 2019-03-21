package com.puppy.lottery.untis;


import java.util.Collection;
import java.util.Map;

public abstract class AssertUtil {
	public static void notEmpty(Object o, RuntimeException exception) {
		if (o == null) {
			throw exception;
		}
		if (o instanceof String) {
			if (EmptyUtil.isEmpty((String) o)) {
				throw exception;
			}
			return;
		}
		if (o instanceof Collection) {
			if (EmptyUtil.isEmpty((Collection<?>) o)) {
				throw exception;
			}
			return;
		}
		if (o instanceof Map) {
			if (EmptyUtil.isEmpty((Map<?, ?>) o)) {
				throw exception;
			}
			return;
		}
		if (o instanceof Object[]) {
			if (EmptyUtil.isEmpty((Object[]) o)) {
				throw exception;
			}
			return;
		}
	}

	public static void notEmpty(Object o, String message, Object... args) {
		if (o == null) {
			message = StringUtils.format(message, args);
			throw new IllegalArgumentException(message);
		}
		if (o instanceof String) {
			if (EmptyUtil.isEmpty((String) o)) {
				message = StringUtils.format(message, args);
				throw new IllegalArgumentException(message);
			}
			return;
		}
		if (o instanceof Collection) {
			if (EmptyUtil.isEmpty((Collection<?>) o)) {
				message = StringUtils.format(message, args);
				throw new IllegalArgumentException(message);
			}
			return;
		}

		if (o instanceof Map) {
			if (EmptyUtil.isEmpty((Map<?, ?>) o)) {
				message = StringUtils.format(message, args);
				throw new IllegalArgumentException(message);
			}
			return;
		}

		if (o instanceof Object[]) {
			if (EmptyUtil.isEmpty((Object[]) o)) {
				message = StringUtils.format(message, args);
				throw new IllegalArgumentException(message);
			}
			return;
		}
	}

	public static void isEmpty(Object o, String message, Object... args) {
		if (o != null) {
			if (o instanceof String) {
				if (!EmptyUtil.isEmpty((String) o)) {
					message = StringUtils.format(message, args);
					throw new IllegalArgumentException(message);
				}
				return;
			}
			if (o instanceof Collection) {
				if (!EmptyUtil.isEmpty((Collection<?>) o)) {
					message = StringUtils.format(message, args);
					throw new IllegalArgumentException(message);
				}
				return;
			}
			if (o instanceof Map) {
				if (!EmptyUtil.isEmpty((Map<?, ?>) o)) {
					message = StringUtils.format(message, args);
					throw new IllegalArgumentException(message);
				}
				return;
			}
			if (o instanceof Object[]) {
				if (!EmptyUtil.isEmpty((Object[]) o)) {
					message = StringUtils.format(message, args);
					throw new IllegalArgumentException(message);
				}
				return;
			}
			message = StringUtils.format(message, args);
			throw new IllegalArgumentException(message);
		}

	}

	public static void isEmpty(Object o, RuntimeException exception) {
		if (o != null) {
			if (o instanceof String) {
				if (!EmptyUtil.isEmpty((String) o)) {
					throw exception;
				}
				return;
			}
			if (o instanceof Collection) {
				if (!EmptyUtil.isEmpty((Collection<?>) o)) {
					throw exception;
				}
				return;
			}
			if (o instanceof Map) {
				if (!EmptyUtil.isEmpty((Map<?, ?>) o)) {
					throw exception;
				}
				return;
			}
			if (o instanceof Object[]) {
				if (!EmptyUtil.isEmpty((Object[]) o)) {
					throw exception;
				}
				return;
			}
			throw exception;
		}
	}

	public static void isTrue(boolean expression, RuntimeException exception) {
		if (!expression) {
			throw exception;
		}
	}

	public static void isTrue(boolean expression, String message, Object... args) {
		if (!expression) {
			message = StringUtils.format(message, args);
			throw new IllegalArgumentException(message);
		}
	}
}
