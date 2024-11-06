# 

# Tugas 7

## Jelaskan apa yang dimaksud dengan *stateless widget dan stateful widget*, dan jelaskan perbedaan dari keduanya.

*Stateless widget* adalah *widget* yang tidak mempunyai *state* dan tidak pernah berubah dengan sendirinya. Perubahan *stateless widget* terjadi melalui *parent widget* di *widgets tree*. Contoh *stateless widget* adalah `Icon`, `IconButton`, dan `Text`.
*Stateful widget* bersifat dinamis. Wujudnya bisa berubah-ubah sebagai *response* interaksi pengguna ketika menerima data. Contoh *stateful widget* adalah `Checkbox`, `Radio`, `Slider`, `Form`, dan `TextField`.

## Sebutkan *widget* apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

`MyHomePage` adalah *widget* yang berfungsi sebagai *container* untuk menunjukkan semua elemen yang dibutuhkan pada *home page*.
`ItemCard` adalah *widget* untuk *button cards*: penampilannya dan apa yang terjadi ketika *button-button* tersebut di-*click*. 

## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Suatu *widget state* disimpan pada *object* `State`, memisahkan *state* suatu *widget* dengan penampilannya. `State` terdiri atas nilai-nilai yang bisa berubah, seperti posisi terakhir `slider` atau apakah suatu `checkbox` telah di-*check*. Ketika *widget state* berubah, `setState()` dipanggil untuk memberi tahu *framework* bahwa *internal state* dari *widget* telah berubah.

`setState()` akan menjadwalkan `build` agar *widget* sesuai dengan perubahan *state*. Jika `setState()` tidak digunakan ketika *state* berubah, *framework* belum tentu akan mengalokasi waktu untuk *rebuild* dan wujud *widget* bisa saja tidak sesuai dengan *state* barunya.

## Jelaskan perbedaan antara `const` dengan `final`.

`final` berarti *single-assignment*: suatu variabel `final` harus memiliki inisialisasi. Setelah di-*assign* dengan suatu nilai, nilai variabel `final` tidak bisa diubah-ubah. `final` memodifikasi variabel.

`const` berarti *deep state* suatu *object* dapat ditentukan pada *compile time* dan *object* akan *frozen* dan *immutable*. `const` memodifikasi *values*.

Object `const` memiliki beberapa sifat dan restriksi:
1. Harus dibuat dari data yang bisa dihitung pada *compile time*. *Object* `const` tidak bisa mengakses apapun yang perlu dihitung pada *runtime*.
2. *Object* bersifat *immutable*. Jika ada *final field* yang berisi *collections*, *collection* itu masih bisa *mutable*. Jika ada `const` *collection*, semua di dalamnya harus `const` pula, secara rekursif.
3. Object telah di-*canonicalized*. Mirip seperti *string-interning*, untuk setiap `const` value, suatu object `const` akan dibuat dan digunakan ulang. Contoh:

`getConst() => const [1, 2];`
`main() {`
`var a = getConst();`
`var b = getConst();`
`print(a === b); // true`
`}`

## Jelaskan bagaimana cara kamu mengimplementasikan *checklist-checklist* di atas.

- Membuat repository git baru
- Mengenerate project flutter baru pada folder repo dan mengetes dengan `flutter run`
- Menerapkan *clean architecture* dengan membuat file baru menu.dart pada folder /lib project
- Modifikasi widget MyHomePage dari stateful menjadi stateless
- Membuat button cards dengan membuat classes baru ItemHomepage dan ItemCard
- Membuat list warna yang akan digunakan untuk button
- Set button agar menunjukkan snackbar ketika di-click
