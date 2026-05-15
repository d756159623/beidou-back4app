FROM ghcr.io/beidoums/beidou-server-all:v1.10

EXPOSE 8686

CMD ["sh","-c","java -jar /opt/server/BeiDou.jar --server.port=8686 --server.address=0.0.0.0 --mybatis-flex.datasource.mysql.url=jdbc:mysql://yamanote.proxy.rlwy.net:22761/railway?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=Asia/Shanghai --mybatis-flex.datasource.mysql.username=root --mybatis-flex.datasource.mysql.password=AGXoXbrQxtWDHVVEzHftgHNkaLlZCZvN --gms.service.wan-host=0.0.0.0 --gms.service.lan-host=0.0.0.0 --gms.service.localhost=127.0.0.1"]
