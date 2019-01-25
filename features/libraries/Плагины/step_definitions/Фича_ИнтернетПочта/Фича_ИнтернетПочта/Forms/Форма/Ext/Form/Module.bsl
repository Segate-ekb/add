﻿
#Область Служебные_функции_и_процедуры

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//пример вызова Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ПользовательSMTP(Парам01)",
		"ПользовательSMTP",
		"Допустим пользователь SMTP 'user@localhost'",
		"Установка имени пользователя для сервера SMTP",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯОтправляюПисьмоОтИмениПоАдресуСТемой(Парам01,Парам02,Парам03)",
		"ЯОтправляюПисьмоОтИмениПоАдресуСТемой",
		"И Я отправляю письмо от имени 'user@localhost' по адресу 'user@localhost' с темой 'test'","","");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ПользовательIMAP(Парам01)",
		"ПользовательIMAP",
		"Допустим пользователь IMAP 'user@localhost'",
		"Установка имени пользователя для сервера SMTP",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯСоздаюЯщик(Парам01)",
		"ЯСоздаюЯщик",
		"Тогда я создаю ящик 'SENT'",
		"Создает почтовый ящик по заданному имени",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯОчищаюЯщикОтСообщений(Парам01)",
		"ЯОчищаюЯщикОтСообщений",
		"Тогда я очищаю ящик 'SENT' от сообщений",
		"Удаляет все сообщения из почтового ящика",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ВЯщикеЕстьСообщения(Парам01, Парам02)",
		"ВЯщикеЕстьСообщения",
		"Тогда в ящике 'SENT' есть сообщения",
		"Проверяет, что есть сообщения ящике и сохраняет их в переменную Контекст",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ВЯщикеЕстьНовыеСообщения(Парам01)",
		"ВЯщикеЕстьНовыеСообщения",
		"Тогда в ящике 'SENT' есть новые сообщения",
		"Проверяет, что есть новые сообщения и сохраняет их в переменную Контекст",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ВЯщикеЕстьСообщенияСТемой(Парам01, Парам02)",
		"ВЯщикеЕстьСообщенияСТемой",
		"Тогда в ящике 'SENT' есть сообщения с темой 'Тема'",
		"Проверяет, что есть сообщения с указанными словами в Теме",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ВЯщикеЕстьСообщенияСТекстом(Парам01, Парам02)",
		"ВЯщикеЕстьСообщенияСТекстом",
		"Тогда в ящике 'SENT' есть сообщения с текстом 'Текст'",
		"Проверяет, что есть сообщения с указанными словами в Тексте",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ВЯщикеЕстьСообщенияОт(Парам01, Парам02)",
		"ВЯщикеЕстьСообщенияОт",
		"Тогда в ящике 'SENT' есть сообщения от 'Отправитель'",
		"Проверяет, что есть сообщения от определенного адреса",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ВЯщикеЕстьСообщенияДля(Парам01, Парам02)",
		"ВЯщикеЕстьСообщенияДля",
		"Тогда в ящике 'SENT' есть сообщения для 'Получатель'",
		"Проверяет, что есть сообщения для определенного адреса",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ТемойСообщения(Парам01)",
		"ТемойСообщения",
		"И темой сообщения 'Тема'",
		"Используется для уточения отбора по Теме сообщения",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ТекстомСообщения(Парам01)",
		"ТекстомСообщения",
		"И текстом сообщения 'Текст'",
		"Используется для уточения отбора по Тексту сообщения",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"СообщенияОт(Парам01)",
		"СообщенияОт",
		"И сообщения от 'Отправитель'",
		"Используется для уточения отбора по отправителю сообщения",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"СообщенияДля(Парам01)",
		"СообщенияДля",
		"И сообщения для 'Получатель'",
		"Используется для уточения отбора по получателю сообщения",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЗаголовкомСообщения(Парам01)",
		"ЗаголовкомСообщения",
		"И заголовком сообщения 'Заголовок'",
		"Используется для уточения отбора по заголовку сообщения",
		"Плагины.ИнтернетПочта");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯОтключаюсьОтПочтовогоСервера()",
		"ЯОтключаюсьОтПочтовогоСервера",
		"Тогда я отключаюсь от почтового сервера",
		"Отключается от почтового сервера",
		"Плагины.ИнтернетПочта");
	
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

#КонецОбласти

#Область Работа_со_сценариями

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
	ОтключитьсяОтИнтернетПочты();
	
