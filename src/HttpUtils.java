package com.bee.common;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;


public class HttpUtils {
	
	public static void main(String[] args) {
		String url = "http://baidud.com";
		try {
			System.out.println(getResponseStatusCode(url));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.exit(0);
	}
	
	private static Logger log = Logger.getLogger(HttpUtils.class);
	private static final String URL_PARAM_CONNECT_FLAG = "&";
	public static InputStream postAndGetStream(String url, Map parms)
			throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.setBody(parms);
			client.post(url);
			return client.getInputStream();

		} catch (Exception e) {
			log.error(url + NetUtils.urlMapToQueryStr(parms));
			throw e;
		}

	}

	public static InputStream postAndGetStream(String url, Map parms,
			int timeout) throws Exception {
		HttpClient client = new HttpClient(timeout, timeout);
		try {

			client.setBody(parms);
			client.post(url);
			return client.getInputStream();

		} catch (Exception e) {
			log.error(url + NetUtils.urlMapToQueryStr(parms));
			throw e;
		} finally {
			client.shutdown();
		}

	}

	public static InputStream postAndGetStream(String url, byte[] postBody,
			String requestContentType) throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.setRequestContentType(requestContentType);
			client.setBody(postBody);
			client.post(url);
			return client.getInputStream();

		} catch (Exception e) {
			log.error(url + " RequestContentType=" + requestContentType);
			throw e;
		}

	}

	public static String post(String url, Map parms, String requestCharset,
			String ReturnDefaultCharset) throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.setRequestContentCharset(requestCharset);
			client.setBody(parms);
			client.post(url);
			return client.getString(ReturnDefaultCharset);

		} catch (Exception e) {
			log.error(url + NetUtils.urlMapToQueryStr(parms));
			throw e;
		}

	}

	public static String post(String url, Map parms, String requestCharset,
			String ReturnDefaultCharset, int timeout) throws Exception {
		HttpClient client = new HttpClient(timeout, timeout);
		try {
			client.setBody(parms);
			client.post(url);
			return client.getString(ReturnDefaultCharset);

		} catch (Exception e) {
			log.error(url + NetUtils.urlMapToQueryStr(parms));
			throw e;
		} finally {
			client.shutdown();
		}

	}

	/**
	 * 
	 * @param url
	 *            请求的url地址
	 * @param parms
	 *            <p>
	 *            <blockquote>
	 * 
	 *            <pre>
	 * 模拟的窗体的参数,如：
	 * map.put("name",new String[]{"11","22"});
	 * map.put("code","456");
	 * map.put("class",new String("67"));
	 * 设置的值可以为数组或单个值
	 * </pre>
	 * 
	 *            </blockquote>
	 *            </p>
	 * @param requestCharset
	 *            请求参数编码
	 * @param defaultCharset
	 *            如果返回的响应里没有找到字符集信息，就根据此值进行编码
	 * @param isLikeExplorerPost
	 *            是否为模仿浏览器的提交方式。如果为模仿浏览器的提交方式，服务器端必须转码，并且支持重定向。
	 * @return
	 */
	public static String post(String url, Map parms, String requestCharset,
			String ReturnDefaultCharset, boolean isLikeExplorerPost)
			throws Exception {

		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.setBody(parms);
			client.post(url);
			return client.getString(ReturnDefaultCharset);

		} catch (Exception e) {
			log.error(url + NetUtils.urlMapToQueryStr(parms));
			throw e;
		}

	}

	public static String post(String url, Map parms, String requestCharset,
			String ReturnDefaultCharset, boolean isLikeExplorerPost, int timeout)
			throws Exception {
		HttpClient client = new HttpClient(timeout, timeout);
		try {
			// OneThreadHttpClient client = new
			// OneThreadHttpClient(timeout,timeout);
			client.setBody(parms);
			client.post(url);
			return client.getString(ReturnDefaultCharset);

		} catch (Exception e) {
			log.error(url + NetUtils.urlMapToQueryStr(parms));
			throw e;
		} finally {
			client.shutdown();
		}

	}
	
	public static String post(String url, Map parms, String requestCharset,String ReturnDefaultCharset,Map<String, String> headers,Map<String, String> cookies, int timeout)
			throws Exception {
		HttpClient client = new HttpClient(timeout, timeout);
		try {
			client.setRequestHeaders(headers);
			client.addCookies(cookies);
			client.setBody(parms);
			client.post(url);
			return client.getString(ReturnDefaultCharset);
		} catch (Exception e) {
			log.error(url + NetUtils.urlMapToQueryStr(parms));
			throw e;
		} finally {
			client.shutdown();
		}

	}

	public static String post(String url, byte[] postBody,
			String requestContentType, String ReturnDefaultCharset,
			Map<String, String> headers)
			throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.setRequestHeaders(headers);
			client.setRequestContentType(requestContentType);
			client.setBody(postBody);
			client.post(url);
			return client.getString(ReturnDefaultCharset);

		} catch (Exception e) {
			log.error(e + "  url: " + url);
			throw e;
		}

	}
	
	/*public static String post(String url, byte[] postBody,
			String requestContentType, String ReturnDefaultCharset,Map<String, String> headers)
			throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.setRequestHeaders(headers);
			client.setRequestContentType(requestContentType);
			client.setBody(postBody);
			client.post(url);
			return client.getString(ReturnDefaultCharset);

		} catch (Exception e) {
			log.error(url + " ReturnDefaultCharset="
					+ ReturnDefaultCharset);
			throw e;
		}

	}*/
	
	/**
	 * 抛异常
	 * @param url
	 * @param postBody
	 * @param requestContentType
	 * @param ReturnDefaultCharset
	 * @return
	 * @throws Exception
	 */
	public static String post(String url, byte[] postBody,
			String requestContentType, String ReturnDefaultCharset)
			throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			
			client.setRequestContentType(requestContentType);
			client.setBody(postBody);
			client.post(url);
			return client.getString(ReturnDefaultCharset);

		} catch (Exception e) {
			log.error(url + " ReturnDefaultCharset=" + ReturnDefaultCharset);
			throw e;
		}

	}
	
	/**
	 * 不抛异常
	 * @param url
	 * @param postBody
	 * @param requestContentType
	 * @param ReturnDefaultCharset
	 * @return
	 */
	public static String postNoException(String url, byte[] postBody,
			String requestContentType, String ReturnDefaultCharset) {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			
			/*// 定制cookie策略
	        CookieSpecFactory csf = new CookieSpecFactory(){
	            public CookieSpec newInstance(HttpParams params){
	                return new BrowserCompatSpec(){
	                    public void validate(Cookie cookie, CookieOrigin origin)
	                    throws MalformedCookieException{
	                        //Oh, I am easy
	                    }
	                };
	            }
	        };
	        client.getClient().getCookieSpecs().register("easy", csf);
	        client.getClient().getParams().setParameter(ClientPNames.COOKIE_POLICY, "easy");
			*/
			client.setRequestContentType(requestContentType);
			client.setBody(postBody);
			client.post(url);
			return client.getString(ReturnDefaultCharset);
			
		} catch (Exception e) {
			log.error(url + ", ReturnDefaultCharset=" + ReturnDefaultCharset);
			return null;
		}
	}

	public static String post(String url, byte[] postBody,
			String requestContentType, String ReturnDefaultCharset, int timeout)
			throws Exception {
		HttpClient client = new HttpClient(timeout, timeout);
		try {
			// OneThreadHttpClient client = new
			// OneThreadHttpClient(timeout,timeout);
			client.setRequestContentType(requestContentType);
			client.setBody(postBody);
			client.post(url);
			return client.getString(ReturnDefaultCharset);

		} catch (Exception e) {
			log.error(url + " RequestContentType=" + requestContentType,
					e);
			throw e;
		} finally {
			client.shutdown();
		}

	}

	public static String get(String url, String defaultCharset)
			throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.get(url);
			String response = client.getString(defaultCharset);
			return response;

		} catch (Exception e) {
			log.error(url + ":defaultCharset=" + defaultCharset, e);
			throw e;
		}

	}

	public static String get(String url, String defaultCharset,
			Map<String, String> headers) throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.setRequestHeaders(headers);
			client.get(url);
			return client.getString(defaultCharset);

		} catch (Exception e) {
			log.error(url + ":defaultCharset=" + defaultCharset, e);
			throw e;
		}

	}

	public static byte[] getBytes(String url) throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.get(url);
			return client.getBytes();

		} catch (Exception e) {
			log.error("" + url + "", e);
			throw e;
		}

	}

	public static byte[] getBytes(String url, int timeout) throws Exception {
		HttpClient client = new HttpClient(timeout, timeout);
		try {
			// OneThreadHttpClient client = new
			// OneThreadHttpClient(timeout,timeout);
			client.get(url);
			return client.getBytes();

		} catch (Exception e) {
			log.error("" + url + "", e);
			throw e;
		} finally {
			client.shutdown();
		}

	}

	public static InputStream get(String url) throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.get(url);
			return client.getInputStream();

		} catch (Exception e) {
			throw e;
		}

	}

	public static int getResponseStatusCode(String url) throws Exception {
		try {
			MultiThreadHttpClient client = new MultiThreadHttpClient();
			client.get(url);
			client.consumeContent();
			return client.getReponseStatusCode();

		} catch (Exception e) {
			throw e;
		}

	}

	public static InputStream get(String url, int timeout) throws Exception {
		HttpClient client = new HttpClient(timeout, timeout);
		try {
			// OneThreadHttpClient client = new
			// OneThreadHttpClient(timeout,timeout);
			client.get(url);
			return client.getInputStream();

		} catch (Exception e) {
			log.error(url + ":", e);
			throw e;
		} finally {
			client.shutdown();
		}

	}
	/**
	 * ���URL
	 * 
	 * @param map
	 *            Map
	 * @return String
	 */
	private static String getUrl(Map map) {
		if (null == map || map.keySet().size() == 0) {
			return ("");
		}
		StringBuffer url = new StringBuffer();
		Set keys = map.keySet();
		for (Iterator i = keys.iterator(); i.hasNext();) {
			String key = String.valueOf(i.next());
			if (map.containsKey(key)) {
				Object val = map.get(key);
				String str = val != null ? val.toString() : "";
				try {
					str = URLEncoder.encode(str, "GBK");
				} catch (UnsupportedEncodingException e) {
					log.error(e.getMessage(),e);
				}
				url.append(key).append("=").append(str).append(
						URL_PARAM_CONNECT_FLAG);
			}
		}
		String strURL = "";
		strURL = url.toString();
		if (URL_PARAM_CONNECT_FLAG.equals(""
				+ strURL.charAt(strURL.length() - 1))) {
			strURL = strURL.substring(0, strURL.length() - 1);
		}
		return (strURL);
	}
	
	/**
	 * POST METHOD
	 * 
	 * @param strUrl
	 *            String
	 * @param content
	 *            Map
	 * @throws IOException
	 * @return List
	 */
	public static List URLPost(String strUrl, Map map) throws IOException {

		String content = "";
		content = getUrl(map);
		 
		String totalURL = null;
		if (strUrl.indexOf("?") == -1) {
			totalURL = strUrl + "?" + content;
		} else {
			totalURL = strUrl + "&" + content;
		}
		URL url = new URL(strUrl);
		
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setDoInput(true);
		con.setDoOutput(true);
		con.setAllowUserInteraction(false);
		con.setUseCaches(false);
		con.setRequestMethod("POST");
		con.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=GBK");
		
		BufferedWriter bout = new BufferedWriter(new OutputStreamWriter(con.getOutputStream()));
		bout.write(content);
		bout.flush();
		bout.close();
		BufferedReader bin = new BufferedReader(new InputStreamReader(con
				.getInputStream()));
		List result = new ArrayList();
		while (true) {
			String line = bin.readLine();
			if (line == null) {
				break;
			} else {
				result.add(line);
			}
		}
		return (result);
	}
	
	/**
	 * POST METHOD
	 * 
	 * @param strUrl
	 *            String
	 * @param content
	 *            String
	 * @throws IOException
	 * @return String
	 * 微信返回json
	 */
	public static String jsonPost(String strUrl, String json) throws IOException {
		 URL url = new URL(strUrl);
         HttpURLConnection http =   (HttpURLConnection) url.openConnection();   

         http.setRequestMethod("POST");       
         http.setRequestProperty("Content-Type","application/x-www-form-urlencoded");   
         http.setDoOutput(true);       
         http.setDoInput(true);
         System.setProperty("sun.net.client.defaultConnectTimeout", "30000");//连接超时30秒
         System.setProperty("sun.net.client.defaultReadTimeout", "30000"); //读取超时30秒
         http.connect();
         OutputStream os= http.getOutputStream();   
         os.write(json.getBytes("UTF-8"));//传入参数   
         os.flush();
         os.close();
         InputStream is =http.getInputStream();
         int size =is.available();
         byte[] jsonBytes =new byte[size];
         is.read(jsonBytes);
         String message=new String(jsonBytes,"UTF-8");
         return message;
	}

	
	
	/**
	 * 易宝请求支付数据
	 * @param map
	 * @return
	 */
	public static String getPayData(Map map) {
		return getUrl(map);
	}
	

	public static String get(String url, String defaultCharset, int timeout)
			throws Exception {
		HttpClient client = new HttpClient(timeout, timeout);
		try {
			// OneThreadHttpClient client = new
			// OneThreadHttpClient(timeout,timeout);
			client.get(url);
			return client.getString(defaultCharset);

		} catch (Exception e) {
			log.error(url + "  defaultCharset=" + defaultCharset);
			throw e;
		} finally {
			client.shutdown();
		}

	}

	public static String get(String url,String charset,String p){
		return get(url,charset,p,null);
	}
	
	public static String getMethod(String url,String charset,Map<String,String> header){
		URL u = null;
		HttpURLConnection conn = null;
		try {
			u = new URL(url);
			conn = (HttpURLConnection) u.openConnection();
			conn.setDoOutput(true);
			conn.setDoInput(true);
			conn.setReadTimeout(1000 * 10);
			conn.setRequestProperty("Content-Type","text/html;charset=UTF-8");
			conn.setRequestMethod("GET");
			
			if(header != null)for(String k:header.keySet())conn.addRequestProperty(k,header.get(k));
			
			conn.connect();
//			java.io.OutputStream os = conn.getOutputStream();
//			os.write(p.getBytes("UTF-8"));
//			os.flush();
//			os.close();
			String responseStr = getString(conn.getInputStream(),charset);
			return responseStr;
		} catch (Exception e) {
			log.error(e.getMessage()+" url:"+url,e);
		}finally{
			if(conn != null){conn.disconnect();conn = null;}
			if(u != null)u = null;
		}
		return null;
	}
	
	public static String get(String url,String charset,String params,Map<String,String> header){
		URL u = null;
		HttpURLConnection conn = null;
		try {
			u = new URL(url);
			conn = (HttpURLConnection) u.openConnection();
			conn.setDoOutput(true);
			conn.setDoInput(true);
			conn.setReadTimeout(1000 * 10);
			conn.setRequestProperty("Content-Type","text/html;charset=UTF-8");
			conn.setRequestMethod("POST");
			
			if(header != null)for(String k:header.keySet())conn.addRequestProperty(k,header.get(k));
			
			conn.connect();
			java.io.OutputStream os = conn.getOutputStream();
			os.write(params.getBytes("UTF-8"));
			os.flush();
			os.close();
			String responseStr = getString(conn.getInputStream(),charset);
			return responseStr;
		} catch (Exception e) {
			log.error(e.getMessage()+" url:"+url,e);
		}finally{
			if(conn != null){conn.disconnect();conn = null;}
			if(u != null)u = null;
		}
		return null;
	}
	
	public static String getString(InputStream is,String charset) throws Exception {
		String content = null;
		try{
			if(charset == null || "".equals(charset))charset = "utf-8";
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			byte[] b = new byte[1024];
			int len = 0;
			while((len=is.read(b)) > 0){
				baos.write(b,0,len);
			}
			b = null;
			baos.flush();
			content =  baos.toString(charset);
			baos.close();
			baos = null;
		}catch(Exception e){
			log.error(e.getMessage(),e);
		}finally{
			is.close();
		}
		return content;
	}
	

	/**
	 * post header
	 * @param url
	 * @param requestContentType
	 * @param ReturnDefaultCharset
	 * @param headers
	 * @return
	 * @throws Exception
	 */
	public static String post(String url,String requestContentType, String ReturnDefaultCharset,Map<String, String> headers)
			throws Exception {
		try {
			MultiThreadHttpClientByHttps client = new MultiThreadHttpClientByHttps();
			client.setRequestContentType(requestContentType);
			client.setRequestHeaders(headers);
			client.post(url);
			return client.getString(ReturnDefaultCharset);

		} catch (Exception e) {
			log.error(url + " ReturnDefaultCharset="
					+ ReturnDefaultCharset);
			throw e;
		}
	}
	
	
	public static String httpsGet(String url, String charset) throws Exception {
		org.apache.http.client.HttpClient httpClient = new SSLClient();
		HttpGet request = new HttpGet(new URI(url));
		request.getParams().setParameter(CoreProtocolPNames.HTTP_CONTENT_CHARSET, "UTF-8");  
		HttpResponse response = httpClient.execute(request);
		
		if (response != null) {
			HttpEntity resEntity = response.getEntity();
			if (resEntity != null) {
				return EntityUtils.toString(resEntity, charset);
			}
		}
		return "";
	}
	

	public static String httpsPost(String url, byte[] postBody,
			String requestContentType, String ReturnDefaultCharset)
			throws Exception {

		org.apache.http.client.HttpClient client = new SSLClient();
		HttpPost httppost = new HttpPost(url);
		
		httppost.setHeader("Content-Type", requestContentType);
		httppost.setEntity(new ByteArrayEntity(postBody));
		
		HttpResponse response = client.execute(httppost);
		
		if (response != null) {
			HttpEntity responseEntity = response.getEntity();
			if (responseEntity == null) {
				return "";
			}
			String s = EntityUtils.toString(responseEntity, ReturnDefaultCharset);

			return s;
		}
		return "";
	}

}
