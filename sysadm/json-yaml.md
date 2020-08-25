# Домашнее задание к занятию "4.3. Языки разметки JSON и YAML"

1. 
```
{ "info": "Sample JSON output from our service\t",
    "elements":[
        { "name": "first",
        "type": "server",
        "ip": 7175
        },
        { "name": "second",
        "type": "proxy",
        "ip": "71.78.22.43"
        }
    ]
}
```
2. 
```
import socket
bash_command = ['google.com', 'mail.google.com', 'drive.google.com', 'yandex.ru']
with open('D:\\j.json', 'w') as j:
      for result in bash_command:
            if bash_command.index(result) == 0:
                  j.write('{\n\t\"' + result + '\": \"' + socket.gethostbyname(result) + '\",\n')
            elif result == bash_command[-1]:
                  j.write('\t\"' + result + '\": \"' + socket.gethostbyname(result) + '\"\n}')
            else:
                  j.write('\t\"' + result + '\": \"' + socket.gethostbyname(result) + '\",\n')

with open('D:\\y.yaml', 'w') as y:
      for result in bash_command:
            y.write('- ' + result + ': ' + socket.gethostbyname(result) + '\n')
```