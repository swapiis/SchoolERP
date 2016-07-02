# EmployeeAttendances Helper
module EmployeeAttendancesHelper
  def active_leave_not_found!
    return unless @active_leaves.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end

  def inactive_leave_not_found!
    return unless @inactive_leaves.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end

  def department_collect
    @deparments.collect { |d| [d.name, d.id] }
  end

  def emp_absent(employee, date)
    EmployeeAttendance.where(employee_id: employee.id, attendance_date: date)
      .take
  end

  def emp_leave_type
    EmployeeLeaveType.where(status: true).collect { |b| [b.name, b.id] }
  end

  def emp_leave_count(lt1, e)
    EmployeeLeave.where(employee_leave_type_id: lt1.id, employee_id: e.id)
  end

  def emp_report(e, lt1)
    EmployeeAttendance.where(employee_id: e.id, employee_leave_type_id: lt1.id)
  end

  def emp_leave_type_id(e)
    EmployeeLeaveType.find_by_id(e.employee_leave_type_id)
  end

  def emp_department_collect
    EmployeeDepartment.all.collect { |b| [b.name, b.id] }
  end

  def emp_category_collect
    EmployeeCategory.all.collect { |b| [b.name, b.id] }
  end

  def emp_position_collect
    EmployeePosition.all.collect { |b| [b.name, b.id] }
  end

  def emp_grade_collect
    EmployeeGrade.all.collect { |b| [b.name, b.id] }
  end
end
