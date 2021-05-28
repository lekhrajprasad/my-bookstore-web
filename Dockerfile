FROM lekhrajprasad/myinfra:v2
WORKDIR /opt/app
EXPOSE 5000
COPY . .
RUN mvn clean package \
    && cp ./target/*.war /opt/apache-tomcat-${tomcat_version}/webapps/myapp.war
CMD ["/opt/apache-tomcat-9.0.46/bin/catalina.sh","run"]
