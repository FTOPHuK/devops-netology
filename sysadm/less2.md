# Домашнее задание к занятию "3.2. Работа в терминале, лекция 2" 

1. shell builtin, скорсть работы данного типа программ выше, работают внутри шел
, не приходится вызывать отдельную программу.

2. grep <some_string> <some_file> -c

3. systemd(1)

4. ls 2>/dev/pts/1

5. ничего не понял, возможно так echo "test" 0>&1>/tmp/log

6. видимо смогу, если это будет сессия одного пользователя (если я правильно понял) 

7. После выполнения bash 5>&1 stdout будет работать на 5м дескрипторе, echo netology > /proc/$$/fd/5 выведит в консоль текущей сесси netology

8. ls  >/dev/pts/1 2>&5 | 5>/dev/null в таком варианте stderr не передвется через pipe, не знаю как решить.

9. Командой env

10. **/proc/[pid]/cmdline** This holds the complete command line for the process, unless the process is a zombie. In the latter case, there is nothing in this file: that is, a read on this file will return 0 characters. The command-line arguments appear in this file as a set of null-separated strings, with a further null byte (aq\0aq) after the last string. 

**/proc/<PID>/exe** Under Linux 2.2 and later, this file is a symbolic link containing the actual pathname of the executed command.  This symbolic link can be dereferenced normally; attempting to open it will open the executable.  You can even type /proc/[pid]/exe to run another copy of the same executable that is being run by process [pid].  If the pathname  has  been  unlinked,  the symbolic  link  will  contain  the  string '(deleted)' appended to the original pathname.  In a multithreaded process, the contents of this symbolic link are not available if the main thread has already terminated (typically by calling pthread_exit(3)).

p.s философию и английский на другом курсе преподают :) 

11. sse4_2
