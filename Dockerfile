FROM eclipse-temurin:21-jre

WORKDIR /app

RUN apt-get update && apt-get install -y wget unzip

RUN wget -O beidou.zip https://github.com/BeiDouMS/BeiDou-Server/releases/download/v1.10/beidou-server-release.zip

RUN unzip beidou.zip -d /app

EXPOSE 8686

CMD ["sh","-c","java -jar /app/beidou-server-release/BeiDou.jar --server.port=$PORT --server.address=0.0.0.0 --mybatis-flex.datasource.mysql.url=jdbc:mysql://yamanote.proxy.rlwy.net:22761/railway?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=Asia/Shanghai --mybatis-flex.datasource.mysql.username=root --mybatis-flex.datasource.mysql.password=AGXoXbrQxtWDHVVEzHftgHNkaLlZCZvN"]
