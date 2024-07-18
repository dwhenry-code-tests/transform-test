module ApplicationHelper
  def format_as_pending_time(seconds)
    # TODO: move this to locale files
    format("%d:%02d", seconds / 60, seconds % 60)
  end

  def format_as_time(seconds)
    seconds.seconds.from_now.strftime("%H:%M:%S")
  end
end
