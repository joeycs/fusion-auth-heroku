FROM fusionauth/fusionauth-app:latest

ENV FUSIONAUTH_APP_HTTP_PORT ${PORT}

ENV DATABASE_URL="jdbc:postgresql://ziggy.db.elephantsql.com:5432/aetvvohc"

ENV POSTGRES_USER="aetvvohc"
ENV POSTGRES_PASSWORD="UPYJWzKNq-N209Hw745knbKYZdYatW4_"
# Prior to version 1.19.0, using DATABASE_USER
ENV DATABASE_USER="aetvvohc"
# >= 1.19.0, using DATABASE_USERNAME
ENV DATABASE_USERNAME="aetvvohc"
ENV DATABASE_PASSWORD="UPYJWzKNq-N209Hw745knbKYZdYatW4_"

ENV ES_JAVA_OPTS="-Xms1024m -Xmx1024m"

# Prior to version 1.19.0, using FUSIONAUTH_MEMORY
ENV FUSIONAUTH_MEMORY="1024M"
# >= 1.19.0, using FUSIONAUTH_APP_MEMORY
ENV FUSIONAUTH_APP_MEMORY="1024M"

CMD /usr/local/fusionauth/fusionauth-app/apache-tomcat/bin/catalina.sh run
