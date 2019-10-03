product_list = ['Filmfavoriter','C More Golf','Tillvalspaket Danmark','Tillvalspaket Norge']

for i in product_list:
    click element  xpath:..//div[@class='section-2']//div[@class='text-medium' and contains(text(),'{i}')].format(i)