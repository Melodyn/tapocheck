# Tapocheck / Тапочек
_tap for check_

Приложение в стиле `todo` / `checklist` / `список дел, покупок и т.д.` для андроид-смартфонов.


## Шо, опять?

Ожидается выполнение следующих требований: ~вертолёт и миллион долларов~
- Вход в приложение без регистрации и смс;
- Бесплатный базовый функционал (создание карточек, виджеты);
- Создание карточек с текстовым описанием и пунктов для выполнения;
- Вынос карточек на главный экран в виде виджетов;
- Тап по пункту или свайп слева направо вычёркивает его и опускает вниз карточки (а не входит в редактирование / удаление / иное);
- Свайп справа налево открывает кнопки действий для пункта: отметить / редактировать / вложить карточку`*` / удалить;
- Тапы по пунктам на виджете меняют состояние пунктов (вычёркивают и опускают вниз) без входа в приложение.

А также:
- Нормальный дизайн, простой интерфейс, поддержка системного размера шрифтов (для слабозрячих);
- Построение интерфейса снизу вверх, ибо давно у всех лопатофоны и задолбали выносить важный функционал в верхний левый угол!!1!;
- Пункт списка - это карточка, просто без вложенных подпунктов. В идеале, это нужно выделить в такую сущность, чтобы можно было погружаться`*` на несколько уровней вниз, предположительно, до 5;
- Режим для правшей / левшей;
- Донат, реклама, pro-версия, иначе как я разбогатею???


## Технологии:

- React native. Мне просто нужна практика по реакту, ничего личного.
- Redux. Зачем? Не знаю, но мне просто нужна практика...;
- Notepad++ или какие там есть сейчас IDE;
- Тесты? Пфффхаа, да кому они...


## Статус работы:

~~Вероятно, всё закончится данным документом, но я уже перестал переставать и планирую начать начинать.~~

На досуге набросал "бэк" чтобы посмотреть что может получиться:
https://repl.it/@Melodyn/tapocheckapp

Решил что этого достаточно для того чтобы натянуть интерфейс и ещё раз оценить получившееся.


Сначала хотел сделать на нескольких контейнерах: нода + джава + андроид сдк, а потом узнал что шарить процессы между контейнерами нельзя (или можно, но нафиг нужно), поэтому взял за основу Убунту и собираю на ней, ориентируюсь на данных ребят:
- https://github.com/mayhewluke/react-native-docker/blob/master/Dockerfile
- https://github.com/react-native-community/docker-android/blob/master/Dockerfile
- https://medium.com/@hmajid2301/running-expo-react-native-in-docker-ff9c4f2a4388
