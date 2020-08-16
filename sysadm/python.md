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
