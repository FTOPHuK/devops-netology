# Задача 1
Посмотрите на сценарий ниже и ответьте на вопрос: "Подходит ли в этом сценарии использование докера? Или лучше подойдет виртуальная машина, физическая машина? Или возможны разные варианты?"

Детально опишите и обоснуйте свой выбор.

--

1. Высконагруженное монолитное java веб-приложение - **Железный сервер**
2. Go-микросервис для генерации отчетов - **Докер**
3. Nodejs веб-приложение - **ВМ/Докер**
4. Мобильное приложение c версиями для Android и iOS - **Докер**;
5. База данных postgresql используемая, как кэш - **ВМ**
6. Шина данных на базе Apache Kafka - **Не знаком с кафка, вероятно железный сервер (раз шина))))**
7. Очередь для Logstash на базе Redis - **Не знаю что это, пусть будет ВМ**
8. Elastic stack для реализации логирования продуктивного веб-приложения - три ноды elasticsearch, два logstash и две ноды kibana - **ВМ/Докер**
9. Мониторинг-стек на базе prometheus и grafana - **ВМ/Докер**
10. Mongodb, как основное хранилище данных для java-приложения - **Железный сервер/ВМ** 
11. Jenkins-сервер - **Докер**

# Задача 2

docker pull ftophuk/apache2_fork

# Задача 3

К сожалению так и не удалось подружить шаринг локальной паки windows 10 с докер контейнером...
