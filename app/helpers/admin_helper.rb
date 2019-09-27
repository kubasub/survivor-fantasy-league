module AdminHelper
  BOOTSTRAP_FLASH_CLASS = {
    alert: 'warning',
    error: 'danger',
    form_error: 'danger',
    info: 'info',
    notice: 'success'
  }.freeze

  def flash_class(level)
    BOOTSTRAP_FLASH_CLASS.fetch(level.to_sym, 'info')
  end
end
