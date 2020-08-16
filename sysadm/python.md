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

enter_dir = input("Введите директорию: ")
bash_command = ["cd " + enter_dir, "git status"]
result_os = os.popen(' && '.join(bash_command)).read()
for result in result_os.split('\n'):
     if result.find('modified') != -1:
        prepare_result = result.replace('\tmodified:   ', '')
        print(prepare_result)
``` 

4. Собственно вторая часть этого задания "очень странная", 1й цикл у меня проверяет доступность "сайтов" выводит результат в консоль, записывает его в файл, также создает массив real_ip для дальнейшего сравнения. Цикл while у меня сравнивает то, что попало в файл и real_ip, но так как работае скрипта идет последовательно (и это 1 скрипт), ip адреса в файле и массиве всегда будут одинаковые т к идет перезапись файла до проверки файла и массива... 
```
#!/usr/bin/env python3

import os
real_ip = []
bash_command = ['ping -c 1 drive.google.com', 'ping -c 1 mail.google.com', 'ping -c 1 google.com']
result_os = os.popen(' && '.join(bash_command)).read()
f = open('old_ip.txt', 'w')
for result in result_os.split('\n'):
    if result.find('PING') != -1:
          prepare_result = result.replace('PING ', '<')
          prepare_result = prepare_result.replace('56(84) bytes of data.', '')
          prepare_result = prepare_result.replace(' (', '> - <')
          prepare_result = prepare_result.replace(')', '>')
          print(prepare_result)

#          real_ip.append(prepare_result)
          f.write(prepare_result + '\n')

f.close()
f = open('old_ip.txt').read().split('\n')

#print(f)
#print(real_ip)
count = 0
while (count < len(real_ip)):
    if f[count] == real_ip[count]:
        print('[ERROR] ' +  real_ip[count] + 'IP mismatch')
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
