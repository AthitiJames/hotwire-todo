every 1.day, at: '12:00 am' do
  runner "DueDateCheckerJob.perform_now"
end
