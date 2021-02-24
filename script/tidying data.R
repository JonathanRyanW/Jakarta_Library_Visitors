""" Pada saat analisis ini dilakukan, yaitu 2021-02-13 00:51:34 +07 belum ada data
untuk tahun 2020 di websitenya. Jadi ya sudah analisa saja data dari 2015 sampe
2019.

Untuk data tahun 2018 dan 2019 entah mengapa nama perpustakaannya berubah dari
KPAK jadi sudin pusip. Kedua nama ini bakalan dianggap sama.

Data tahun 2018 dan 2019 diubah di kolom namanya dari "sudin pusip" jadi "KPAK".

Hasil gabungan seluruh data ditaruh ke dalam variable data_gabungan. Hasilnya
yang sudah sesuai dengan prinsip tidy data didapatkan dengan menggunakan fungsi
gather dari package tidyr dan disimpan di variable data_gabungan_tidy.

Baru tau ternyata:
KPAK: Kantor Perpustakaan dan Arsip Kota
Sudin Pusip: Suku Dinas Perpustakaan dan Kearsipan

Kenapa gw nggak bisa ngeplot table data_gabungan ya.