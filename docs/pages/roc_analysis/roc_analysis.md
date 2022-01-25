## ROC - анализ

Представим себе, что у нас есть 2 неких условных класса: А и В, или здоровые и больные, или 0 и 1. Более того, представим себе что принадлежность к классу довольно объективна. Например, наличие/отсутствие тромбоза глубоких вен голени. 

У нас есть группа пациентов, которых мы пытаемся разделить на группы в зависимости от принадлежноси к классу. 

Когда мы всесторонне обследуем пациентов и находим тромбоз - пациент попадает в класс 1. Если тромбоза нет, пациент попадает в класс 0. 

Далее представим, что мы придумали новый скрининговый метод, позволяющий за 10 секунд с помощью смартфона выяить наличие/отсутствие тромбоза у пациента. 

Нам нужно подтвердить, что наш метод является:

- работает (способен хоть как-то отличить здоровых от больных);
- работает неплохо (демонстрирует низкое количество ложноположительных и ложноотрицательных результатов)

Наша задача - протестировать, как новый метод справляется с классификацией. Для этого мы проверяем, насколько хорошо метод диагностирует тромбоз (дает истинноположительный результат) и насколько хорошо он исключает тромбоз у пациентов при его отсутствии (истинноотрицательный результат). 

В итоге, мы можем составить вот такую таблицу сопряженности, которая получила название матрица ошибок или *confusion matrix/ error matrix*. 

|                         | Предсказанные значения 1           | Предсказанные значения 0            |
| ----------------------- | ---------------------------------- | ----------------------------------- |
| **Реальные значения 1** | Истинноположительные значения (TP) | Ложноотрицательные значения (FN)    |
| **Реальные значения 0** | Ложноположительные значения (FP)   | Истинно отрицательные значения (TN) |

Если новый тест хорошо справляется и с задачей подтверждения диагноза, и с задачей исключения диагноза, значения TP и TN будут высокими, а FP и FN - низкими. Такие тесты практически идеальны. 

Если тест хорошо подтверждает диагноз, но плохо исключает, то высокими будут значения TP и FN, а низкими - TN и FP.

Тесты, которые хорошо исключают диагноз, но плохо подтверждают, имеют высокие показатели TN и FP, и низкие TP и FN.

С матрицей ошибок связан целый ряд параметров, которые мы можем узнать о новом тесте:


- Чувствительность (sensitivity, recall, true positive rate (TPR)):

<!-- $TPR = \frac {\mathrm{TP}} {\mathrm{TP}+\mathrm{FN}}= 1 - \mathrm{FNR}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=TPR%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BTP%7D%7D%20%7B%5Cmathrm%7BTP%7D%2B%5Cmathrm%7BFN%7D%7D%3D%201%20-%20%5Cmathrm%7BFNR%7D">

- Специфичность (specificity, selectivity, true negative rate (TNR)):

<!-- $TNR = \frac {\mathrm{TN}} {\mathrm{TN} + \mathrm{FP}} = 1 - \mathrm{FPR}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=TNR%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BTN%7D%7D%20%7B%5Cmathrm%7BTN%7D%20%2B%20%5Cmathrm%7BFP%7D%7D%20%3D%201%20-%20%5Cmathrm%7BFPR%7D">

- Положительная прогностическая ценность (precision, positive predictive value):

<!-- $PPV = \frac {\mathrm{TP}} {\mathrm{TP} + \mathrm{FP}} = 1 - \mathrm{FDR}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=PPV%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BTP%7D%7D%20%7B%5Cmathrm%7BTP%7D%20%2B%20%5Cmathrm%7BFP%7D%7D%20%3D%201%20-%20%5Cmathrm%7BFDR%7D">

- Отрицательная прогностическая ценность (negative predictive value): 

<!-- $NPV = \frac {\mathrm{TN}} {\mathrm{TN} + \mathrm{FN}} = 1 - \mathrm{FOR}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=NPV%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BTN%7D%7D%20%7B%5Cmathrm%7BTN%7D%20%2B%20%5Cmathrm%7BFN%7D%7D%20%3D%201%20-%20%5Cmathrm%7BFOR%7D">

- Частота ложноотрицательных значений (false negative rate):

<!-- $FNR = \frac {\mathrm{FN}} {\mathrm{FN} + \mathrm{TP}} = 1 - \mathrm{TPR}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=FNR%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BFN%7D%7D%20%7B%5Cmathrm%7BFN%7D%20%2B%20%5Cmathrm%7BTP%7D%7D%20%3D%201%20-%20%5Cmathrm%7BTPR%7D">

- Частота ложноположительных значений (false positive rate): 

