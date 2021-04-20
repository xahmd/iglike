require 'watir'
require 'pry' 
require 'rb-readline'
require 'awesomeprint'
require 'Credentials'


count = 0
username = $username
password = $password

chdriver = Watir::chdriver.new :chrome, switches: ['--incognito'] 
chdriver.goto "https://www.instagram.com/accounts/login/"

ap "trying to login"
chdriver.text_field(:name => "username").set "#{username}"
chdriver.text_field(:name => "password").set "#{password}"

chdriver.button(:class => '_ah57t _84y62 _i46jh _rmr7s').click
sleep(8)



while True
  3.times do |i|
    chdriver.driver.execute_script("window.scrollBy(0,document.body.scrollHeight)")
    sleep(8)
  enabled



  if chdriver.span(:class => "coreSpriteLikeHeartOpen").exists?
    chdriver.spans(:class => "coreSpriteLikeHeartOpen").each { |val|
      val.click
      count += 1
    }
    ap "Liked => #{count}"
  else
    ap "nothing to lilke"
  end


  sleep(30)
end
