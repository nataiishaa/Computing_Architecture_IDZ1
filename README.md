# Computing_Architecture_IDZ1

>>>               Отчет Индивидуальное задание № 1.
>>>           Целочисленная арифметика. Одномерные массивы
Вариант №2 Выполнила: Захарова Наталья Владимировна БПИ223
>>           Условие:
Разработать программу, которая вводит одномерный массив A, состоящий из N элементов (значение N вводится при выполненпии про- граммы),после чего формирует из элементов массива A новый массив B по правилам, указанным в варианте, и выводит его. Память под массивы может выделяться статически, на стеке, автоматичеси по выбору разработчика с учетом требований к оценке работы.
При решении задачи необходимо использовать подпрограммы для реализации ввода, вывода и формирования нового массива массива. Допустимы (при необходимости) дополнительные подпрограммы.
Максимальное количество элементов в массиве не должно превышать 10 (ограничение обуславливается вводом данных с клавиатуры). При этом необходимо обрабатывать некорректные значения как для нижней, так и для верхней границ массивов в зависимости от условия задачи.
Сформировать массив B только из тех элементов массива, которые не совпадают с его первым и последним элементами.
    
>>           Соответствие программы критериям и проведенные изменения
>>На 4-5 баллов


● Приведено решение задачи на ассемблере. Ввод данных осуществ- ляется с клавиатуры. Вывод данных осуществляется на дисплей.
● В программе должны присутствуют комментарии, поясняющие выполняемые действия.

>>На 6-7 баллов

 В программе использованны необходимые подпрограммы с передачей аргументов через параметры, отображаемые на стек.
Внутри подпрограмм использованы необходимые по условию локальные переменные, которые при компиляции отображаются на стек.
В местах вызова функции добавлены комментарии, описывающие передачу фактических параметров и перенос возвращаемого ре-зультата. Отмечено, какая переменная или результат какого выражения соответствует тому или иному фактическому параметру.


>>На 8 баллов

Разработанные подпрограммы поддерживают многократное использование с различными наборами исходных данных, включая возможность подключения различных исходных и результирующих массивов.
Реализовано автоматизированное тестирование за счет создания дополнительной тестовой программы, осуществляющей прогон подпрограммы обработки массивов с различными тестовыми данными (вместо ввода данных). Осуществлен прогон тестов обеспечивающих покрытие различных ситуаций.

>>На 9 баллов

 • Добавлено в программу использование макросов для реализации ввода и вывода данных. Макросы поддерживают повторное использование с различными массивами и другими параметрами.
 
>>На 10 баллов

● Программа разбита на несколько единиц компиляции. При этом подпрограммы ввода–вывода составляют унифицированные модули, используемые повторно как в программе, осуществляющей ввод исходных данных, так и в программе, осуществляющей тестовое покрытие.
● Макросы выделены в отдельную автономную библиотеку
 
 
