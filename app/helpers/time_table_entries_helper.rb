# TimeTable Entries Helper
module TimeTableEntriesHelper
  def collect_batch
    @batches.collect { |b| [b.full_name, b.id] }
  end

  def collect_subject
    @subjects.collect { |b| [b.name, b.id] }
  end

  def present_time_table_entry(c, w, t)
    TimeTableEntry.where(class_timing_id: c.id, weekday_id: w.id\
      , time_table_id: t).take
  end

  def sub_not_found!
    return if @emp.empty?
    html = <<-HTML
     <div>
      <h5>
   Yet teachers are not assigned for this subject,Assign from Work Allotment
   </h5>
    </div>
    HTML
    html.html_safe
  end
end
