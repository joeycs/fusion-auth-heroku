FROM fusionauth/fusionauth-app:latest

ENV FUSIONAUTH_HTTP_PORT=$PORT

ENV ES_JAVA_OPTS="-Xms512m -Xmx512m"

ENV FUSIONAUTH_APP_MEMORY="512M"

EXPOSE $PORT

CMD /usr/local/fusionauth/fusionauth-app/apache-tomcat/bin/catalina.sh run
