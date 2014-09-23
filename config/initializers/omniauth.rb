Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, "751n3s1mdd0pu7", "5PXowbmfh1IBMzqO", :scope => 'r_fullprofile, r_basicprofile'
end