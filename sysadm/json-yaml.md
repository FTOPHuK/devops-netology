# Домашнее задание к занятию "4.3. Языки разметки JSON и YAML"

1. 
```
{ "info": "Sample JSON output from our service\t",
    "elements": [
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
service = ['google.com', 'mail.google.com', 'drive.google.com', 'yandex.ru']
with open('D:\\j.json', 'w') as j:
      for result in service:
            if service.index(result) == 0:
                  j.write('{\n\t\"' + result + '\": \"' + socket.gethostbyname(result) + '\",\n')
            elif result == service[-1]:
                  j.write('\t\"' + result + '\": \"' + socket.gethostbyname(result) + '\"\n}')
            else:
                  j.write('\t\"' + result + '\": \"' + socket.gethostbyname(result) + '\",\n')

with open('D:\\y.yaml', 'w') as y:
      y.write('---\n')
      for result in service:
            y.write('- ' + result + ': \'' + socket.gethostbyname(result) + '\'\n')
      y.write('...')
```

Через json.dump() и yaml.dump():
```
import json
import yaml
import socket

service = ['google.com', 'mail.google.com', 'drive.google.com', 'yandex.ru']
service_json = {}
service_yaml = []
with open('D:\\j2.json', 'w') as j:
      for result in service:
           service_json[result] = socket.gethostbyname(result)
      j.write(json.dumps(service_json))

with open('D:\\y2.yaml', 'w') as y:
      for result in service:
           temp = {result: str(socket.gethostbyname(result))}
           service_yaml.append(temp)
      y.write(yaml.dump(service_yaml, explicit_start=True, explicit_end=True))
	  

```