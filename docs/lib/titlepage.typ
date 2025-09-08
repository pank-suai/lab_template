/* Титульный лист
   [title] - Название работы
   [authors] - Авторы работы
   [teachers] - Преподаватели или другие([position])
   [date] - Дата создания документа
   [education] - Название организации
   [department] - Факультет или институт
   [position] - Должность преподавателя
   [documentName] - Название документа (например "ОТЧЁТ")
   [group] - Название группы
   [city] - Город
   [object] - Предмет/курс
*/
#let titlepage(
  title: "",
  authors: (),
  teachers: (),
  date: datetime.today(),
  education: "Название организации",
  department: "Факультет",
  position: "преподаватель",
  documentName: "ОТЧЁТ ПО ЛАБОРАТОРНЫМ РАБОТАМ",
  group: "ГРУППА",
  city: "ГОРОД",
  object: "ПРЕДМЕТ",
) = {
  set text(font: "Times New Roman", size: 12pt, lang: "ru", hyphenate: false)
  set page(
    margin: (right: 15mm, left: 15mm, top: 20mm, bottom: 20mm),
    paper: "a4",
  )
  align(center, education)
  align(center, department)

  align(left, stack(dir: ltr, "ОТЧЁТ
ЗАЩИЩЁН С ОЦЕНКОЙ", align(bottom, line(
    length: 80pt,
    start: (5pt, 0pt),
  )))) // тут start = отступ
  v(5pt)
  align(left, "ПРЕПОДАВАТЕЛЬ")
  grid(
    columns: (1.5fr, 1fr, 1.5fr),
    row-gutter: 3pt,
    column-gutter: 10pt,
    align(center, position), "", align(center, teachers.join(", ")),
    line(length: 100%), line(length: 100%), line(length: 100%),
    align(center, text(0.9em, "должность, уч.степень, звание")),
    align(center, text(0.9em, "подпись, дата")),
    align(center, text(0.9em, "инициалы, фамилия")),
  )


  v(3fr)
  align(center, text(upper(documentName), size: 1.23em))
  v(0.8fr)
  align(center, stack(dir: ttb, text(title, size: 1.2em), v(5pt), align(
    bottom,
    line(length: 0%),
  )))
  v(0.8fr)
  align(center)[по курсу:]
  align(center)[#object]
  v(3fr)
  grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    column-gutter: 10pt,
    row-gutter: 3pt,
    grid.cell([РАБОТУ ВЫПОЛНИЛ], colspan: 2), text(2.5em, ""), "",

    "СТУДЕНТ гр №", align(center, group), "", align(center, authors.join(", ")),
    line(length: 0%),
    line(length: 100%),
    line(length: 100%),
    line(length: 100%),
    grid.cell(text(0.9em, ""), colspan: 2),
    align(center + top, text(0.9em, "подпись, дата")),
    align(center, text(0.9em, "инициалы, фамилия")),
  )
  v(3fr)
  align(center, stack(dir: ltr, city, h(10pt), str(date.year())))
}