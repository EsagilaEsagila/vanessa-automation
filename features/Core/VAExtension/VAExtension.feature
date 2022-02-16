﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316
@IgnoreOn8317


Функционал: Проверка работы шагов, использующих расширение VAExtension



Сценарий: Установка расширения VAExtension

	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension01"
	
	И в поле с именем "КаталогПроекта" я ввожу текст "$КаталогИнструментов$"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	Тогда в логе сообщений TestClient есть строки:
		|'Ошибок не было.'|
		


Сценарий: Основная проверка VAExtension

	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	* Проверка вывода данных текущего окна
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension02"

		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

		Тогда открылось окно 'Значения элементов окна*'
		Затем я  закрываю окно 'Значения элементов окна*'

	* Проверка основных шагов		
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension03"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


		Тогда в логе сообщений TestClient есть строки:
			|'НавигационнаяСсылка = e1cib/data/Справочник.Справочник1?ref='|
			|'ПометкаУдаления = Нет'|
			|'ИмяКонфигурации = Конфигурация'|
			|'КодНаКлиенте = 2'|
			|'Ошибок не было.'|


	* Проверка получения макета с помощью расширения
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаВыполнениеСценариев"
		И я устанавливаю флаг с именем 'ПолучатьМакетыСПомощьюРасширенияVAExtension'
				
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension04"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'
		
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                                                             | 'Статус'  |
			| 'VAExtension04.feature'                                                                                                    | ''        |
			| 'VAExtension04'                                                                                                            | ''        |
			| 'VAExtension04'                                                                                                            | 'Success' |
			| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий'                                              | ''        |
			| 'Дано Я открыл новый сеанс TestClient или подключил уже существующий'                                                      | 'Success' |
			| 'И Я закрываю все окна клиентского приложения'                                                                             | 'Success' |
			| 'И я удаляю все элементы справочника "Справочник3"'                                                                        | 'Success' |
			| 'И В командном интерфейсе я выбираю \'Основная\' \'Справочник3\''                                                          | 'Success' |
			| 'Тогда открылось окно \'Справочник3\''                                                                                     | 'Success' |
			| 'И я нажимаю на кнопку с именем \'ФормаСоздать\''                                                                          | 'Success' |
			| 'Тогда открылось окно \'Справочник3 (создание)\''                                                                          | 'Success' |
			| 'И в поле с именем \'Наименование\' я ввожу текст \'111\''                                                                 | 'Success' |
			| 'И я нажимаю на кнопку с именем \'ФормаЗаписать\''                                                                         | 'Success' |
			| 'Тогда открылось окно \'* (Справочник3)\''                                                                                 | 'Success' |
			| 'И я нажимаю на кнопку с именем \'СформироватьОтчет\''                                                                     | 'Success' |
			| 'Дано Табличный документ \'РеквизитТабличныйДокумент\' равен макету "ПолучениеМакетаЧерезРасширение"'                      | 'Success' |
			| 'Тогда табличный документ "РеквизитТабличныйДокумент" равен:'                                                              | 'Success' |
			| '\| \'Наименование\' \| \'Предопределенный\' \| \'ВерсияДанных\' \| \'ИмяПредопределенныхДанных\' \| \'ПараметрЧисло\' \|' | ''        |
			| '\| \'111\'          \| \'Нет\'              \| \'*\'            \| \'\'                          \| \'1,2\'           \|' | ''        |
			| 'И я очищаю табличный документ "РеквизитТабличныйДокумент" (расширение)'                                                   | 'Success' |
			| 'Тогда табличный документ формы с именем "РеквизитТабличныйДокумент" стал пустым'                                          | 'Success' |
		
						

	* Окно Функции для технического специалиста
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension05"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                  | 'Статус'  |
			| 'VAExtension05.feature'                                                         | ''        |
			| 'VAExtension05'                                                                 | ''        |
			| 'VAExtension05'                                                                 | 'Success' |
			| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий'   | ''        |
			| 'Дано Я открыл новый сеанс TestClient или подключил уже существующий'           | 'Success' |
			| 'И Я закрываю все окна клиентского приложения'                                    | 'Success' |
			| 'И я открываю окно функции для технического специалиста (расширение)'           | 'Success' |
			| 'Тогда открылось окно \'Функции для технического специалиста\''                 | 'Success' |
			| 'И в таблице "Table" я перехожу к строке:'                                      | 'Success' |
			| '\| \'Имя\'         \|'                                                         | ''        |
			| '\| \'Справочники\' \|'                                                         | ''        |
			| 'И в таблице "Table" я перехожу к строке:'                                      | 'Success' |
			| '\| \'Имя\'       \|'                                                           | ''        |
			| '\| \'Константы\' \|'                                                           | ''        |
			| 'И в таблице "Table" я разворачиваю текущую строку'                             | 'Success' |
			| 'И в таблице "Table" я перехожу к строке:'                                      | 'Success' |
			| '\| \'Имя\'                             \|'                                     | ''        |
			| '\| \'Инициализировать vanessa editor\' \|'                                     | ''        |
			| 'И в таблице "Table" я нажимаю на кнопку с именем \'CommandOpen\''              | 'Success' |
			| 'Тогда открылось окно \'Инициализировать vanessa editor\''                      | 'Success' |
			| 'И я нажимаю на кнопку \'Записать и закрыть\''                                  | 'Success' |
			| 'И я жду закрытия окна \'Инициализировать vanessa editor\' в течение 20 секунд' | 'Success' |
		

	* Окно Настройка начальной страницы
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension06"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                | 'Статус'  |
			| 'VAExtension06.feature'                                                       | ''        |
			| 'VAExtension06'                                                               | ''        |
			| 'VAExtension06'                                                               | 'Success' |
			| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий' | ''        |
			| 'Дано Я открыл новый сеанс TestClient или подключил уже существующий'         | 'Success' |
			| 'И Я закрываю все окна клиентского приложения'                                | 'Success' |
			| 'И я открываю окно настройка начальной страницы (расширение)'                 | 'Success' |
			| 'Тогда открылось окно \'Настройка начальной страницы\''                       | 'Success' |
			| 'И я нажимаю на кнопку \'OK\''                                                | 'Success' |
		
	* Шаги сортировки динамического списка
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAExtension/VAExtension07"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                                                                       | 'Статус'  |
			| 'VAExtension07.feature'                                                                                              | ''        |
			| 'VAExtension07'                                                                                                      | ''        |
			| 'VAExtension07'                                                                                                      | 'Success' |
			| 'Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий'                                        | ''        |
			| 'Дано Я открыл новый сеанс TestClient или подключил уже существующий'                                                | 'Success' |
			| 'И Я закрываю все окна клиентского приложения'                                                                       | 'Success' |
			| 'И В командном интерфейсе я выбираю \'Основная\' \'Справочник1\''                                                    | 'Success' |
			| 'И в таблице "Список" текущего окна я устанавливаю сортировку по колонке "Реквизит1" по убыванию (расширение)'       | 'Success' |
			| 'И в таблице "Список" текущего окна я устанавливаю сортировку по колонке "Наименование" по возрастанию (расширение)' | 'Success' |
		
				
		
		

	* Закрытие клиента тестирования
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
		
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'