<!-- $FPR = \frac {\mathrm{FP}} {\mathrm{FP} + \mathrm{TN}} = 1 - \mathrm{TNR}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=FPR%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BFP%7D%7D%20%7B%5Cmathrm%7BFP%7D%20%2B%20%5Cmathrm%7BTN%7D%7D%20%3D%201%20-%20%5Cmathrm%7BTNR%7D">

- false discovery rate (FDR): 

<!-- $FDR = \frac {\mathrm{FP}} {\mathrm{FP} + \mathrm{TP}} = 1 - \mathrm{PPV}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=FDR%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BFP%7D%7D%20%7B%5Cmathrm%7BFP%7D%20%2B%20%5Cmathrm%7BTP%7D%7D%20%3D%201%20-%20%5Cmathrm%7BPPV%7D">

- false omission rate (FOR): 

<!-- $FOR = \frac {\mathrm{FN}} {\mathrm{FN} + \mathrm{TN}} = 1 - \mathrm{NPV}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=FOR%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BFN%7D%7D%20%7B%5Cmathrm%7BFN%7D%20%2B%20%5Cmathrm%7BTN%7D%7D%20%3D%201%20-%20%5Cmathrm%7BNPV%7D">

- Положительное отношение правдоподобия (positive likelihood ratio (LR+)): 

<!-- $LR+ = \frac {\mathrm{TPR}} {\mathrm{FPR}}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=LR%2B%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BTPR%7D%7D%20%7B%5Cmathrm%7BFPR%7D%7D">

- Отрицательное отношение правдоподобия (negative likelihood ratio (LR-)): 

<!-- $LR- = \frac {\mathrm{FNR}} {\mathrm{TNR}}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=LR-%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BFNR%7D%7D%20%7B%5Cmathrm%7BTNR%7D%7D">

- Точность (accuracy): 

<!-- $ACC = \frac {\mathrm{TP} + \mathrm{TN}} {\mathrm{TP} + \mathrm{TN} + \mathrm{FP} + \mathrm{FN}}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=ACC%20%3D%20%5Cfrac%20%7B%5Cmathrm%7BTP%7D%20%2B%20%5Cmathrm%7BTN%7D%7D%20%7B%5Cmathrm%7BTP%7D%20%2B%20%5Cmathrm%7BTN%7D%20%2B%20%5Cmathrm%7BFP%7D%20%2B%20%5Cmathrm%7BFN%7D%7D">

- скорректированная точность (balanced accuracy (BA)): 

<!-- $BA = \frac {TPR + TNR}{2}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=BA%20%3D%20%5Cfrac%20%7BTPR%20%2B%20TNR%7D%7B2%7D">

- F1 score - гармоническое среднее между PPV и TPR: 

<!-- $F_1 = 2 \times \frac {\mathrm{PPV} \times \mathrm{TPR}} {\mathrm{PPV} + \mathrm{TPR}} = \frac {2 \mathrm{TP}} {2 \mathrm{TP} + \mathrm{FP} + \mathrm{FN}}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=F_1%20%3D%202%20%5Ctimes%20%5Cfrac%20%7B%5Cmathrm%7BPPV%7D%20%5Ctimes%20%5Cmathrm%7BTPR%7D%7D%20%7B%5Cmathrm%7BPPV%7D%20%2B%20%5Cmathrm%7BTPR%7D%7D%20%3D%20%5Cfrac%20%7B2%20%5Cmathrm%7BTP%7D%7D%20%7B2%20%5Cmathrm%7BTP%7D%20%2B%20%5Cmathrm%7BFP%7D%20%2B%20%5Cmathrm%7BFN%7D%7D">

- Коэффициент корреляции Мэтью (Matthews correlation coefficient (MCC)): 

<!-- $MCC = \frac{ \mathrm{TP} \times \mathrm{TN} - \mathrm{FP} \times \mathrm{FN} } {\sqrt{ (\mathrm{TP}+\mathrm{FP}) ( \mathrm{TP} + \mathrm{FN} ) ( \mathrm{TN} + \mathrm{FP} ) ( \mathrm{TN} + \mathrm{FN} ) }}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=MCC%20%3D%20%5Cfrac%7B%20%5Cmathrm%7BTP%7D%20%5Ctimes%20%5Cmathrm%7BTN%7D%20-%20%5Cmathrm%7BFP%7D%20%5Ctimes%20%5Cmathrm%7BFN%7D%20%7D%20%7B%5Csqrt%7B%20(%5Cmathrm%7BTP%7D%2B%5Cmathrm%7BFP%7D)%20(%20%5Cmathrm%7BTP%7D%20%2B%20%5Cmathrm%7BFN%7D%20)%20(%20%5Cmathrm%7BTN%7D%20%2B%20%5Cmathrm%7BFP%7D%20)%20(%20%5Cmathrm%7BTN%7D%20%2B%20%5Cmathrm%7BFN%7D%20)%20%7D%7D">

