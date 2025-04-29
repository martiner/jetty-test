# Reproducer for issue "Unable to compile class for JSP"

## Works with Jetty 12.0.2

Run the testcase with Jetty 12.0.2 (default in `pom.xml`) via:
```bash
./mvnw clean verify
```

## Fails with Jetty > 12.0.2

Run the testcase with Jetty 12.0.3 (or newer) via:
```bash
./mvnw -Djetty.version=12.0.19 clean verify
```

```
org.apache.jasper.JasperException: Unable to compile class for JSP
	at org.apache.jasper.JspCompilationContext.compile(JspCompilationContext.java:619) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:396) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:377) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:325) ~[jetty-runner.jar:12.0.19]
	at org.eclipse.jetty.ee10.jsp.JettyJspServlet.service(JettyJspServlet.java:101) ~[jetty-runner.jar:12.0.19]
	at jakarta.servlet.http.HttpServlet.service(HttpServlet.java:614) ~[jetty-runner.jar:12.0.19]
	at org.eclipse.jetty.ee10.servlet.ServletHolder$NotAsync.service(ServletHolder.java:1370) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.ServletHolder.handle(ServletHolder.java:736) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.ServletHandler$ChainEnd.doFilter(ServletHandler.java:1622) ~[na:na]
	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100) ~[spring-web-6.2.6.jar:6.2.6]
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116) ~[spring-web-6.2.6.jar:6.2.6]
	at org.eclipse.jetty.ee10.servlet.FilterHolder.doFilter(FilterHolder.java:205) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.ServletHandler$Chain.doFilter(ServletHandler.java:1594) ~[na:na]
	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93) ~[spring-web-6.2.6.jar:6.2.6]
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116) ~[spring-web-6.2.6.jar:6.2.6]
	at org.eclipse.jetty.ee10.servlet.FilterHolder.doFilter(FilterHolder.java:205) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.ServletHandler$Chain.doFilter(ServletHandler.java:1594) ~[na:na]
	at org.springframework.boot.web.servlet.support.ErrorPageFilter.doFilter(ErrorPageFilter.java:124) ~[spring-boot-3.4.5.jar:3.4.5]
	at org.springframework.boot.web.servlet.support.ErrorPageFilter$1.doFilterInternal(ErrorPageFilter.java:99) ~[spring-boot-3.4.5.jar:3.4.5]
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116) ~[spring-web-6.2.6.jar:6.2.6]
	at org.springframework.boot.web.servlet.support.ErrorPageFilter.doFilter(ErrorPageFilter.java:117) ~[spring-boot-3.4.5.jar:3.4.5]
	at org.eclipse.jetty.ee10.servlet.FilterHolder.doFilter(FilterHolder.java:205) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.ServletHandler$Chain.doFilter(ServletHandler.java:1594) ~[na:na]
	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201) ~[spring-web-6.2.6.jar:6.2.6]
	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:116) ~[spring-web-6.2.6.jar:6.2.6]
	at org.eclipse.jetty.ee10.servlet.FilterHolder.doFilter(FilterHolder.java:205) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.ServletHandler$Chain.doFilter(ServletHandler.java:1594) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.ServletHandler$MappedServlet.handle(ServletHandler.java:1555) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.ServletChannel.dispatch(ServletChannel.java:819) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.ServletChannel.handle(ServletChannel.java:436) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.ServletHandler.handle(ServletHandler.java:470) ~[na:na]
	at org.eclipse.jetty.security.SecurityHandler.handle(SecurityHandler.java:575) ~[na:na]
	at org.eclipse.jetty.ee10.servlet.SessionHandler.handle(SessionHandler.java:717) ~[na:na]
	at org.eclipse.jetty.server.handler.ContextHandler.handle(ContextHandler.java:1064) ~[na:na]
	at org.eclipse.jetty.server.handler.ContextHandlerCollection.handle(ContextHandlerCollection.java:151) ~[na:na]
	at org.eclipse.jetty.server.Handler$Sequence.handle(Handler.java:805) ~[na:na]
	at org.eclipse.jetty.server.Server.handle(Server.java:182) ~[na:na]
	at org.eclipse.jetty.server.internal.HttpChannelState$HandlerInvoker.run(HttpChannelState.java:662) ~[na:na]
	at org.eclipse.jetty.server.internal.HttpConnection.onFillable(HttpConnection.java:416) ~[na:na]
	at org.eclipse.jetty.io.AbstractConnection$ReadCallback.succeeded(AbstractConnection.java:322) ~[na:na]
	at org.eclipse.jetty.io.FillInterest.fillable(FillInterest.java:99) ~[na:na]
	at org.eclipse.jetty.io.SelectableChannelEndPoint$1.run(SelectableChannelEndPoint.java:53) ~[na:na]
	at org.eclipse.jetty.util.thread.strategy.AdaptiveExecutionStrategy.runTask(AdaptiveExecutionStrategy.java:480) ~[na:na]
	at org.eclipse.jetty.util.thread.strategy.AdaptiveExecutionStrategy.consumeTask(AdaptiveExecutionStrategy.java:443) ~[na:na]
	at org.eclipse.jetty.util.thread.strategy.AdaptiveExecutionStrategy.tryProduce(AdaptiveExecutionStrategy.java:293) ~[na:na]
	at org.eclipse.jetty.util.thread.strategy.AdaptiveExecutionStrategy.produce(AdaptiveExecutionStrategy.java:195) ~[na:na]
	at org.eclipse.jetty.util.thread.QueuedThreadPool.runJob(QueuedThreadPool.java:979) ~[na:na]
	at org.eclipse.jetty.util.thread.QueuedThreadPool$Runner.doRunJob(QueuedThreadPool.java:1209) ~[na:na]
	at org.eclipse.jetty.util.thread.QueuedThreadPool$Runner.run(QueuedThreadPool.java:1164) ~[na:na]
	at java.base/java.lang.Thread.run(Thread.java:1583) ~[na:na]
Caused by: java.lang.NullPointerException: Cannot invoke "org.apache.jasper.compiler.TldCache.getTldResourcePath(String)" because the return value of "org.apache.jasper.Options.getTldCache()" is null
	at org.apache.jasper.JspCompilationContext.getTldResourcePath(JspCompilationContext.java:569) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.compiler.Parser.parseTaglibDirective(Parser.java:436) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.compiler.Parser.parseDirective(Parser.java:495) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.compiler.Parser.parseElements(Parser.java:1452) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.compiler.Parser.parse(Parser.java:138) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.compiler.ParserController.doParse(ParserController.java:264) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.compiler.ParserController.parse(ParserController.java:109) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.compiler.Compiler.generateJava(Compiler.java:211) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:396) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:372) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.compiler.Compiler.compile(Compiler.java:356) ~[jetty-runner.jar:12.0.19]
	at org.apache.jasper.JspCompilationContext.compile(JspCompilationContext.java:603) ~[jetty-runner.jar:12.0.19]
	... 49 common frames omitted
```
