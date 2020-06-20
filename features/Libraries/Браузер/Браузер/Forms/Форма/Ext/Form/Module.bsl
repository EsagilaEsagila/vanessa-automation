﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Automation
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Automation.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПоказываюПодсказкуEnjoyHintУЭлемента(Парам01,Парам02,ТабПарам)",
		"ЯПоказываюПодсказкуEnjoyHintУЭлемента",
		"И я показываю подсказку ""ТекстПодсказки"" EnjoyHint у элемента ""ИмяЭлемента""
		|		|'selector'|'button'|
		|		|'showSkip'|'false'|
		|		|'shape'|'rect'|
		|		|'timeout'|'5000'|",
		"Рисует фигуры в барузере. Параметры описаны тут: https://github.com/xbsoftware/enjoyhint/blob/master/README.md",
		"Прочее.Браузер");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯРисуюСтрелкуОтКВБраузере(Парам01,Парам02,ТабПарам)",
		"ЯРисуюСтрелкуОтКВБраузере",
		"И я рисую стрелку от ""ИмяЭлемента1"" к ""ИмяЭлемента2"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'startSocket'|'up'|
		|		|'endSocket'|'down'|
		|		|'startSocketGravity'|' 160, -80'|
		|		|'endSocketGravity'|' 160, 80'|
		|		|'dropShadow'|'true'|
		|		|'middleLabel'|''|
		|		|'timeout'|'5000'|",
		"Рисует стрелку в барузере. В качестве параметров могут быть как имена элементов формы, так и выражения на js, например:
		|rect('Заполните поле ""Комментарий""', 5000) - текст на экране
		|border('Комментарий', 5000) - рамка вокруг элемента
		|Если имя элемента не указано, то он считается текущим элементом. Дополнительные возможности тут: https://github.com/anseki/leader-line",
		"Прочее.Браузер");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯРисуюРамкуВокругЭлементаВБраузере(Парам01,ТабПарам)",
		"ЯРисуюРамкуВокругЭлементаВБраузере",
		"И я рисую рамку вокруг элемента ""ИмяЭлемента"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг элемента в браузере. Элемент формы ищется по имени.",
		"Прочее.Браузер");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯРисуюРамкуВокругНесколькихЭлементовВБраузере(ТабПарам)",
		"ЯРисуюРамкуВокругНесколькихЭлементовВБраузере",
		"И я рисую рамку вокруг нескольких элементов в браузере
		|		|'elem'|'ИмяЭлемента1'|
		|		|'elem'|'ИмяЭлемента2'|
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг нескольких элементов в браузере. Элементы формы ищутся по имени.",
		"Прочее.Браузер");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере(Парам01,ТабПарам)",
		"ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере",
		"И я рисую рамку вокруг элемента панели разделов ""ИмяЭлемента"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг элемента в браузере. Элемент формы ищется по имени.",
		"Прочее.Браузер");
	
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПоказываюТекстНадПолемВБраузере(Парам01,Парам02,ТабПарам)",
		"ЯПоказываюТекстНадПолемВБраузере",
		"И я показываю текст ""НужныйТекст"" над полем ""ИмяПоля"" в браузере
		|		|'borderColor'|'red'|
		|		|'backgroundColor'|'white'|
		|		|'timeout'|'5000'|
		|		|'offsetup'|'80'|",
		"Рисует надо полем текст.",
		"Прочее.Браузер");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯАктивизируюТекущееОкноБраузера()",
		"ЯАктивизируюТекущееОкноБраузера",
		"И Я активизирую текущее окно браузера",
		"Активизируется текущее окно браузера",
		"Прочее.Браузер");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
Процедура ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам)
	Если ТабПарам = Неопределено Тогда
		Возврат;
	КонецЕсли;	
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ДанныеПараметров.Вставить(СтрокаТабПарам.Кол1, СтрокаТабПарам.Кол2);
	КонецЦикла;	 
КонецПроцедуры 

&НаКлиенте
Функция ОбернутьВАпострофы(Стр)
	Если Прав(СокрП(Стр), 1) = ")" Тогда
		Возврат Стр;
	КонецЕсли;	 
	
	Возврат "'" + Стр + "'"; 
КонецФункции	 

&НаКлиенте
//И я показываю подсказку EnjoyHint у элемента "ИмяЭлемента"
//@ЯПоказываюПодсказкуEnjoyHintУЭлемента(Парам01,ТабПарам)
Функция ЯПоказываюПодсказкуEnjoyHintУЭлемента(Текст, ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	selector = "button";
	showSkip = "false";
	shape = "rect";
	timeout = "5000";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("selector", selector);
	ДанныеПараметров.Вставить("showSkip", showSkip);
	ДанныеПараметров.Вставить("shape", shape);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	
	Скрипт = 
	"{
	|
	|let enjoyhint = new EnjoyHint();
	|let button = elem('%1');
	|let text = '%2';
	|let array_enjoy = [{selector:%3, description: text, showSkip:%4, shape:'%5'}];
	|enjoyhint.set(array_enjoy); 
	|enjoyhint.run(); 
	|$('.enjoyhint_close_btn').hide();
	|setTimeout(() => (enjoyhint.stop()), %6);
	|
	|}";
	
	Скрипт = СтрЗаменить(Скрипт, "%1", ИмяЭлемента);
	Скрипт = СтрЗаменить(Скрипт, "%2", Текст);
	Скрипт = СтрЗаменить(Скрипт, "%3", ДанныеПараметров["selector"]);
	Скрипт = СтрЗаменить(Скрипт, "%4", ДанныеПараметров["showSkip"]);
	Скрипт = СтрЗаменить(Скрипт, "%5", ДанныеПараметров["shape"]);
	Скрипт = СтрЗаменить(Скрипт, "%6", ДанныеПараметров["timeout"]);
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
КонецФункции

