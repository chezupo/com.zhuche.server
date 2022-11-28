package com.zhuche.server.util;

import com.alibaba.fastjson.JSON;
import com.wechat.pay.contrib.apache.httpclient.exception.NotFoundException;
import lombok.Value;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

public class HttpUtil {
    public static String getParamsString(Map<String, String> params) throws UnsupportedEncodingException {
        StringBuilder result = new StringBuilder();

        for (Map.Entry<String, String> entry : params.entrySet()) {
            result.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
            result.append("=");
            result.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
            result.append("&");
        }

        String resultString = result.toString();
        return resultString.length() > 0
            ? resultString.substring(0, resultString.length() - 1)
            : resultString;
    }

    /**
     * Get 请求
     * @param url
     * @param params
     * @return
     * @throws IOException
     * @throws NotFoundException
     */
    public static String get(String url, Map<String, String> params) throws IOException, NotFoundException {
        URL urlInstance = new URL(url);
        HttpURLConnection con = (HttpURLConnection) urlInstance.openConnection();
        con.setRequestMethod("GET");
        con.setDoOutput(true);
        DataOutputStream out = new DataOutputStream(con.getOutputStream());
        out.writeBytes(HttpUtil.getParamsString(params));
        out.flush();
        BufferedReader in = new BufferedReader( new InputStreamReader(con.getInputStream()));
        String inputLine;
        StringBuilder content = new StringBuilder();
        while ((inputLine = in.readLine()) != null) {
            content.append(inputLine);
        }
        String data = content.toString();
        con.disconnect();
        out.close();
        int status = con.getResponseCode();
        if (status != 200) {
            throw new NotFoundException("not found");
        }

        return data;
    }

}
