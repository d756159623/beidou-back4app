FROM ghcr.io/beidoums/beidou-server-all:v1.10

EXPOSE 8080

CMD ["sh","-c","java -jar /opt/server/BeiDou.jar --server.port=8080 --server.address=0.0.0.0 --mybatis-flex.datasource.mysql.url=jdbc:mysql://yamanote.proxy.rlwy.net:22761/railway?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=Asia/Shanghai --mybatis-flex.datasource.mysql.username=root --mybatis-flex.datasource.mysql.password=AGXoXbrQxtWDHVVEzHftgHNkaLlZCZvN"]
