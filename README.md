### Задания из курса ["Функциональное программирование на языке Haskell"](https://stepik.org/course/75)  

## 1 Введение
1. [Установка и настройка среды](src/modules/01_Intro/1_1_SetupEnv)
    - [Hello.hs](src/modules/01_Intro/1_1_SetupEnv/helloworld)
2. [Функции](src/modules/01_Intro/1_2_Functions)
    - [lenVec3](src/modules/01_Intro/1_2_Functions/lenVec3)
	- [sign](src/modules/01_Intro/1_2_Functions/sign)
3. [Операторы](src/modules/01_Intro/1_3_Operators)
    - [x |-| y](src/modules/01_Intro/1_3_Operators/modDiff)
4. [Базовые типы](src/modules/01_Intro/1_4_BaseTypes)
    - [discount](src/modules/01_Intro/1_4_BaseTypes/discount)
	- [twoDigits2Int](src/modules/01_Intro/1_4_BaseTypes/twoDigits2Int)
	- [dist](src/modules/01_Intro/1_4_BaseTypes/dist)
5. [Рекурсия](src/modules/01_Intro/1_5_Recursion)
    - [doubleFact](src/modules/01_Intro/1_5_Recursion/doubleFact)
    - [fibonacci](src/modules/01_Intro/1_5_Recursion/fibonacci)
	- [fibonacci O(n)](src/modules/01_Intro/1_5_Recursion/fibonacci_iter)
6. [Локальные связывания и правила отступов](src/modules/01_Intro/1_6_Bindings_Indents)
    - [seqA](src/modules/01_Intro/1_6_Bindings_Indents/seqA)
	- [sum'n'count](src/modules/01_Intro/1_6_Bindings_Indents/sum'n'count)
	- [integration](src/modules/01_Intro/1_6_Bindings_Indents/integration)

## 2 Основы программирования
1. [Параметрический полиморфизм](src/modules/02_ProgrammingBasics/2_1_ParametricPolymorphism)
    - [getSecondFrom](src/modules/02_ProgrammingBasics/2_1_ParametricPolymorphism/getSecondFrom)
	- [multSecond](src/modules/02_ProgrammingBasics/2_1_ParametricPolymorphism/multSecond)
    - [on3](src/modules/02_ProgrammingBasics/2_1_ParametricPolymorphism/on3)
2. [Параметрический полиморфизм (2)](src/modules/02_ProgrammingBasics/2_2_ParametricPolymorphism)
	- [doItYourself](src/modules/02_ProgrammingBasics/2_2_ParametricPolymorphism/doItYourself)
3. [Классы типов](src/modules/02_ProgrammingBasics/2_3_ClassTypes)
	- [Printable](src/modules/02_ProgrammingBasics/2_3_ClassTypes/Printable)
	- [PrintablePair](src/modules/02_ProgrammingBasics/2_3_ClassTypes/PrintablePair)
4. [Стандартные классы типов](src/modules/02_ProgrammingBasics/2_4_StdClassTypes)
    - [KnownToGork, KnownToMork, KnownToGorkAndMork](src/modules/02_ProgrammingBasics/2_4_StdClassTypes/KnownTo(Gork-Mork))
	- [ip show](src/modules/02_ProgrammingBasics/2_4_StdClassTypes/ip)
	- [SafeEnum](src/modules/02_ProgrammingBasics/2_4_StdClassTypes/SafeEnum)
	- [avg](src/modules/02_ProgrammingBasics/2_4_StdClassTypes/avg)
## 3 Списки
1. [Функции для работы со списками](src/modules/03_Lists/3_1_ListMethods)
    - [addTwoElements](src/modules/03_Lists/3_1_ListMethods/addTwoElements)
	- [nTimes](src/modules/03_Lists/3_1_ListMethods/nTimes)
	- [oddsOnly](src/modules/03_Lists/3_1_ListMethods/oddsOnly)
	- [isPalindrome](src/modules/03_Lists/3_1_ListMethods/isPalindrome)
	- [sum3](src/modules/03_Lists/3_1_ListMethods/sum3)
	- [groupElems](src/modules/03_Lists/3_1_ListMethods/groupElems)
2. [Функции высших порядков над списками](src/modules/03_Lists/3_2_HOF)
    - [readDigits](src/modules/03_Lists/3_2_HOF/readDigits)
	- [filterDisj](src/modules/03_Lists/3_2_HOF/filterDisj)
	- [qsort](src/modules/03_Lists/3_2_HOF/qsort)
	- [squares'n'cubes](src/modules/03_Lists/3_2_HOF/squares'n'cubes)
	- [perms](src/modules/03_Lists/3_2_HOF/perms)
	- [delAllUpper](src/modules/03_Lists/3_2_HOF/delAllUpper)
	- [max3](src/modules/03_Lists/3_2_HOF/max3)
3. [Генераторы списков](src/modules/03_Lists/3_3_Generators)
    - [fibStream](src/modules/03_Lists/3_3_Generators/fibStream)
	- [repeatHelper](src/modules/03_Lists/3_3_Generators/repeatHelper)
	- [Odd](src/modules/03_Lists/3_3_Generators/EnumOdd)
	- [change](src/modules/03_Lists/3_3_Generators/change)
4. [Правая свертка](src/modules/03_Lists/3_4_RightFold)
    - [concatList](src/modules/03_Lists/3_4_RightFold/concatList)
	- [lengthList](src/modules/03_Lists/3_4_RightFold/lengthList)
	- [sumOdd](src/modules/03_Lists/3_4_RightFold/sumOdd)