module Pages
  def register_page
    @register ||= Registration.new
  end
end
