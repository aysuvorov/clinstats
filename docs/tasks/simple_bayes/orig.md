# Решение

В основе теоремы Байеса лежит философская идея о том, что мы не можем узнать истинную вероятность некоего события, однако мы можем постоянно уточнять наши представления о ней. Такое уточнение позволяет со временем приблизиться к истинной вероятности. 

$P(A|B) = \frac{P(B|A) \times P(A)}{P(B)}$, где

- $P(A)$ — априорная вероятность события A (насколько событие вообще вероятно);
- $P(A|B)$ — вероятность события A при условии наступлении события B (апостериорная вероятность);
- $P(B|A)$ — вероятность наступления события B при истинности события A;
- $P(B)$ — полная вероятность наступления события B.

Наибольшей трудностью является оценка априорной вероятности. иногда крайне непонятно, как ее оценить, и откуда брать данные.

*Априорная вероятность* - это вероятность событию при отсутствии знания, поддерживающего его наступление.

Мы идем на работу и встречаем инопланетянина.

![](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUVKnGd8QnSeJtUrtXbZ4OA6_lu_iuLSHbpA&usqp=CAU)

И мы думаем - а завтра, завтра я встречу инопланетянина? Или он улетит домой к инопланетной жене? Наверное, улетит - жене надо и дров помочь наколоть, и воды наносить. Значит, вероятность низкая. 

*Апостериорная вероятность* – это условная вероятность события, после принятия во внимание некоторой новой, связанной с ним информацией. 

На следующий день мы снова встретили инопланетянина. И в течение полугода его встречаем каждый день. Мы уже к нему привыкли, и, более того, иногда даже не замечаем его на улице. Вероятность того, что мы встретим его на следующий день, будет выше, чем априорная вероятность?

Разберем нашу задачу. 

## Часть 1

Пришел пациент, тест положительный. Инфаркт, наверное. Нам нужна априорная вероятность. Мы знаем вероятность развития инфаркта в популяции и будем считать ее *априорной*, $Р(A) = 0,001$. 

Если у пациента действительно инфаркт, тест будет положителен с вероятностью $P = 0,99$, и ложноотрицательным с вероятностью $P = 0,01$.

Если у пациента инфаркта нет, вероятность этого события $Р = 1 - 0,001 = 0,999$. И среди таких пациентов с вероятностью $P = 0,01$ будет ложноположительный тест на инфаркт. Отрицательный тест в этой группе будет выявлен с вероятностью $P = 0,99$.

Нарисуем это.

