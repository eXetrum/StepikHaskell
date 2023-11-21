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
5. [Левая свертка и ее сравнение с правой](src/modules/03_Lists/3_5_LeftFold)
    - [meanList](src/modules/03_Lists/3_5_LeftFold/meanList)
	- [evenOnly](src/modules/03_Lists/3_5_LeftFold/evenOnly)
	- [evenOnlyStream](src/modules/03_Lists/3_5_LeftFold/evenOnlyStream)
6. [Родственные сверткам функции](src/modules/03_Lists/3_6_RelatedToFold)
    - [lastElem](src/modules/03_Lists/3_6_RelatedToFold/lastElem)
	- [revRange](src/modules/03_Lists/3_6_RelatedToFold/revRange)

## 4 Типы данных
1. [Типы перечислений](src/modules/04_Types/4_1_EnumTypes)
    - [Color](src/modules/04_Types/4_1_EnumTypes/Color)
	- [charToInt](src/modules/04_Types/4_1_EnumTypes/charToInt)
	- [stringToColor](src/modules/04_Types/4_1_EnumTypes/stringToColor)
	- [cmp](src/modules/04_Types/4_1_EnumTypes/cmp)
	- [processData](src/modules/04_Types/4_1_EnumTypes/processData)
2. [Типы произведений и сумм произведений](src/modules/04_Types/4_2_ProductTypesSumTypes)
    - [distance](src/modules/04_Types/4_2_ProductTypesSumTypes/distance)
	- [area](src/modules/04_Types/4_2_ProductTypesSumTypes/area)
	- [doSomeWork'](src/modules/04_Types/4_2_ProductTypesSumTypes/doSomeWork')
	- [isSquare](src/modules/04_Types/4_2_ProductTypesSumTypes/isSquare)
	- [add&mul](src/modules/04_Types/4_2_ProductTypesSumTypes/add&mul)
3. [Синтаксис записей](src/modules/04_Types/4_3_RecordSyntax)
    - [logLevelToString, logEntryToString](src/modules/04_Types/4_3_RecordSyntax/logToString)
	- [updateLastName](src/modules/04_Types/4_3_RecordSyntax/updateLastName)
	- [abbrFirstName](src/modules/04_Types/4_3_RecordSyntax/abbrFirstName)
4. [Типы с параметрами](src/modules/04_Types/4_4_TypesWithParams)
    - [distance](src/modules/04_Types/4_4_TypesWithParams/distance)
	- [getCenter, getCell](src/modules/04_Types/4_4_TypesWithParams/getCenter&getCell)
	- [findDigit](src/modules/04_Types/4_4_TypesWithParams/findDigit)
	- [findDigitOrX](src/modules/04_Types/4_4_TypesWithParams/findDigitOrX)
	- [maybeToList, listToMaybe](src/modules/04_Types/4_4_TypesWithParams/maybeToList&listToMaybe)
	- [parsePerson](src/modules/04_Types/4_4_TypesWithParams/parsePerson)	
	- [eitherToMaybe fix](src/modules/04_Types/4_4_TypesWithParams/eitherToMaybe)
5. [Рекурсивные типы данных](src/modules/04_Types/4_5_RecursiveTypes)
    - [fromList, toList](src/modules/04_Types/4_5_RecursiveTypes/fromList&toList)
	- [Nat, fromNat, add, mul, fac](src/modules/04_Types/4_5_RecursiveTypes/Nat)
	- [Tree, height, size](src/modules/04_Types/4_5_RecursiveTypes/Tree)
	- [Tree, avg](src/modules/04_Types/4_5_RecursiveTypes/avg)
	- [expand](src/modules/04_Types/4_5_RecursiveTypes/expand)
6. [Синонимы и обертки для типов](src/modules/04_Types/4_6_SynonymsAndTypeWrappers)
    - [Monoid, Xor](src/modules/04_Types/4_6_SynonymsAndTypeWrappers/MonoidXor)
	- [Monoid Maybe'](src/modules/04_Types/4_6_SynonymsAndTypeWrappers/MonoidMaybe')
	- [MapLike, ListMap](src/modules/04_Types/4_6_SynonymsAndTypeWrappers/ListMap)
	- [MapLike, ArrowMap](src/modules/04_Types/4_6_SynonymsAndTypeWrappers/ArrowMap)

## 5 Монады
1. [Класс типов Functor и законы для него](src/modules/05_Monads/5_1_Functor)
    - [Point3D](src/modules/05_Monads/5_1_Functor/Point3D)
	- [GeomPrimitive](src/modules/05_Monads/5_1_Functor/GeomPrimitive)
	- [Tree::Maybe](src/modules/05_Monads/5_1_Functor/MaybeTree)
	- [Entry](src/modules/05_Monads/5_1_Functor/Entry)
2. [Определение монады](src/modules/05_Monads/5_2_MonadDefinition)
    - [toLogger, execLoggers](src/modules/05_Monads/5_2_MonadDefinition/Log)
	- [returnLog](src/modules/05_Monads/5_2_MonadDefinition/returnLog)
	- [bindLog](src/modules/05_Monads/5_2_MonadDefinition/bindLog)
	- [execLoggersList](src/modules/05_Monads/5_2_MonadDefinition/execLoggersList)
3. [Монада Identity](src/modules/05_Monads/5_3_IdentityMonad)
    - [SomeType Functor](src/modules/05_Monads/5_3_IdentityMonad/SomeTypeFunctor)
4. [Список и Maybe как монады](src/modules/05_Monads/5_4_ListAndMaybeLikeMonad)
    - [Token, asToken, tokenize](src/modules/05_Monads/5_4_ListAndMaybeLikeMonad/Token)
	- [Board, nextPositionsN](src/modules/05_Monads/5_4_ListAndMaybeLikeMonad/Board)
	- [pythagoreanTriple](src/modules/05_Monads/5_4_ListAndMaybeLikeMonad/Board/pythagoreanTriple)