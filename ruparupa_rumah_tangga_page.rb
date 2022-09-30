class ruparupaRumahTanggaPage < SitePrism::Page
  set_url '/c/rumah-tangga'

  element :button_kategori, :xpath, "//div[@class='head-space-text'][normalize-space()='Kategori']"
  element :button_kategori_rumah_tangga, :xpath, "//div[contains(text(),'Rumah Tangga')]"

  element :checkbox_buy_1_get_1, :xpath, "//label[@for='label-Buy_1_Get_1']"
  element :dropdown_button_urut_berdasarkan, :xpath, "//select[@name='order']"
  element :urut_berdasarkan_produk_terbaru, :xpath, "//option[@value='newArrival']"
  element :button_lihat_produk, :xpath, "//div[contains(@class,'product-container product-container-hovered')]//div//div[@class='btn btn-primary btn-s btn-full bold'][normalize-space()='Lihat Produk']"

  element :button_tambah_ke_keranjang, :xpath, "//button[contains(text(),'Tambah ke keranjang')]"
  element :button_lanjut_ke_keranjang, :xpath, "//button[contains(text(),'Lanjut Ke Keranjang')]"
  element :button_lanjutkan_ke_pembayaran, :xpath, "//button[contains(text(),'Lanjutkan ke Pembayaran')]"

  element :input_email, :xpath, "//input[@placeholder='Alamat email atau nomor telepon']"
  element :input_password, :xpath, "//input[@id='user-password']"
  element :error_alert_login, :xpath, "//div[@id='login-error-alert']"
end
