[Unit]
Description=Apache Tomcat Server
After=syslog.target network.target

[Service]
Type=forking
User=tomcat
Group=tomcat

Environment=CATALINA_PID=/opt/apache-tomcat-8.5.84/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/apache-tomcat-8.5.84
Environment=CATALINA_BASE=/opt/apache-tomcat-8.5.84

ExecStart=/opt/apache-tomcat-8.5.84/bin/catalina.sh start
ExecStop=/opt/apache-tomcat-8.5.84/bin/catalina.sh stop

RestartSec=10
Restart=always
[Install]
WantedBy=multi-user.target
