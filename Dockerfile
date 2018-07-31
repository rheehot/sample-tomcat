# Dockerfile

FROM tomcat:8-jre8

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && rm -rf /usr/local/tomcat/webapps/*

EXPOSE 8080

COPY --from=BUILD /data/src/target/*.war /usr/local/tomcat/webapps/ROOT.war
