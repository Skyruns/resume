package filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EncodingFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        servletRequest.setCharacterEncoding("utf-8");
        servletResponse.setContentType("text/html;charset=utf-8");

        servletResponse = (HttpServletResponse)servletResponse;
        servletRequest = (HttpServletRequest)servletRequest;

        String path = ((HttpServletRequest)servletRequest).getRequestURI();
        System.out.println("path:"+path);
//        System.out.println(path.contains());
//        if (path.contains("/login.jsp") || path.contains("Login")){
//            filterChain.doFilter(servletRequest, servletResponse);
//        }else {
//            if (((HttpServletRequest) servletRequest).getSession().getAttribute("user") == null){
//                ((HttpServletResponse) servletResponse).sendRedirect(((HttpServletRequest) servletRequest).getContextPath()+"/jlupload/login.jsp");
//            }else{
//                filterChain.doFilter(servletRequest, servletResponse);
//            }
//        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
