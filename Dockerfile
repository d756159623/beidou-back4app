FROM ghcr.io/beidoums/beidou-server-all:v1.10

EXPOSE 8686

CMD ["sh","-c","java -jar app.jar --mybatis-flex.datasource.mysql.url=jdbc:mysql://yamanote.proxy.rlwy.net:22761/railway?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=Asia/Shanghai --mybatis-flex.datasource.mysql.username=root --mybatis-flex.datasource.mysql.password=AGXoXbrQxtWDHVVEzHftgHNkaLlZCZvN --gms.service.wan-host=127.0.0.1 --gms.service.lan-host=127.0.0.1 --gms.service.localhost=127.0.0.1"]