[![](https://mermaid.ink/img/eyJjb2RlIjoiZmxvd2NoYXJ0IExSXG4gICAgQVvQn9Cw0YbQuNC10L3Rgl0gLS0g0KAgPSAwLDAwMSAtLT4gQlvQmNC80LXQtdGCINC40L3RhNCw0YDQutGCXTtcbiAgICBBW9Cf0LDRhtC40LXQvdGCXSAtLSDQoCA9IDAsOTk5IC0tPiDQoVvQndC1INC40LzQtdC10YIg0LjQvdGE0LDRgNC60YJdO1xuICAgIEJb0JjQvNC10LXRgiDQuNC90YTQsNGA0LrRgl0gLS0g0KAgPSAwLDk5IC0tPiBEW9Cf0L7Qu9C-0LbQuNGC0LXQu9GM0L3Ri9C5INGC0LXRgdGCXVxuICAgIEJb0JjQvNC10LXRgiDQuNC90YTQsNGA0LrRgl0gLS0g0KAgPSAwLDAxIC0tPiBFW9Ce0YLRgNC40YbQsNGC0LXQu9GM0L3Ri9C5INGC0LXRgdGCXVxuICAgINChW9Cd0LUg0LjQvNC10LXRgiDQuNC90YTQsNGA0LrRgl0gLS0g0KAgPSAwLDAxIC0tPiBGW9Cf0L7Qu9C-0LbQuNGC0LXQu9GM0L3Ri9C5INGC0LXRgdGCXVxuICAgINChW9Cd0LUg0LjQvNC10LXRgiDQuNC90YTQsNGA0LrRgl0gLS0g0KAgPSAwLDk5IC0tPiBHW9Ce0YLRgNC40YbQsNGC0LXQu9GM0L3Ri9C5INGC0LXRgdGCXSIsIm1lcm1haWQiOnsidGhlbWUiOiJkZWZhdWx0In0sInVwZGF0ZUVkaXRvciI6ZmFsc2UsImF1dG9TeW5jIjp0cnVlLCJ1cGRhdGVEaWFncmFtIjpmYWxzZX0)](https://mermaid.live/edit#eyJjb2RlIjoiZmxvd2NoYXJ0IExSXG4gICAgQVvQn9Cw0YbQuNC10L3Rgl0gLS0g0KAgPSAwLDAwMSAtLT4gQlvQmNC80LXQtdGCINC40L3RhNCw0YDQutGCXTtcbiAgICBBW9Cf0LDRhtC40LXQvdGCXSAtLSDQoCA9IDAsOTk5IC0tPiDQoVvQndC1INC40LzQtdC10YIg0LjQvdGE0LDRgNC60YJdO1xuICAgIEJb0JjQvNC10LXRgiDQuNC90YTQsNGA0LrRgl0gLS0g0KAgPSAwLDk5IC0tPiBEW9Cf0L7Qu9C-0LbQuNGC0LXQu9GM0L3Ri9C5INGC0LXRgdGCXVxuICAgIEJb0JjQvNC10LXRgiDQuNC90YTQsNGA0LrRgl0gLS0g0KAgPSAwLDAxIC0tPiBFW9Ce0YLRgNC40YbQsNGC0LXQu9GM0L3Ri9C5INGC0LXRgdGCXVxuICAgINChW9Cd0LUg0LjQvNC10LXRgiDQuNC90YTQsNGA0LrRgl0gLS0g0KAgPSAwLDAxIC0tPiBGW9Cf0L7Qu9C-0LbQuNGC0LXQu9GM0L3Ri9C5INGC0LXRgdGCXVxuICAgINChW9Cd0LUg0LjQvNC10LXRgiDQuNC90YTQsNGA0LrRgl0gLS0g0KAgPSAwLDk5IC0tPiBHW9Ce0YLRgNC40YbQsNGC0LXQu9GM0L3Ri9C5INGC0LXRgdGCXSIsIm1lcm1haWQiOiJ7XG4gIFwidGhlbWVcIjogXCJkZWZhdWx0XCJcbn0iLCJ1cGRhdGVFZGl0b3IiOmZhbHNlLCJhdXRvU3luYyI6dHJ1ZSwidXBkYXRlRGlhZ3JhbSI6ZmFsc2V9)

### Расчеты

- $P(A)$ — априорная вероятность наличия инфаркта: 0,001;
- $P(A|B)$ — вероятность наличия инфаркта при условии положительного теста: ее мы и находим;
- $P(B|A)$ — вероятность положительного теста у пациентов с инфарктом: 0.99;
- $P(B)$ — полная вероятность положительного теста.

Полная вероятность $P(B)$ положительного теста складывается из:
- условной вероятности положительного теста среди пациентов с инфарктом $P(A)\times P(B|A) = 0,001 \times 0,99 = 0,00099$ ;
- условной вероятности ложноположительного теста, когда у пациента инфаркта нет: $P(-A)\times P(B|-A) = 0,999 \times 0,01 = 0,00999$.

В сумме $P(B) = 0,01098$.
Подставляем значения в формулу и получаем:

$P(A|B) = \frac{P(B|A) \times P(A)}{P(B)} = \
\frac{0,99 \times 0,001}{0,01098} \approx 0,09016$

## Часть 2

У нас есть один положительный тест, и мы знаем, что вероятность наличия инфаркта у пациента составляет в таком случае 9,016%.

Это и есть *апостериорная* вероятность. 

И вот, пациент получает второй положительный тест. Наши гипотезы теперь поменялись!

[![](https://mermaid.ink/img/eyJjb2RlIjoiZmxvd2NoYXJ0IExSXG4gICAgQVvQn9Cw0YbQuNC10L3Rgl0gLS0g0KAgPSAwLDA5IC0tPiBCW9CY0LzQtdC10YIg0LjQvdGE0LDRgNC60YJdO1xuICAgIEFb0J_QsNGG0LjQtdC90YJdIC0tINCgID0gMCw5MSAtLT4g0KFb0J3QtSDQuNC80LXQtdGCINC40L3RhNCw0YDQutGCXTtcbiAgICBCW9CY0LzQtdC10YIg0LjQvdGE0LDRgNC60YJdIC0tINCgID0gMCw5OSAtLT4gRFvQn9C-0LvQvtC20LjRgtC10LvRjNC90YvQuSDRgtC10YHRgl1cbiAgICBCW9CY0LzQtdC10YIg0LjQvdGE0LDRgNC60YJdIC0tINCgID0gMCwwMSAtLT4gRVvQntGC0YDQuNGG0LDRgtC10LvRjNC90YvQuSDRgtC10YHRgl1cbiAgICDQoVvQndC1INC40LzQtdC10YIg0LjQvdGE0LDRgNC60YJdIC0tINCgID0gMCwwMSAtLT4gRlvQn9C-0LvQvtC20LjRgtC10LvRjNC90YvQuSDRgtC10YHRgl1cbiAgICDQoVvQndC1INC40LzQtdC10YIg0LjQvdGE0LDRgNC60YJdIC0tINCgID0gMCw5OSAtLT4gR1vQntGC0YDQuNGG0LDRgtC10LvRjNC90YvQuSDRgtC10YHRgl0iLCJtZXJtYWlkIjp7InRoZW1lIjoiZGVmYXVsdCJ9LCJ1cGRhdGVFZGl0b3IiOmZhbHNlLCJhdXRvU3luYyI6dHJ1ZSwidXBkYXRlRGlhZ3JhbSI6ZmFsc2V9)](https://mermaid.live/edit#eyJjb2RlIjoiZmxvd2NoYXJ0IExSXG4gICAgQVvQn9Cw0YbQuNC10L3Rgl0gLS0g0KAgPSAwLDA5IC0tPiBCW9CY0LzQtdC10YIg0LjQvdGE0LDRgNC60YJdO1xuICAgIEFb0J_QsNGG0LjQtdC90YJdIC0tINCgID0gMCw5MSAtLT4g0KFb0J3QtSDQuNC80LXQtdGCINC40L3RhNCw0YDQutGCXTtcbiAgICBCW9CY0LzQtdC10YIg0LjQvdGE0LDRgNC60YJdIC0tINCgID0gMCw5OSAtLT4gRFvQn9C-0LvQvtC20LjRgtC10LvRjNC90YvQuSDRgtC10YHRgl1cbiAgICBCW9CY0LzQtdC10YIg0LjQvdGE0LDRgNC60YJdIC0tINCgID0gMCwwMSAtLT4gRVvQntGC0YDQuNGG0LDRgtC10LvRjNC90YvQuSDRgtC10YHRgl1cbiAgICDQoVvQndC1INC40LzQtdC10YIg0LjQvdGE0LDRgNC60YJdIC0tINCgID0gMCwwMSAtLT4gRlvQn9C-0LvQvtC20LjRgtC10LvRjNC90YvQuSDRgtC10YHRgl1cbiAgICDQoVvQndC1INC40LzQtdC10YIg0LjQvdGE0LDRgNC60YJdIC0tINCgID0gMCw5OSAtLT4gR1vQntGC0YDQuNGG0LDRgtC10LvRjNC90YvQuSDRgtC10YHRgl0iLCJtZXJtYWlkIjoie1xuICBcInRoZW1lXCI6IFwiZGVmYXVsdFwiXG59IiwidXBkYXRlRWRpdG9yIjpmYWxzZSwiYXV0b1N5bmMiOnRydWUsInVwZGF0ZURpYWdyYW0iOmZhbHNlfQ)
 
### Расчеты

- $P(A)$ — апостериорная вероятность наличия инфаркта: 0,09;
- $P(A|B)$ — вероятность наличия инфаркта при условии 2-го положительного теста: ее мы и находим;
- $P(B|A)$ — вероятность положительного теста у пациентов с инфарктом: 0.99;
- $P(B)$ — полная вероятность положительного теста.

Полная вероятность $P(B)$ положительного теста теперь складывается из:
- условной вероятности положительного теста среди пациентов с инфарктом $P(A)\times P(B|A) = 0,09 \times 0,99 = 0,0891$ ;
- условной вероятности ложноположительного теста, когда у пациента инфаркта нет: $P(-A)\times P(B|-A) = 0,91 \times 0,01 = 0,0091$.

В сумме $P(B) = 0,0982$.
Подставляем значения в формулу и получаем:

$P(A|B) = \frac{P(B|A) \times P(A)}{P(B)} = \
\frac{0,99 \times 0,09}{0,0982} \approx 0,907$











 




