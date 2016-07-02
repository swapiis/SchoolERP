module Activity
  extend ActiveSupport::Concern

  included do
    after_create :set_activity1
    after_update :set_activity2
  end

  private

  def set_activity1
    UserActivity.activity(self.class.name, id, 'created')
  end

  def set_activity2
    UserActivity.activity(self.class.name, id, 'updated')
  end
end
