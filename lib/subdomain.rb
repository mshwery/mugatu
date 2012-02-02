class Subdomain
  def self.matches?(request)
    case request.subdomain
    when 'www', '', nil
      false
    else
      true
    end
    #request.subdomain.present? && request.subdomain != 'www'
  end
end