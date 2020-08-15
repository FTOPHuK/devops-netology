# Домашнее задание к занятию "4.1. Командная оболочка Bash: Практические навыки"

1.  с=a+b (тут будет строка); d=1+2 (аналогичн будет строка, т к нет скобок); e=3 (произведет сложение)

2.  test modif
```
#!/usr/bin/env bash
while ((1==1))
do
curl https://localhost:4757
if ((? != 0))
then
date  curl.log
else
break
fi
done
```

3. 
```
#!/usr/bin/env bash
ip1=192.168.0.1:80
ip2=173.194.222.113:80
ip3=87.250.250.242:80
dt=$(date +"%m-%d-%Y %H-%M")

for ((i=1 ; i<=5 ; i++)) do
curl -m 3 $ip1
if (($? != 0))
then
echo $dt $ip1  "недоступен " >> file.log
fi
curl -m 3 $ip2
if (($? != 0))
then
eco $dt  $ip2  "недоступен " date >> file.log
fi
curl -m 3 $ip3
if (($? != 0))
then
echo $dt  $ip3  "недоступен " date >> file.log
fi
done
```

4. 
```
#!/usr/bin/env bash
ip1=192.168.0.1:80
ip2=173.194.222.113:80
ip3=87.250.250.242:80
dt=$(date +"%m-%d-%Y %H-%M")

while ((1==1))
do
curl -m 3 $ip1
if (($? != 0))
then
echo $dt $ip1  "недоступен " >> error.log
break
fi
curl -m 3 $ip2
if (($? != 0))
then
echo $dt  $ip2  "недоступен " >>  error.log
break
fi
curl -m 3 $ip3
if (($? != 0))
then
echo $dt  $ip3  "недоступен " >> error.log
break
fi
done
```

p.s c $? разобрался, нашел в предыдущих лекциях :)
