# Домашнее задание к занятию "3.3. Операционные системы"

1. Метод  chdir("/tmp") 

2. /usr/share/misc/magic.mgc

3. Посмотреть через lsof  порт и номер файлового дескриптора и восстановить файл /proc/номер_порта/fd/номер_дескриптора > путь к файлу. 
	
4. Нет, процесс переходит в статус зомби освобождая при этому все свои ресурсы 

5. Установил, запусккаю, но она ничего не показывает, оставил ссклыку на скрин(execsnoop-bpfcc тоже ничего не показывает).

6. Cистемный вызов uname. Часть информации из структуры utsname может быть получена также через sysctl и через /proc/sys/kernel/{ostype, hostname, osrelease, version, domainname}.

7. ; - последовательное выполнение команд (выполняется не зависимо от статуса выполнения предыдущей команды), && - логическое И (выполнит следующую часть только если первая завершится с нулевым статусом (успешно)). set -e использовать нет смысла с &&. 

8. Не совсем понял вопрос, состоит из опций -euxo pipefail. Дать ответ почему его хорошо было бы использовать в скриптах пока не могу.

9. S    interruptible sleep (спит/ожидает). Ss лидер сессия, Ssl лидер многопоточной сессии.

10. Можно
    0.000000 DMI: innotek GmbH VirtualBox/VirtualBox, BIOS VirtualBox 12/01/2006
    0.000000 Hypervisor detected: KVM

11. fs.nr_open = 1048576, лимит на количество открытых дескриптеров. Вероятно зависит от лимита максимального количества одноваременно откртых файлов.

12. Что такое nsenter, команды такой нет. Через ps нашел root     14829  0.0  0.0   7468   820 pts/0    S+   14:29   0:00 sleep 1h PID

13. :(){ :|:& };: оперирует определением функции с именем :, которая вызывает сама себя дважды: один раз на переднем плане и один раз в фоне. Она продолжает своё выполнение снова и снова, пока система не зависнет.

14. По умолчанию, команды на удаленном компьютере с помощью ssh, TTY не выделяется для удаленного сеанса. 

15. screen -S screen name или  reptyr PID of running process to attach.