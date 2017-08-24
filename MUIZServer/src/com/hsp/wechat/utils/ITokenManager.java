package com.hsp.wechat.utils;

import java.io.IOException;

public interface ITokenManager {

	String getAccessToken() throws IOException;

	void clearAccessToken();

	void setToken(String token);

}