Данные показатели мы часто используем для:

- оценки качеств диагностического теста при объективной принадлежности к классам (как в условиях выше);

- оценки качеств нового диагностичексого теста по отношению к "золотому стандарту" (при этом мы принимаем гипотезу о том, что "золотой стандарт" является объективным классификатором).

## Построение ROC-кривой

Представим себе, что у нас есть определенный набор значений **values** <!-- $[3,1,3,5,4,5,9,8,9,6]$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=%5B3%2C1%2C3%2C5%2C4%2C5%2C9%2C8%2C9%2C6%5D">. Также существует массив с реальными классами, которые соответствуют данным значениям **classes** <!-- $[0,0,0,1,0,1,1,1,0,1]$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=%5B0%2C0%2C0%2C1%2C0%2C1%2C1%2C1%2C0%2C1%5D">. 

Отсортируем оба массива так, чтобы набор вещественных значений имел порядок по возрастанию:

**Выражение 1. Отсортированный массив с соответствующими значениями классов.**

<!-- $\begin{cases} values:\ \ [9, 9, 8, 6, 5, 5, 4, 3, 3, 1] \\ classes:\ [1, 1, 0, 1, 1, 1, 0, 0, 0, 0] \end{cases}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Bcases%7D%20values%3A%5C%20%5C%20%5B9%2C%209%2C%208%2C%206%2C%205%2C%205%2C%204%2C%203%2C%203%2C%201%5D%20%5C%5C%20classes%3A%5C%20%5B1%2C%201%2C%200%2C%201%2C%201%2C%201%2C%200%2C%200%2C%200%2C%200%5D%20%5Cend%7Bcases%7D">

ROC-кривая представляет собой кривую на координатной плоскости, где осью абсцисс (х) являются FPR из уравнений выше, а по оси ординат TPR. 

Откуда же нам взять значения FPR и TPR?

Проведем следующую манипуляцию. Отсортируем теперь все *уникальные* значения из массива **values** по возрастанию. Каждое уникальное значение <!-- $i$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=i"> из такого массива должно стать *пороговым*: значения выше, или равные порогу <!-- $i$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=i"> становятся 1, значения ниже порога <!-- $i$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=i"> становятся 0 (см. таблицу 1). После этого мы в подставляем бинарные значения с учетом порогов в отсортированный массив **values** из выражения 1:

**Таблица 1. Введение порогов с сортировкой.**

| Порог          | Отсортированные по убыванию уникальные значения массива values | Отсортированные по убыванию все значения массива values |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------- |
| Без порога     | [9,8,6,5,4,3,1]                                              | [9, 9, 8, 6, 5, 5, 4, 3, 3, 1]                          |
| Порог 9 и выше | [1,0,0,0,0,0,0]                                              | [1,1,0, 0,0,0,0,0,0,0]                                  |
| Порог 8 и выше | [1,1,0,0,0,0,0]                                              | [1, 1, 1, 0,0,0,0,0,0,0]                                |
| Порог 6 и выше | [1,1,1,0,0,0,0]                                              | [1,1,1,1, 0,0,0,0,0,0]                                  |
| ...            |                                                              |                                                         |
| Порог 4 и выше | [1,1,1,1,1,0,0]                                              | [1,1,1,1,1,1,1, 0,0,0]                                  |
| ...            |                                                              |                                                         |

Таким образом, для каждого уникального значения $i$ в массиве **values** мы получили свой порог. 

Теперь для каждого порога $i$ заменим в **Выражении 1** значения массива **values** на соответствующие значения из крайнего правого столбца **таблицы 1**. 

Например, для порога 9 и выше:

<!-- $\begin{cases} i \geq 9 :\ \ [1,1,0, 0,0,0,0,0,0,0] \\ classes:\ [1, 1, 0, 1, 1, 1, 0, 0, 0, 0] \end{cases}$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Bcases%7D%20i%20%5Cgeq%209%20%3A%5C%20%5C%20%5B1%2C1%2C0%2C%200%2C0%2C0%2C0%2C0%2C0%2C0%5D%20%5C%5C%20classes%3A%5C%20%5B1%2C%201%2C%200%2C%201%2C%201%2C%201%2C%200%2C%200%2C%200%2C%200%5D%20%5Cend%7Bcases%7D">