КонецПроцедуры

#КонецОбласти

#Область Вспомогательные_процедуры

&НаКлиенте
Процедура ИнициализироватьИнтернетПочтовыйПрофиль()
	
	Если КонтекстСохраняемый.Свойство("ИнтернетПочтовыйПрофиль") Тогда
		Возврат;
	КонецЕсли;
	
	Профиль = Новый ИнтернетПочтовыйПрофиль;
	Профиль.АдресСервераIMAP = "localhost";
	Профиль.АдресСервераSMTP  = "localhost";
	Профиль.ИспользоватьSSLSMTP = Истина;
	Профиль.ИспользоватьSSLIMAP = Истина;
	
	КонтекстСохраняемый.Вставить("ИнтернетПочтовыйПрофиль", Профиль);
	
КонецПроцедуры

&НаКлиенте
Процедура ПодключитьсяКИнтернетПочте()
	
	#Если Не ВебКлиент Тогда
		
	Если Контекст.Свойство("ИнтернетПочта") Тогда
		Возврат;
	КонецЕсли;
	
	ИнтернетПочта = Новый ИнтернетПочта();
	ИнтернетПочта.Подключиться(КонтекстСохраняемый.ИнтернетПочтовыйПрофиль, ПротоколИнтернетПочты.IMAP);
	
	Контекст.Вставить("ИнтернетПочта", ИнтернетПочта);
	
	#КонецЕсли
	
КонецПроцедуры

&НаКлиенте
Процедура ОтключитьсяОтИнтернетПочты()
	
	#Если Не ВебКлиент Тогда
		
	Если Не Контекст.Свойство("ИнтернетПочта") Тогда
		Возврат;
	КонецЕсли;
	
	Контекст.ИнтернетПочта.Отключиться();
	Контекст.Удалить("ИнтернетПочта");
	
	#КонецЕсли
	
КонецПроцедуры

&НаКлиенте
Процедура ОчиститьПараметрыОтбора()
	
	ИнициализироватьПараметрыОтбора();
	Контекст.ПараметрыОтбора.Очистить();
	
КонецПроцедуры

&НаКлиенте
Процедура ДополнитьПараметрыОтбора(Ключ, Значение)
	
	ИнициализироватьПараметрыОтбора();
	Контекст.ПараметрыОтбора.Вставить(Ключ, Значение);
	
КонецПроцедуры

&НаКлиенте
Процедура ИнициализироватьПараметрыОтбора()
	
	Если Не Контекст.Свойство("ПараметрыОтбора") Тогда
		Контекст.Вставить("ПараметрыОтбора", Новый Структура);
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Функция ПолучитьЗаголовки()
	
	ИнициализироватьИнтернетПочтовыйПрофиль();
	ПодключитьсяКИнтернетПочте();
	ИнициализироватьПараметрыОтбора();
	Контекст.ИнтернетПочта.ТекущийПочтовыйЯщик = Контекст.ТекущийПочтовыйЯщик;
	
	Результат = Контекст.ИнтернетПочта.ПолучитьЗаголовки(Контекст.ПараметрыОтбора);
	
	Возврат Результат;
	
КонецФункции

&НаКлиенте
Процедура ВалидироватьРезультатЗапросаПисем(ЗаголовкиПисем)
	
	#Если Не ВебКлиент Тогда
	Ванесса.ПроверитьТип(ЗаголовкиПисем, Тип("Массив"));
	Ванесса.ПроверитьБольше(ЗаголовкиПисем.Количество(), 0, "В ящике должны быть сообщения");
	
	Контекст.Вставить("ЗаголовкиПисем", ЗаголовкиПисем);
	#КонецЕсли
	
КонецПроцедуры

&НаКлиенте
Процедура ОтфильтроватьПисьмаПоПолю(Поле, Значение)
	
	ЗаголовкиПисем = Контекст.ЗаголовкиПисем;
	
	Сч = 0;
	Пока Сч < ЗаголовкиПисем.Количество() Цикл
		ТекЗаголовок = ЗаголовкиПисем.Получить(Сч);
		
		Если СтрНайти(ТекЗаголовок[Поле], Значение) = 0 Тогда
			ЗаголовкиПисем.Удалить(Сч);
		Иначе
			Сч = Сч + 1;
		КонецЕсли;
	КонецЦикла;
	
КонецПроцедуры

