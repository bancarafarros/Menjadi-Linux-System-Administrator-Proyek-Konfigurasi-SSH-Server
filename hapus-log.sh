#!/bin/bash

while true
do

# Menampilkan informasi penggunaan disk dari semua berkas journalctl, baik yang aktif maupun yang diarsipkan
journalctl -a --disk-usage
echo""
sleep 2s

# Menghapus journalctl log hingga ruang disk yang digunakan untuk log berkirsar 10 MB
journalctl --vacuum-size=10M
echo ""
sleep 2s

# Menampilkan kembali informasi penggunaan disk dari semua berkas journalctl, baik yag aktif maupun yang diarsipkan
journalctl -a --disk-usage
echo ""
sleep 2s

done
