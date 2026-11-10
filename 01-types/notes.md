UNSigned sadece pziitif sayilar icin kullanilir . SIGNED ise her ikisi icin mesela 8 bit icin :
Unsigned 0<->255 araasinda iken (0 ve 255 dahil) signed 256/2=128 , -128 negatif +0 +127 tane pozitif sayi yani -128 <-> 127 (-128 ve 127 dahil ) arasindadir .
SIGNED veya Unsined bitten sayiya gecerken  sadece en bastaki MOST Significant BIT (MSB)-in 1 veya 0 olmasina bak 
10001000 sayisi icin signed diyrosa -2^7+0+0+0 .... giderken unsigned icin 2^7+0+0+0.... diye hesap yapiyosun . Yani signed varsa basdaki bit - dir . 


UNSIGNED-DEN signede gecerken : s(signed ) olsun u (unsigned)

EGER U < 128 , O ZAMAN S = U ;
EGER U >= 128 ,O ZAMAN S = U -256 ;

EGER S>=0 , O ZAMAN U = S;
EGER S<0 , O ZAMAN  U = S +256;


signed ile to_signed arasindaki fark , signed bir bit dizisi alir  ve hicbir sye yapmaz , ancak to signed ise bir sayi alir ve onun bitlerini hesaplar .

signed (n) =>n bit dizisini al ve onu isaretli rakam olarak oku. 
to_signed(n,8) =>n rakamini 8 bitlik bit dizisi yap .


Sığmayan sayı: hata yok, uyarı var ("vector truncated"). Alt 8 bit kalır.
  to_unsigned(300, 8) → 44   (300 − 256)
  to_signed(200, 8)   → −56  (200 sığmıyor, MSB=1 → negatif)

Unsigned'ı güvenle signed yapmak: SIGNED('0' & x) → 1 bit genişler, değer korunur.
  (MNIST'te MAC'teki pikseller tam olarak bu yüzden böyle yazılmıştı)