&НаКлиенте
Процедура ОтфильтроватьПисьмаПоОтправителю(Значение)
	
	ЗаголовкиПисем = Контекст.ЗаголовкиПисем;
	
	Сч = 0;
	Пока Сч < ЗаголовкиПисем.Количество() Цикл
		ТекЗаголовок = ЗаголовкиПисем.Получить(Сч);
		
		Если СтрНайти(ПредставлениеПочтовогоАдреса(ТекЗаголовок.Отправитель), Значение) = 0 Тогда
			ЗаголовкиПисем.Удалить(Сч);
		Иначе
			Сч = Сч + 1;
		КонецЕсли;
	КонецЦикла;
	
КонецПроцедуры

&НаКлиенте
Процедура ОтфильтроватьПисьмаПоПолучателю(Значение)
	
	ЗаголовкиПисем = Контекст.ЗаголовкиПисем;
	
	Сч = 0;
	Пока Сч < ЗаголовкиПисем.Количество() Цикл
		ТекЗаголовок = ЗаголовкиПисем.Получить(Сч);
		
		Если АдресНайденВСпискеПолучателей(ТекЗаголовок.Получатели, Значение) Тогда
			Сч = Сч + 1;
		Иначе
			ЗаголовкиПисем.Удалить(Сч);
		КонецЕсли;
	КонецЦикла;
	
КонецПроцедуры

&НаКлиенте
Функция АдресНайденВСпискеПолучателей(Получатели, ПочтовыйАдрес)
	
	Для Каждого ТекПолучатель Из Получатели Цикл
		
		Если СтрНайти(ПредставлениеПочтовогоАдреса(ТекПолучатель), ПочтовыйАдрес) > 0 Тогда
			Возврат Истина;
		КонецЕсли;
		
	КонецЦикла;
	
	Возврат Ложь;
	
КонецФункции

&НаКлиенте
Функция ПредставлениеПочтовогоАдреса(ПочтовыйАдрес)
	
	Если ТипЗнч(ПочтовыйАдрес) = Тип("Строка") Тогда
		Возврат ПочтовыйАдрес;
	КонецЕсли;
	
	Если ТипЗнч(ПочтовыйАдрес) = Тип("ИнтернетПочтовыйАдрес") Тогда
		Возврат СтрШаблон("%1 %2", ПочтовыйАдрес.ОтображаемоеИмя, ПочтовыйАдрес.Адрес);
	КонецЕсли;
	
	Возврат "";
	
КонецФункции

&НаКлиенте
Функция ОтфильтроватьПисьмаПоТекстуСообщения(Текст)
	
	ЗаголовкиПисем = Контекст.ЗаголовкиПисем;
	
	Сч = 0;
	Пока Сч < ЗаголовкиПисем.Количество() Цикл
		ТекЗаголовок = ЗаголовкиПисем.Получить(Сч);
		
		Если ТекстНайденВПисьме(ТекЗаголовок, Текст) Тогда
			Сч = Сч + 1;
		Иначе
			ЗаголовкиПисем.Удалить(Сч);
		КонецЕсли;
	КонецЦикла;
	
КонецФункции

&НаКлиенте
// Здесь идёт запрос к IMAP-серверу, т.к. в заголовках не содержится текст письма
Функция ТекстНайденВПисьме(ЗаголовокПисьма, Текст)
	
	ПараметрЗаголовки = Новый Массив;
	ПараметрЗаголовки.Добавить(ЗаголовокПисьма);
	
	ПочтовоеСообщение = Контекст.ИнтернетПочта.Выбрать(Ложь, ПараметрЗаголовки);
	Если Не ЗначениеЗаполнено(ПочтовоеСообщение) Тогда
		Возврат Ложь;
	КонецЕсли;
	
	Для Каждого ТекТекст Из ПочтовоеСообщение[0].Тексты Цикл
		Если СтрНайти(ТекТекст.Текст, Текст) > 0 Тогда
			Возврат Истина;
		КонецЕсли;
	КонецЦикла;
	
	Возврат Ложь;
	
КонецФункции

#КонецОбласти

///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Допустим пользователь SMTP 'user@localhost'
//@ПользовательSMTP(Парам01)
Процедура ПользовательSMTP(Парам01) Экспорт
	
	ИнициализироватьИнтернетПочтовыйПрофиль();
	КонтекстСохраняемый.ИнтернетПочтовыйПрофиль.ПользовательSMTP = Парам01;
	КонтекстСохраняемый.ИнтернетПочтовыйПрофиль.ПарольSMTP = Парам01
	
