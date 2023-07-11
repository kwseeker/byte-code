package top.kwseeker.bytecode.monitor.httpclient;

import net.bytebuddy.implementation.bind.annotation.AllArguments;
import net.bytebuddy.implementation.bind.annotation.SuperCall;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.RequestLine;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import top.kwseeker.bytecode.monitor.Trace;
import top.kwseeker.bytecode.monitor.bean.User;
import top.kwseeker.bytecode.monitor.context.ApplicationContextHolder;
import top.kwseeker.bytecode.monitor.context.UserContext;

import java.util.concurrent.Callable;

public class HttpClientInterceptor {

    public static CloseableHttpResponse intercept(@SuperCall Callable<CloseableHttpResponse> client,
                                                  @AllArguments Object[] args) throws Exception {
        UserContext userContext = ApplicationContextHolder.getBean(UserContext.class);
        assert userContext != null;
        User user = userContext.getUser();
        Trace trace = new Trace();
        long start = System.currentTimeMillis();
        try {
            CloseableHttpResponse response = client.call();

            trace.setUrl(extractRequestUrl(args));
            trace.setCost(System.currentTimeMillis() - start);
            trace.setStatusCode(response.getStatusLine().getStatusCode());
            System.out.println("trace is " + trace + ", user is " + user.toString());
            return response;
        } catch (Exception e) {
            trace.setCost(System.currentTimeMillis() - start);
            trace.setE(e);
            trace.setStatusCode(-1);
            System.out.println("exception trace is " + trace + ", user is " + user.toString());
            throw e;
        }
    }

    private static String extractRequestUrl(Object[] args) {
        if (args[0] instanceof HttpHost) {
            HttpHost host = (HttpHost) args[0];
            HttpRequest request = (HttpRequest) args[1];
            return getRequestUrl(host, request);
        } else if (args[0] instanceof HttpUriRequest) {
            HttpUriRequest request = (HttpUriRequest) args[0];
            if (request.getURI() != null) {
                return request.getMethod() + " " + request.getURI().toString();
            } else {
                return "";
            }
        } else {
            return "";
        }
    }

    private static String getRequestUrl(HttpHost host, HttpRequest request) {
        StringBuilder builder = new StringBuilder(1024);
        if (request != null && request.getRequestLine() != null && host != null) {
            RequestLine requestLine = request.getRequestLine();
            builder.append(requestLine.getMethod()).append(" ").append(host.toURI())
                    .append(requestLine.getUri());
        }
        return builder.toString();
    }
}
