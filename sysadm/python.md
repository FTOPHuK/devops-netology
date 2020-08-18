# Домашнее задание к занятию "4.2. Использование Python для решения типовых DevOps задач"

1. Изначально в с получим ошибку типов, чтобы получить 12 необходимо привести а к строке c = str(a) + b, чтобы получить 3 необходимо b првиести к числу c = a + int(b) 

2. 
```
#!/usr/bin/env python3

import os

bash_command = ["cd ~/devops-netology/", "git status"]
result_os = os.popen(' && '.join(bash_command)).read()
for result in result_os.split('\n'):
     if result.find('modified') != -1:
        prepare_result = result.replace('\tmodified:   ', '')
        print(prepare_result)
```

3.
```
#!/usr/bin/env python3

import os
import sys

try:
    args = sys.argv[1]
    bash_command = ['cd ' + args, "git status"]
    result_os = os.popen(' && '.join(bash_command)).read()
    for result in result_os.split('\n'):
        if result.find('modified') != -1:
            prepare_result = result.replace('\tmodified:   ', '')
            print(prepare_result)
except IndexError:
    print("[ERROR] при вызове скрипта укажите путь с git")
``` 

4. Конструкция "рубанок", очевидно, что можно было бы обойтись 1 циклом for для "сбора" строк при использовании функции, но до функций не дошел... Поэтому получилось так, но зато работает и условия в дз соблюдены полностью. Первый цикл for собирает  форматированную по условию строку и записывает результат в файл. Второй цикл for делает аналогичную операцию и записывает данные в массив (с новым вызовом ping, чобы была возможность получить другой ip). Цикл while уже сравнивает значения которые были записаны в файл (будем считать их старыми данными) с данными в массиве real_ip(новые данные). Если потыкать N раз скрипт в консоле, иногда удается получить разные ip и соответствующую запись об этом благодаря while. 

```
#!/usr/bin/env python3

import os
import time
bash_command = ['ping -c 1 drive.google.com', 'ping -c 1 mail.google.com', 'ping -c 1 google.com']
result_old = os.popen(' && '.join(bash_command)).read()
f = open('old_ip.txt', 'w')
for result in result_old.split('\n'):
    if result.find('PING') != -1:
          prepare_result = result.replace('PING ', '<')
          prepare_result = prepare_result.replace('56(84) bytes of data.', '')
          prepare_result = prepare_result.replace(' (', '> - <')
          prepare_result = prepare_result.replace(')', '>')
          f.write(prepare_result + '\n')

f.close()
f = open('old_ip.txt').read().split('\n')

#time.sleep(3)

result_new  = os.popen(' && '.join(bash_command)).read()
real_ip = []
for result in result_new.split('\n'):
    if result.find('PING') != -1:
        prepare_result = result.replace('PING ', '<')
        prepare_result = prepare_result.replace('56(84) bytes of data.', '')
        prepare_result = prepare_result.replace(' (', '> - <')
        prepare_result = prepare_result.replace(')', '>')
        print(prepare_result)
        real_ip.append(prepare_result)

count = 0
while (count < len(real_ip)):
        if str(f[count]) != str(real_ip[count]):
            arry_new_name_ip = real_ip[count].split(' ')
            arry_old_name_ip = f[count].split(' ')
            print('[ERROR] '  + arry_old_name_ip[0] + ' IP mismatch: старый ip - ' + arry_old_name_ip[2] + ', новый ip - ' +  arry_new_name_ip[2])
        count += 1

# Сначала не понял условие, поэтому написал это...Проверка доступности сайта по ping
#print('Хотите проверить сервис?')
#check = input('Да/Нет ')
#if check.lower() == 'да' or 'lf' or 'y':
#    enter_service = input('Введите название сервиса: ')
#    check_service = os.popen('ping -c 3 ' + enter_service).read()
#    if check_service.find('64 bytes') != -1:
#       print('Сервис доступен')
#    else:
#       print('НЕДОСТУПЕН')
```
