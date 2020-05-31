package com.vienmv.util;

import java.util.UUID;

public class RandomUUID {

	public static String getRandomID() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}
}
