﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////


// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 

// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 

// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;


// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПокаВыражениеВстроенногоЯзыкаИстинноТогда(Парам01)","ПокаВыражениеВстроенногоЯзыкаИстинноТогда","И Пока выражение встроенного ""Контекст.СлужебнаяПеременная < 2"" языка истинно тогда","Выполняет шаги пока истинно условие","Встроенный язык","Цикл");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"СлужебноеУсловиеВКоторомМеняетсяСлужебнаяПеременнаяИстинноТогда()","СлужебноеУсловиеВКоторомМеняетсяСлужебнаяПеременнаяИстинноТогда","Если служебное условие, в котором меняется служебная переменная истинно тогда","","","Условие");

	Возврат ВсеТесты;
КонецФункции
	

// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	Возврат ПолучитьМакет(ИмяМакета);
КонецФункции
	

// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////


// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции


// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////


//И Пока выражение встроенного "Контекст.СлужебнаяПеременная < 2" языка истинно тогда
//@ПокаВыражениеВстроенногоЯзыкаИстинноТогда(Парам01)
Функция ПокаВыражениеВстроенногоЯзыкаИстинноТогда(Выражение) Экспорт
	Результат = Вычислить(Выражение);
	Если Результат Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецФункции

//Если служебное условие, в котором меняется служебная переменная истинно тогда
//@СлужебноеУсловиеВКоторомМеняетсяСлужебнаяПеременнаяИстинноТогда()
Функция СлужебноеУсловиеВКоторомМеняетсяСлужебнаяПеременнаяИстинноТогда() Экспорт
	Контекст.СлужебнаяПеременная1 = Контекст.СлужебнаяПеременная1 + 1;
	Если Контекст.СлужебнаяПеременная1 < 4 Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
		Возврат Неопределено;
	КонецЕсли;	 
	
	Ванесса.УстановитьРезультатУсловия(Ложь);
КонецФункции
