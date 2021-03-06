# Детерминированный хаос. Управление на многообразии
> Моделирование объектов детерминированного хаоса. Режимы устойчивости. Принципы системного синтеза управления и нелинейной адаптации на многообразиях

## Задание
1. Ознакомиться со справочными сведениями.
2. Построить графики и фазовые портреты нелинейной модели для
устойчивого и неустойчивого режимов.
3. Разработать программу, реализующую алгоритм управления хаотической
моделью с целью стабилизации объекта в окрестности устойчивого
состояния.
4. Получить сравнительные графики управляемой и неуправляемой моделей.
5. Составить и представить преподавателю отчет о работе.

Траектория модели Эно
X<sub>n+1</sub> = r * x<sub>n</sub> * (1 - x<sub>n</sub>) - b * x<sub>n - 1</sub>

При значениях **r = 3.9; b = 0.1; x<sub>0</sub> = 0.4.**

Функция управления:
*x<sup>0</sup><sub>k</sub> = 0.3 * sin(k)*

Закон управления дискретной моделью:
*xk(i) - r * x(i-1) * (1 - x(i-1)) - b * x(i-2)*

 - Красная – неуправляемый режим.
 - Синий – функция управления. 
 - Зеленый – управляемый режим.

#### Сравнительное моделирование
![Сравнительное моделирование](img/1.jpg)


### Фазовые портреты
![ads](img/2.jpg)