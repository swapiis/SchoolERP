# TimeTable Helper
module TimeTablesHelper
  def collect_batch
    @batches.collect { |b| [b.full_name, b.id] }
  end

  def collect_week_batch
    @weekdays.collect { |b| [b.full_name, b.id] }
  end

  def classtiming_not_found!
    return unless  @class_timings.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end

  def weekday_batch(batch, day)
    weekday = Weekday.where(batch_id: batch.id, weekday: day).take
    weekday
  end

  def timetable_error!
    return if  @time_table.errors.empty?
    messages = @time_table.errors.full_messages.map \
    { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def edit_time_not_found!
    return unless  @timetables.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end

  def collect_time_table
    @timetables.collect { |t| [t.full_time, t.id] }
  end

  def collect_time_batch
    @batches.uniq.collect { |b| [b.full_name, b.id] }
  end

  def teacher_time_table(emp, class_timing, weekday, timetable)
    TimeTableEntry.where(employee_id: emp.id \
      , class_timing_id: class_timing.id, weekday_id: weekday.id\
      , time_table_id: timetable).take
  end

  def time_table_id(time)
    TimeTableEntry.where(time_table_id: time.id)
  end

  def class_timing_id(t)
    ClassTiming.find(t.class_timing_id)
  end

  def institutional_time_table(time)
    TimeTableEntry.where(class_timing_id: time.class_timing_id\
        , weekday_id: time.weekday_id, time_table_id: time.time_table).take
  end

  def teacher_timetable_not_found!
    return unless @time.empty?
    html = <<-HTML
      <h4 align="center">No timetable entries found</h4>
    HTML
    html.html_safe
  end

  def timetable_collect
    @timetables.uniq.collect { |t| [t.full_time, t.id] }
  end
end
