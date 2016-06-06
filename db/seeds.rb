require 'roo'
ex = Roo::Spreadsheet.open("#{Rails.root}/public/database.xlsx")
p 'Course database being created.... Wait'
ex.default_sheet = ex.sheets[0]
3.upto(50) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  Course.create(course_name: a, section_name: b, code: c)
  p "Record created....#{line}"
end
p 'Course database created suceessfully...'
p 'Batch database being created.... Wait'
ex.default_sheet = ex.sheets[1]
3.upto(200) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  d = ex.cell(line, 'D')
  Batch.create(name: a, start_date: b, end_date: c, course_id: d)
  p "Record created....#{line}"
end
p 'Batch database created suceessfully...'
p 'Category database being created.... Wait'
ex.default_sheet = ex.sheets[2]
3.upto(20) do |line|
  a = ex.cell(line, 'A')
  Category.create(name: a)
  p "Record created....#{line}"
end
p 'Category database created suceessfully...'
p 'Subject database being created.... Wait'
ex.default_sheet = ex.sheets[3]
3.upto(1200) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  d = ex.cell(line, 'D')
  e = ex.cell(line, 'E')
  f = ex.cell(line, 'F')
  Subject.create(name: a.to_s, code: b.to_i, batch_id: c\
    , max_weekly_classes: d.to_i, elective_group_id: e, no_exams: f)
  p "Record created....#{line}"
end
p 'Subject database created suceessfully...'
p 'ElectiveGroup database being created.... Wait'
ex.default_sheet = ex.sheets[4]
3.upto(100) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  ElectiveGroup.create(name: a, batch_id: b)
  p "Record created....#{line}"
end
p 'ElectiveGroup database created suceessfully...'
p 'Student database being created.... Wait'
ex.default_sheet = ex.sheets[11]
3.upto(8002) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  d = ex.cell(line, 'D')
  e = ex.cell(line, 'E')
  f = ex.cell(line, 'F')
  g = ex.cell(line, 'G')
  h = ex.cell(line, 'H')
  i = ex.cell(line, 'I')
  j = ex.cell(line, 'J')
  k = ex.cell(line, 'K')
  l = ex.cell(line, 'L')
  m = ex.cell(line, 'M')
  n = ex.cell(line, 'N')
  o = ex.cell(line, 'O')
  p = ex.cell(line, 'P')
  q = ex.cell(line, 'Q')
  r = ex.cell(line, 'R')
  s = ex.cell(line, 'S')
  t = ex.cell(line, 'T')
  u = ex.cell(line, 'U')
  v = ex.cell(line, 'V')
  w = ex.cell(line, 'W')
  x = ex.cell(line, 'X')
  y = ex.cell(line, 'Y')
  z = ex.cell(line, 'Z')
  Student.create(first_name: a, middle_name: b, last_name: c\
    , gender: d, date_of_birth: e, birth_place: f, address_line1: g\
    ,	address_line2: h, email: i,	city: j, state: k, pin_code: l.to_i\
    ,	phone1: m.to_i, phone2: n.to_i, immediate_contact: o,	batch_id: p\
    , admission_no: q, class_roll_no: r, admission_date: s, blood_group: t\
    ,	nationality_id: u, language: v,	religion: w, category_id: x\
    , country_id: y, status_description: z)
  p "Record created....#{line}"
end
p 'Student database created suceessfully...'
p 'Guardian database being created.... Wait'
ex.default_sheet = ex.sheets[13]
3.upto(8600) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  d = ex.cell(line, 'D')
  e = ex.cell(line, 'E')
  f = ex.cell(line, 'F')
  g = ex.cell(line, 'G')
  h = ex.cell(line, 'H')
  i = ex.cell(line, 'I')
  j = ex.cell(line, 'J')
  k = ex.cell(line, 'K')
  l = ex.cell(line, 'L')
  m = ex.cell(line, 'M')
  n = ex.cell(line, 'N')
  o = ex.cell(line, 'O')
  p = ex.cell(line, 'P')
  q = ex.cell(line, 'Q')
  Guardian.create(student_id: a, first_name: b, last_name: c, relation: d\
    , email: e, office_phone1: f.to_i, office_phone2: g.to_i, mobile_phone: h\
    , office_address_line1: i, office_address_line2: j, city: k, state: l\
    , country_id: m, dob: n, occupation: o, income: p.to_i, education: q)
  p "Record created....#{line}"
end
p 'Guardian created suceessfully...'
p 'EmployeeCategory database being created.... Wait'
ex.default_sheet = ex.sheets[5]
3.upto(30) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  EmployeeCategory.create(name: a, prefix: b, status: c)
  p "Record created....#{line}"
end
p 'EmployeeCategory database created suceessfully...'
p 'EmployeeDepartment database being created.... Wait'
ex.default_sheet = ex.sheets[6]
3.upto(30) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  EmployeeDepartment.create(code: a, name: b, status: c)
  p "Record created....#{line}"
end
p 'EmployeeDepartment database created suceessfully...'
p 'EmployeeGrade database being created.... Wait'
ex.default_sheet = ex.sheets[7]
3.upto(30) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  d = ex.cell(line, 'D')
  e = ex.cell(line, 'E')
  EmployeeGrade.create(name: a, priority: b.to_i, status: c, max_hours_day: d.to_i, max_hours_week: e.to_i)
  p "Record created....#{line}"
