[Unit]
Description=Apache Tomcat Server
After=syslog.target network.target

[Service]
Type=forking
User=tomcat
Group=tomcat

Environment=CATALINA_PID=/opt/apache-tomcat-8.5.42/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/apache-tomcat-8.5.42
Environment=CATALINA_BASE=/opt/apache-tomcat-8.5.84

ExecStart=/opt/apache-tomcat-8.5.42/bin/startup.sh
ExecStop=/opt/apache-tomcat-8.5.42/bin/shutdown.sh

RestartSec=10
Restart=always
[Install]
WantedBy=multi-user.target
