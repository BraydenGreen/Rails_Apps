require 'mechanize'

namespace :scrape do
  desc "scrape amazon for cellphone data"
  task cellphones: :environment do
    mechanize = Mechanize.new
    page = mechanize.get('http://www.amazon.com')
    search_form = page.forms.first
    search_form['field-keywords'] = 'cellphones'
    cell_phones_page = search_form.submit
    phone_containers = cell_phones_page.search('.s-item-container')
    phone_counter = 0
    phone_containers.each do |container|
      phone = Cellphone.new
      begin
        phone.img_src = container.search('.s-access-image').first['src']
        phone.name = container.search('.s-access-title').text.strip
        phone.price = container.search('.s-price').text.strip
        phone.stars = container.search('.a-icon-star').text.strip
        phone.save
        phone_counter +=1
      rescue => e
        puts "Cellphone not created: #{e}"
        next
      end
    end
    puts "#{phone_counter} phones created"
  end

end
