# Разработка прогнозных моделей для отбора бурёнок в поголовье


## Данные

В наличии были следующие данные о коровах:
- ЭКЕ (измерение питательности корма коровы)
- содержание сырого протеина в корме, в граммах
- отношение сахара к протеину в корме
- ландшафт лугов, на которых паслась корова
- порода коровы
- бинарный признак возраста (менее_2_лет, более_2_лет)
- порода папы коровы

Дополнительно предоставлены характеристики молока коровы:
- содержание жиров в молоке, в процентах
- содержание белков в молоке, в процентах
- бинарная оценка вкуса по личным критериям фермера (вкусно, не вкусно)

## Задача

Разработать модель машинного обучения, которая поможет фермеру управлять рисками и принимать объективное решение о покупке коров на основе их характеристик. Создать две прогнозные модели для отбора бурёнок в поголовье: первая будет прогнозировать возможный удой у коровы, вторая — рассчитывать вероятность получить вкусное молоко от коровы. Отобрать коров с помощью полученных моделей.

## 

## Общий вывод

Построены обе требуемые модели. Для предсказания удоя мною была использована линейная регрессия, итоговые метрики на тесте: $R^2 = 0.827$, $RMSE = 187.93$, $MAE = 144.64$. Для прогнозирования вкуса применена логистическая регрссия, итоговые метрики на тесте: $accuracy  = 0.631$, $precision = 0.623$, $recall = 0.864$. Мне удалось выяснить, что все коровы подходят под требования по удою, но ни одна - под требования по вкусу. Если делать выбор с уверенностью не 100%, а 80%, то под требования подойдут 4 коровы из 20.

## 

## Используемые библиотеки
*pandas*, *numpy*, *matplotlib*, *seaborn*, *scipy*, *sklearn*, *phik*