end
p 'EmployeeGrade database created suceessfully...'
p 'PayrollCategory database being created.... Wait'
ex.default_sheet = ex.sheets[8]
3.upto(20) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  d = ex.cell(line, 'D')
  e = ex.cell(line, 'E')
  PayrollCategory.create(name: a, percentage: b, payroll_category_id: c, is_deduction: d, status: e)
  p "Record created....#{line}"
end
p 'PayrollCategory database created suceessfully...'
p 'PayrollPosition database being created.... Wait'
ex.default_sheet = ex.sheets[9]
3.upto(30) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  EmployeePosition.create(name: a, employee_category_id: b, status: c)
  p "Record created....#{line}"
end
p 'PayrollPosition database created suceessfully...'
p 'Employee database being created.... Wait'
ex.default_sheet = ex.sheets[10]
3.upto(105) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  d = ex.cell(line, 'D')
  e = ex.cell(line, 'E')
  f = ex.cell(line, 'F')
  g = ex.cell(line, 'G')
  h = ex.cell(line, 'H')
  i = ex.cell(line, 'I')
  j = ex.cell(line, 'J')
  k = ex.cell(line, 'K')
  l = ex.cell(line, 'L')
  m = ex.cell(line, 'M')
  n = ex.cell(line, 'N')
  o = ex.cell(line, 'O')
  p = ex.cell(line, 'P')
  q = ex.cell(line, 'Q')
  r = ex.cell(line, 'R')
  s = ex.cell(line, 'S')
  t = ex.cell(line, 'T')
  u = ex.cell(line, 'U')
  v = ex.cell(line, 'V')
  w = ex.cell(line, 'W')
  x = ex.cell(line, 'X')
  y = ex.cell(line, 'Y')
  z = ex.cell(line, 'Z')
  aa = ex.cell(line, 'AA')
  ab = ex.cell(line, 'AB')
  ac = ex.cell(line, 'AC')
  ad = ex.cell(line, 'AD')
  ae = ex.cell(line, 'AE')
  af = ex.cell(line, 'AF')
  ag = ex.cell(line, 'AG')
  ah = ex.cell(line, 'AH')
  ai = ex.cell(line, 'AI')
  aj = ex.cell(line, 'AJ')
  ak = ex.cell(line, 'AK')
  al = ex.cell(line, 'AL')
  am = ex.cell(line, 'AM')
  an = ex.cell(line, 'AN')
  Employee.create(employee_category_id: a, employee_number: b\
    , joining_date: c, first_name: d, middle_name: e, last_name: f\
    , gender: g, job_title: h, employee_position_id: i\
    , employee_department_id: j, reporting_manager_id: k\
    , employee_grade_id: l, qualification: m, experience_detail: n\
    , experience_year: o, experience_month: p, status: q\
    , status_description: r,	date_of_birth: s, marital_status: t\
    , father_name: u, mother_name: v, blood_group: w, country_id: x\
    ,	home_address_line1: y, home_address_line2: z, home_city: aa\
    , home_state: ab, home_country_id: ac, office_address_line1: ad\
    ,	office_address_line2: ae, office_city: af, office_state: ag\
    ,	office_country_id: ah, office_pin_code: ai.to_i, office_phone1: aj.to_i\
    , office_phone2: ak.to_i, mobile_phone: al, home_phone: am, email: an)
  p "Record created....#{line}"
end
p 'Employee database created suceessfully...'
p 'Newscast database being created.... Wait'
ex.default_sheet = ex.sheets[12]
3.upto(102) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  Newscast.create(user_id: a, title: b, content: c)
  p "Record created....#{line}"
end
p 'Newscast database created suceessfully...'
p 'Student subject database being created.... Wait'
ex.default_sheet = ex.sheets[14]
3.upto(40_100) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  StudentPreviousSubjectMark.create(student_id: a, subject: b, mark: c.to_i)
  p "Record created....#{line}"
end
p 'Student subject database created suceessfully...'
p 'Student previous data database being created.... Wait'
ex.default_sheet = ex.sheets[15]
3.upto(8100) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  d = ex.cell(line, 'D')
  e = ex.cell(line, 'E')
  StudentPreviousData.create(student_id: a, institution: b\
    , year: c.to_i, course: d, total_mark: e.to_i)
  p "Record created....#{line}"
end
p 'Student previous data database created suceessfully...'
p 'Grading level database being created.... Wait'
ex.default_sheet = ex.sheets[16]
3.upto(1000) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  d = ex.cell(line, 'D')
  GradingLevel.create(name: a, batch_id: b\
    , min_score: c.to_i, description: d)
  p "Record created....#{line}"
end
p 'GradingLevel database created suceessfully...'
p 'Class designation database being created.... Wait'
ex.default_sheet = ex.sheets[17]
3.upto(300) do |line|
  a = ex.cell(line, 'A')
  b = ex.cell(line, 'B')
  c = ex.cell(line, 'C')
  ClassDesignation.create(name: a, marks: b, course_id: c)
  p "Record created....#{line}"
end
p 'Class designation database created suceessfully...'
