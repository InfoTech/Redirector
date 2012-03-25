class MemcacheRedirector

  def redirect_uri string
    if string == "/google"
      return "http://www.google.com"
    else
      return nil 
    end
  end

end
