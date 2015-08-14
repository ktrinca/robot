 CarrierWave.configure do |config|
  #config.ftp_host = "ftp.robot.2trweb.com"
  #config.ftp_port = 21
  #config.ftp_user = "u161744936"
  #config.ftp_passwd = "lkjasd164"
  #config.ftp_folder = "/public_html/uploads"
  #config.ftp_url = "http://robot.2trweb.com/uploads"
  #config.ftp_passive = true # false by default
  config.sftp_host = "gastonramos.com.ar"
  config.sftp_user = "yanina"
  config.sftp_folder = "upload/robot"
  config.sftp_url = "http://gastonramos.com.ar/uploads"
  config.sftp_options = {
    :password => "27487884",
    :port     => 22
  }
end