КонецПроцедуры

&НаКлиенте
//И Я отправляю письмо от имени 'user@localhost' по адресу 'user@localhost' с темой 'test'
//@ЯОтправляюПисьмоОтИмениПоАдресуСТемой(Парам01,Парам02,Парам03)
Процедура ЯОтправляюПисьмоОтИмениПоАдресуСТемой(Парам01, Парам02, Парам03) Экспорт
	
	ИнициализироватьИнтернетПочтовыйПрофиль();
	ПодключитьсяКИнтернетПочте();
	НовоеПочтовоеСообщение = Новый ИнтернетПочтовоеСообщение;
	НовоеПочтовоеСообщение.Отправитель = Парам01;
	НовоеПочтовоеСообщение.Получатели.Добавить(Парам02);
	НовоеПочтовоеСообщение.Тема = Парам03;
	Результат = Контекст.ИнтернетПочта.Послать(НовоеПочтовоеСообщение);
	
КонецПроцедуры

&НаКлиенте
//Допустим пользователь IMAP 'user@localhost'
//@ПользовательIMAP(Парам01)
Процедура ПользовательIMAP(Парам01) Экспорт
	
	ИнициализироватьИнтернетПочтовыйПрофиль();
	КонтекстСохраняемый.ИнтернетПочтовыйПрофиль.ПользовательIMAP = Парам01;
	КонтекстСохраняемый.ИнтернетПочтовыйПрофиль.ПарольIMAP = Парам01
	
КонецПроцедуры

&НаКлиенте
//Тогда я создаю ящик 'SENT'
//@ЯСоздаюЯщик(Парам01)
Процедура ЯСоздаюЯщик(Парам01) Экспорт
	
	ИнициализироватьИнтернетПочтовыйПрофиль();
	ПодключитьсяКИнтернетПочте();
	Для Каждого ТекЯщик Из Контекст.ИнтернетПочта.ПолучитьПочтовыеЯщики() Цикл
		Если ТекЯщик = Парам01 Тогда
			Возврат;
		КонецЕсли;
	КонецЦикла;
	Контекст.ИнтернетПочта.СоздатьПочтовыйЯщик(Парам01);
	
КонецПроцедуры

&НаКлиенте
//Тогда я очищаю ящик 'SENT' от сообщений
//@ЯОчищаюЯщикОтСообщений(Парам01)
Процедура ЯОчищаюЯщикОтСообщений(Парам01) Экспорт
	
	ИнициализироватьИнтернетПочтовыйПрофиль();
	ПодключитьсяКИнтернетПочте();
	Контекст.Вставить("ТекущийПочтовыйЯщик", Парам01);
	ОчиститьПараметрыОтбора();
	ЗаголовкиПисем = ПолучитьЗаголовки();
	Контекст.ИнтернетПочта.УдалитьСообщения(ЗаголовкиПисем);
	Контекст.ИнтернетПочта.ОчиститьУдаленныеСообщения();
	
КонецПроцедуры

&НаКлиенте
//Тогда в ящике 'SENT' есть сообщения
//@ВЯщикеЕстьСообщения(Парам01)
Процедура ВЯщикеЕстьСообщения(Парам01) Экспорт
	
	Контекст.Вставить("ТекущийПочтовыйЯщик", Парам01);
	ЗаголовкиПисем = ПолучитьЗаголовки();
	ВалидироватьРезультатЗапросаПисем(ЗаголовкиПисем);
	
КонецПроцедуры

&НаКлиенте
//Тогда в ящике 'SENT' есть новые сообщения
//@ВЯщикеЕстьНовыеСообщения(Парам01)
Процедура ВЯщикеЕстьНовыеСообщения(Парам01) Экспорт
	
	Контекст.Вставить("ТекущийПочтовыйЯщик", Парам01);
	ДополнитьПараметрыОтбора("Новые", Истина); 
	ЗаголовкиПисем = ПолучитьЗаголовки();
	ВалидироватьРезультатЗапросаПисем(ЗаголовкиПисем);
	
КонецПроцедуры

&НаКлиенте
//Тогда в ящике 'SENT' есть сообщения с темой 'Тема'
//@ВЯщикеЕстьСообщенияСТемой(Парам01, Парам02)
Процедура ВЯщикеЕстьСообщенияСТемой(Парам01, Парам02) Экспорт
	
	Контекст.Вставить("ТекущийПочтовыйЯщик", Парам01);
	ДополнитьПараметрыОтбора("Тема", Парам02); 
	ЗаголовкиПисем = ПолучитьЗаголовки();
	ВалидироватьРезультатЗапросаПисем(ЗаголовкиПисем);
	