И теперь мы можем построить *матрицу ошибок* для порога 9 и выше, а затем рассчитать FPR и TPR.

Повторив данную операцию для всех порогов, мы получим координаты для каждого порога для построения ROC-кривой, см. Таблицу 2. Мы всегда начинаем из точки с координатами (0,0), затем соединяем точки от наибольшего порога к наименьшему, и приходим в точку с координатами (1,1): 

**Таблица 2. Координаты для построения ROC-кривой.**

|                 | FPR (ось X) | TPR (ось Y) |
| --------------- | ----------- | ----------- |
| Начальная точка | 0           | 0           |
| Порог 9 и выше  | 0           | 0,4         |
| Порог 8 и выше  | 0,2         | 0,4         |
| Порог 6 и выше  | 0,2         | 0,6         |
| Порог 4 и выше  | 0,2         | 1           |
| Порог 3 и выше  | 0,4         | 1           |
| Порог 1 и выше  | 0,8         | 1           |
| Конечная точка  | 1           | 1           |

Получаем график ROC-кривой:

![](/docs/pages/roc_analysis/images/simple_roc.png)

Вот мы и построили нашу первую ROC-кривую!

## Чувствительность и специфичность 

Важно понимать, что у каждой точки на кривой будет свой показатель чувствительности и специфичности, в зависимости от того, какой порог мы возьмем. 

Например, если нам нужна чувствительность 0,6, то ей соответствует порог со значением "6 и выше", специфичность для такого порога составит 1 - FPR = 1 - 0.2 = 0.8. 

## Площадь под кривой (area under curve, AUC)

Существует несколько способов рассчитать площадь под кривой. 

Самый простой - рассмотреть полученную фигуру, как многоугольник несколько многоугольников, сложенных вместе.

Для нашей кривой мы банально можем рассчитать количество  количество "квадратов" координатной сетки (цена деления 0,2), находящихся под ROC-кривой и разделить на общее количество квадратов графика:

<!-- $AUC = \frac{22}{25} = 0.88$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=AUC%20%3D%20%5Cfrac%7B22%7D%7B25%7D%20%3D%200.88">

Однако при больших массивах данных ручной подсчет крайне неэффективен. 

Одним из решений является интегрирование по [методу трапеций](https://en.wikipedia.org/wiki/Trapezoidal_rule). 

Имея рассчитанные массивы TPR и FPR, мы можем очень быстро рассчитать по этому методу AUC:

```python
import numpy as np

fpr = np.array([0, 0, 0.2, 0.2, 0.2, 0.4, 0.8, 1])
tpr = np.array([0, 0.4, 0.4, 0.6, 1, 1, 1, 1])

print(np.trapz(tpr, fpr))

>>> 0.88
```

Также возможно рассчитать AUC с помощью метода Римана.[^1], [^2]

[^1]: [Wikipedia](https://en.wikipedia.org/wiki/Riemann_sum)

[^2]: [Сумма Римана с кодом для python](https://personal.math.ubc.ca/~pwalls/math-python/integration/riemann-sums/)

## Оптимальный порог разделения с помощью индекса Йоудена

Существует несколько разных способов определить оптимальный порог разделения на классы вектора **value**.

Одним из них является расчет индекса Йоудена (Youden's J statistic) *для каждой точки*, по которым мы строили ROC-кривую.

Индекса Йоудена легко рассчитать по формуле 

<!-- $J = TPR + TNR - 1 = TPR + (1 - FPR) - 1 = TPR - FPR$ --> <img style="transform: translateY(0.1em); background: white;" src="https://render.githubusercontent.com/render/math?math=J%20%3D%20TPR%20%2B%20TNR%20-%201%20%3D%20TPR%20%2B%20(1%20-%20FPR)%20-%201%20%3D%20TPR%20-%20FPR">

Графически на координатной сетке Youden's J statistic выглядит следующим образом для порога 5 и выше:

![](/docs/pages/roc_analysis/images/J_stat_roc.png)

Порог с наибольшим индексом Йоудена может быть использован при поиске оптимального разделения значений массива **value** для создания бинарных классов. 

В многочисленных статьях обычно указывают некий показатель AUC,  а также TPR, TNR, PPV, NPV для него, и может сложиться впечатление, что это показатели связаны со всей кривой. Однако это неверно! Чаще всего, если не сказано иначе, данные характеристики указываются как раз для точки с наивысшим индексом Йоудена. 

### Итоги

Таким образом, мы построили ROC-кривую для небольшого массива, поняли, как рассчитать площадь под ней разными способами, а также научились определять теоретический наилучший порог разделения массива на классы. 

