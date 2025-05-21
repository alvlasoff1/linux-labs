## Lab 1

1. Создаем пользователей:

```
useradd -mU test1
useradd -mU test2
useradd -mU test3
useradd -mU test4
```

2. Для получения полномочий root выполняем `visudo` и вписываем:

```
test1   ALL=(ALL:ALL) NOPASSWD: ALL
test2   ALL=(ALL:ALL) NOPASSWD: ALL
```

3. Создаем файлы в домашних директориях:

```
touch /home/test3/file.txt
touch /home/test4/file.txt 
```

4. Для пользователя test3 разрешаем выполнение только tcpdump снова через `visudo`:

```
test3   ALL=(ALL:ALL) /usr/bin/tcpdump
```

5. Создаем группы пользователей:

```
groupadd group1
groupadd group2
```

6. Добавляем пользователей в группы:

```
usermod -G group1 test2
usermod -G group1 test3
usermod -G group2 test1
usermod -G group2 test4
```

7. Для группы group1 разрешаем получение root прав через `visudo`:
```
%group1   ALL=(ALL:ALL) ALL
```

8. Под пользователем test2 создаем файл и редактируем права на доступ:

```
su test2
touch file.txt
chown test2:group1 file.txt
chmod 740 file.txt
```

10. Удаляем пользователей и группы:

```
groupdel group1
groupdel group2
userdel test1
userdel test2
userdel test3
userdel test4
```