Given(/^User is on ruparupa dashboard page$/) do
  visit ENV['BASE_URL']
  waiting_for_page_ready
end

And(/^User go to rumah tangga category$/) do
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_button_kategori? }
  @pages.ruparupa_rumah_tangga_page.has_button_kategori.click
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_button_kategori_rumah_tangga? }
  @pages.ruparupa_rumah_tangga_page.button_kategori_rumah_tangga.click
end

When(/^User select buy 1 get 1$/) do
  waiting_for_page_ready
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_checkbox_buy_1_get_1? }
  @pages.ruparupa_rumah_tangga_page.checkbox_buy_1_get_1.click
end

And(/^User sort the product as produk terbaru$/) do
  waiting_for_page_ready
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_dropdown_button_urut_berdasarkan? }
  @pages.ruparupa_rumah_tangga_page.dropdown_button_urut_berdasarkan.click
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_urut_berdasarkan_produk_terbaru? }
  @pages.ruparupa_rumah_tangga_page.urut_berdasarkan_produk_terbaru.click
end

And(/^User select thef first product on the list$/) do
  waiting_for_page_ready
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_button_lihat_produk? }
  @pages.ruparupa_rumah_tangga_page.button_lihat_produk.click
end

And(/^User add the product to cart$/) do
  waiting_for_page_ready
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_button_tambah_ke_keranjang? }
  @pages.ruparupa_rumah_tangga_page.button_tambah_ke_keranjang.click
end

And(/^User continue to the cart$/) do
  waiting_for_page_ready
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_button_lanjut_ke_keranjang? }
  @pages.ruparupa_rumah_tangga_page.button_lanjut_ke_keranjang.click
end

And(/^User continue to the payment$/) do
  waiting_for_page_ready
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_button_lanjutkan_ke_pembayaran? }
  @pages.ruparupa_rumah_tangga_page.button_lanjutkan_ke_pembayaran.click
end

When(/^User input invalid credential$/) do
  waiting_for_page_ready
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_input_email? }
  @pages.ruparupa_rumah_tangga_page.input_email.set 'mail@domain.ext'
  short_wait.until { @pages.ruparupa_rumah_tangga_page.has_input_password? }
  @pages.ruparupa_rumah_tangga_page.input_password.set 'Password123'
end

Then(/^User failed to sign in$/) do
  expect(@pages.company_form_index_page.has_error_alert_login?).to be true
end