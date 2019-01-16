package cn.yiyituan.util;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

/**
 * 自定义过滤器，继承自Hibernate核心过滤器
 * @author wan
 */
public class MyStrutsFilter extends StrutsPrepareAndExecuteFilter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)req;
		String url = request.getRequestURI();
//		System.out.println(url);
		//如果来自ueditor的请求就不调用struts2本身的过滤器
		if( url.contains("/ueditor/jsp")) {
			chain.doFilter(req, resp);
		} else {
			super.doFilter(req, resp, chain);
		}
		
	}

	
	
}
