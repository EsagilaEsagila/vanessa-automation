﻿Функция ПолучитьОписаниеJSON(Данные) Экспорт
	
	Запись = Новый ЗаписьJSON();
	Запись.УстановитьСтроку();
	Попытка
		ЗаписатьJSON(Запись, Данные);
	Исключение
		ШаблонТекста = НСтр("ru = 'Не удалось сохранить коллекцию метаданных: %1 %2'");
		Текст = СтрШаблон(ШаблонТекста, Символы.ПС, ОписаниеОшибки());
		ВызватьИсключение Текст;
	КонецПопытки;
	
	Возврат Запись.Закрыть();
	
КонецФункции