&НаКлиенте
//И я рисую стрелку от "ИмяЭлемента1" к "ИмяЭлемента2" в браузере
//@ЯРисуюСтрелкуОтКВБраузере(Парам01,ТабПарам)
Функция ЯРисуюСтрелкуОтКВБраузере(Знач ИмяЭлемента1, Знач ИмяЭлемента2, ТабПарам = Неопределено) Экспорт
	color = "red";
	size = "3";
	timeout = "5000";
	startSocket = "up";
	endSocket = "down";
	startSocketGravity = "";
	endSocketGravity = "";
	dropShadow = "true";
	middleLabel = "";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	ДанныеПараметров.Вставить("startSocket", startSocket);
	ДанныеПараметров.Вставить("endSocket", endSocket);
	ДанныеПараметров.Вставить("startSocketGravity", startSocketGravity);
	ДанныеПараметров.Вставить("endSocketGravity", endSocketGravity);
	ДанныеПараметров.Вставить("dropShadow", dropShadow);
	ДанныеПараметров.Вставить("middleLabel", middleLabel);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	
	Если ПустаяСтрока(ИмяЭлемента1) Тогда
		ИмяЭлемента1 = "selected()";
	КонецЕсли;	 
	
	Если ПустаяСтрока(ИмяЭлемента2) Тогда
		ИмяЭлемента2 = "selected()";
	КонецЕсли;	 
	
	Скрипт = "arrow(%1, %2, %3, {color:'%4', size: %5}).setOptions({startSocket: '%6', endSocket: '%7', startSocketGravity: [%8], endSocketGravity: [%9], dropShadow: %10, middleLabel: '%11'});";
	
	Скрипт = СтрЗаменить(Скрипт, "%10", ДанныеПараметров["dropShadow"]);
	Скрипт = СтрЗаменить(Скрипт, "%11", ДанныеПараметров["middleLabel"]);
	Скрипт = СтрЗаменить(Скрипт, "%1", ОбернутьВАпострофы(ИмяЭлемента1));
	Скрипт = СтрЗаменить(Скрипт, "%2", ОбернутьВАпострофы(ИмяЭлемента2));
	Скрипт = СтрЗаменить(Скрипт, "%3", ДанныеПараметров["timeout"]);
	Скрипт = СтрЗаменить(Скрипт, "%4", ДанныеПараметров["color"]);
	Скрипт = СтрЗаменить(Скрипт, "%5", ДанныеПараметров["size"]);
	Скрипт = СтрЗаменить(Скрипт, "%6", ДанныеПараметров["startSocket"]);
	Скрипт = СтрЗаменить(Скрипт, "%7", ДанныеПараметров["endSocket"]);
	
	Если ПустаяСтрока(ДанныеПараметров["startSocketGravity"]) Тогда
		Скрипт = СтрЗаменить(Скрипт, "startSocketGravity: [%8],", "");
	КонецЕсли;	 
	
	Если ПустаяСтрока(ДанныеПараметров["endSocketGravity"]) Тогда
		Скрипт = СтрЗаменить(Скрипт, "endSocketGravity: [%9],", "");
	КонецЕсли;	 
	
	Скрипт = СтрЗаменить(Скрипт, "%8", ДанныеПараметров["startSocketGravity"]);
	Скрипт = СтрЗаменить(Скрипт, "%9", ДанныеПараметров["endSocketGravity"]);
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг элемента "ИмяЭлемента" в браузере
//@ЯРисуюРамкуВокругЭлементаВБраузере(Парам01,ТабПарам)
Функция ЯРисуюРамкуВокругЭлементаВБраузере(ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	color = "red";
	size = "3";
	timeout = "5000";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	
	Скрипт = "border(%1, %2, { color: ""%3"", size: %4 })";
	Скрипт = СтрЗаменить(Скрипт, "%1", ОбернутьВАпострофы(ИмяЭлемента));
	Скрипт = СтрЗаменить(Скрипт, "%2", ДанныеПараметров["timeout"]);
	Скрипт = СтрЗаменить(Скрипт, "%3", ДанныеПараметров["color"]);
	Скрипт = СтрЗаменить(Скрипт, "%4", ДанныеПараметров["size"]);
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг нескольких элементов в браузере
//@ЯРисуюРамкуВокругНесколькихЭлементовВБраузере(Парам01,ТабПарам)
Функция ЯРисуюРамкуВокругНесколькихЭлементовВБраузере(ТабПарам) Экспорт
	color = "red";
	size = "3";
	timeout = "5000";
	
	МассивИменЭлементов = Новый Массив;
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Если Нрег(СтрокаТабПарам.Кол1) = "elem" Тогда
			МассивИменЭлементов.Добавить(СтрокаТабПарам.Кол2);
		КонецЕсли;	 
	КонецЦикла;	 
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	
	Скрипт = "border(%1, %2, { color: ""%3"", size: %4 })";
	СтрокаЭлементы = "[";
	Сч = 0;
	Для Каждого Элем Из МассивИменЭлементов Цикл
		Сч = Сч + 1;
		СтрокаЭлементы = СтрокаЭлементы + ОбернутьВАпострофы(Элем);
		Если Сч < МассивИменЭлементов.Количество() Тогда
			СтрокаЭлементы = СтрокаЭлементы +  " , ";
		КонецЕсли;	 
	КонецЦикла;	 
	СтрокаЭлементы = СтрокаЭлементы + "]";
	
	Скрипт = СтрЗаменить(Скрипт, "%1", СтрокаЭлементы);
	Скрипт = СтрЗаменить(Скрипт, "%2", ДанныеПараметров["timeout"]);
	Скрипт = СтрЗаменить(Скрипт, "%3", ДанныеПараметров["color"]);
	Скрипт = СтрЗаменить(Скрипт, "%4", ДанныеПараметров["size"]);
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг элемента панели разделов "ИмяЭлемента" в браузере
//@ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере(Парам01,ТабПарам)
Функция ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере(ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	color = "red";
	size = "3";
	timeout = "5000";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	
	Скрипт = "{ let r = theme('%1').getBoundingClientRect();
		|let coordinates = {left: r.x - 5, top: r.y - 5, width: r.width + 5, height: r.height + 5}
		|border(coordinates, %2, { color: ""%3"", size: %4 }) }	
		|";
	Скрипт = СтрЗаменить(Скрипт, "%1", ИмяЭлемента);
	Скрипт = СтрЗаменить(Скрипт, "%2", ДанныеПараметров["timeout"]);
	Скрипт = СтрЗаменить(Скрипт, "%3", ДанныеПараметров["color"]);
	Скрипт = СтрЗаменить(Скрипт, "%4", ДанныеПараметров["size"]);
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
КонецФункции


&НаКлиенте
//И я показываю текст "НужныйТекст" над полем "ИмяПоля" в браузере
//@ЯПоказываюТекстНадПолемВБраузере(Парам01,ТабПарам)
Функция ЯПоказываюТекстНадПолемВБраузере(Текст, ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	borderColor = "red";
	backgroundColor = "white";
	timeout = "5000";
	offsetup = "80";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("borderColor", borderColor);
	ДанныеПараметров.Вставить("backgroundColor", backgroundColor);
	ДанныеПараметров.Вставить("timeout", timeout);
	ДанныеПараметров.Вставить("offsetup", offsetup);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	
	Скрипт = "
		|{
		|let e = elem('%1');
		|let r = e.getBoundingClientRect();
		|function rect(text, timeout = %2, options = undefined) {
		|	let px = value => (typeof value == 'number' ? value + 'px' : value);
		|	let node = document.createElement('div');
		|	node.innerHTML = text;
		|	node.style.fontSize = '140%';
		|	node.style.position = 'fixed';
		|	node.style.zIndex = 999999;
		|	node.style.borderWidth = '0.2em';
		|	node.style.borderStyle = 'solid';
		|	node.style.borderColor = '%3';
		|	node.style.boxShadow = '0 0 1em #333333';
		|	node.style.backgroundColor = '%4';
		|	node.style.padding = '1em';
		|	node.style.borderRadius = '1em';
		|	window.top.document.body.appendChild(node);
		|	if (timeout) setTimeout(() => { if (node) node.remove() }, timeout);
		|	customDrawElements.push(node);
		|	return node;
		|};
		|let t = rect('%5');
		|t.style.left = r.left + 'px';
		|t.style.top = (r.top - %6) + 'px';
		|}				
		|";
	Скрипт = СтрЗаменить(Скрипт, "%1", ИмяЭлемента);
	Скрипт = СтрЗаменить(Скрипт, "%2", ДанныеПараметров["timeout"]);
	Скрипт = СтрЗаменить(Скрипт, "%3", ДанныеПараметров["borderColor"]);
	Скрипт = СтрЗаменить(Скрипт, "%4", ДанныеПараметров["backgroundColor"]);
	Скрипт = СтрЗаменить(Скрипт, "%5", Текст);
	Скрипт = СтрЗаменить(Скрипт, "%6", ДанныеПараметров["offsetup"]);
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
КонецФункции

&НаКлиенте
//И Я активизирую текущее окно браузера
//@ЯАктивизируюТекущееОкноБраузера()
Процедура ЯАктивизируюТекущееОкноБраузера() Экспорт
	Ванесса.АктивироватьОкноБраузера();
КонецПроцедуры