## Lab 4

1. В качестве сервиса будем использовать программу которая раз минуту пишет в файл текущее время

2. В директории /etc/systemd/system создаем файл custom.service:

```
[Unit]
Description=SimpleService
After=default.target

[Service]
ExecStart=/usr/bin/script.sh

[Install]
WantedBy=default.target
```

3. После сохранения файла перезагружаем демон systemd:

```
systemd daemon-reload
```

И запускаем сервис:

```
systemctl start custom.service
```

После чего можно убедиться, что сервис работает корректно:

```
> cat /var/log/time.log 
Wed May 21 20:52:52 MSK 2025
Wed May 21 20:53:52 MSK 2025
Wed May 21 20:54:52 MSK 2025
```