КонецПроцедуры

&НаКлиенте
//Тогда в ящике 'SENT' есть сообщения с текстом 'Текст'
//@ВЯщикеЕстьСообщенияСТекстом(Парам01, Парам02)
Процедура ВЯщикеЕстьСообщенияСТекстом(Парам01, Парам02) Экспорт
	
	Контекст.Вставить("ТекущийПочтовыйЯщик", Парам01);
	ДополнитьПараметрыОтбора("Текст", Парам02); 
	ЗаголовкиПисем = ПолучитьЗаголовки();
	ВалидироватьРезультатЗапросаПисем(ЗаголовкиПисем);
	
КонецПроцедуры

&НаКлиенте
//Тогда в ящике 'SENT' есть сообщения от 'Отправитель'
//@ВЯщикеЕстьСообщенияОт(Парам01, Парам02)
Процедура ВЯщикеЕстьСообщенияОт(Парам01, Парам02) Экспорт
	
	Контекст.Вставить("ТекущийПочтовыйЯщик", Парам01);
	ДополнитьПараметрыОтбора("Отправитель", Парам02); 
	ЗаголовкиПисем = ПолучитьЗаголовки();
	ВалидироватьРезультатЗапросаПисем(ЗаголовкиПисем);
	
КонецПроцедуры

&НаКлиенте
//Тогда в ящике 'SENT' есть сообщения для 'Получатель'
//@ВЯщикеЕстьСообщенияДля(Парам01, Парам02)
Процедура ВЯщикеЕстьСообщенияДля(Парам01, Парам02) Экспорт
	
	Контекст.Вставить("ТекущийПочтовыйЯщик", Парам01);
	ДополнитьПараметрыОтбора("Получатели", Парам02); 
	ЗаголовкиПисем = ПолучитьЗаголовки();
	ВалидироватьРезультатЗапросаПисем(ЗаголовкиПисем);
	
КонецПроцедуры

&НаКлиенте
//И темой сообщения 'Тема'
//@ТемойСообщения(Парам01)
Процедура ТемойСообщения(Парам01) Экспорт
	
	ОтфильтроватьПисьмаПоПолю("Тема", Парам01);
	Ванесса.ПроверитьБольше(Контекст.ЗаголовкиПисем.Количество(), 0);
	
КонецПроцедуры

&НаКлиенте
//И текстом сообщения 'Текст'
//@ТекстомСообщения(Парам01)
Процедура ТекстомСообщения(Парам01) Экспорт
	
	ОтфильтроватьПисьмаПоТекстуСообщения(Парам01);
	Ванесса.ПроверитьБольше(Контекст.ЗаголовкиПисем.Количество(), 0);
	
КонецПроцедуры

&НаКлиенте
//И сообщения от 'Отправитель'
//@СообщенияОт(Парам01)
Процедура СообщенияОт(Парам01) Экспорт
	
	ОтфильтроватьПисьмаПоОтправителю(Парам01);
	Ванесса.ПроверитьБольше(Контекст.ЗаголовкиПисем.Количество(), 0);
	
КонецПроцедуры

&НаКлиенте
//И сообщения для 'Получатель'
//@СообщенияДля(Парам01)
Процедура СообщенияДля(Парам01) Экспорт
	
	ОтфильтроватьПисьмаПоПолучателю(Парам01);
	Ванесса.ПроверитьБольше(Контекст.ЗаголовкиПисем.Количество(), 0);
	
КонецПроцедуры

&НаКлиенте
//И заголовком сообщения 'Заголовок'
//@ЗаголовкомСообщения(Парам01)
Процедура ЗаголовкомСообщения(Парам01) Экспорт
	
	ОтфильтроватьПисьмаПоПолю("Заголовок", Парам01);
	Ванесса.ПроверитьБольше(Контекст.ЗаголовкиПисем.Количество(), 0);
	
КонецПроцедуры

&НаКлиенте
//Тогда я отключаюсь от почтового сервера
//@ЯОтключаюсьОтПочтовогоСервера(Парам01)
Процедура ЯОтключаюсьОтПочтовогоСервера() Экспорт
	
	ОтключитьсяОтИнтернетПочты();
	
КонецПроцедуры
