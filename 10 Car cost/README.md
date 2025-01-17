# Определение стоимости автомобилей для сервиса «Не бит, не крашен»


## Данные

В наличии были следующие исторические данные о характеристиках автомобилей (и не только):
- Дата скачивания анкеты из базы
- Тип автомобильного кузова
- Год регистрации автомобиля
- Тип коробки передач
- Мощность (л. с.)
- Модель автомобиля
- Пробег (км)
- Месяц регистрации автомобиля
- Тип топлива
- Марка автомобиля
- Была машина в ремонте или нет
- Дата создания анкеты
- Количество фотографий автомобиля
- Почтовый индекс владельца анкеты (пользователя)
- Дата последней активности пользователя
- Цена (евро)

## Задача

Построить модель для определения стоимости автомомбиля по его характеристикам. Критерий успеха: $RMSE \lt 2500$. Время обучения и предсказания не должно быть слишком большим.

## 

## Общий вывод

Обе построенные мною модели (линейная регрессия и бустинг) соответствуют критерию успеха. Тем не менее, бустинг из 700 деревьев без ограничения глубины показывает заметно лучший результат $RMSE=1509$ против $RMSE=2091$ при быстром времени обучения и предсказания (1,40 с и 0,76 с).

## 

## Используемые библиотеки
*pandas*, *numpy*, *matplotlib*, *seaborn*, *phik*, *sklearn*, *lightgbm*