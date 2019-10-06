send #trigger {^(Behind|In|On|Under) the (.*), you see:$} {#var shop2 $2} {shop}
send #trigger {^\s+(a|an|some|the) (.*) for (\d*) copper (Kronars|Lirums|Dokoras)$} {#log >Shoplog.txt $date	$time	$2	$roomname	$3	$shop2		$ShopCity} {shop}
send #trigger {^\s+(a|an|some|the) (.*) for (\d*) bronze (Kronars|Lirums|Dokoras)$} {#log >Shoplog.txt $date	$time	$2	$roomname	$3_0	$shop2		$ShopCity} {shop}
send #trigger {^\s+(a|an|some|the) (.*) for (\d*) silver (Kronars|Lirums|Dokoras)$} {#log >Shoplog.txt $date	$time	$2	$roomname	$3_00	$shop2		$ShopCity} {shop}
send #trigger {^\s+(a|an|some|the) (.*) for (\d*) gold (Kronars|Lirums|Dokoras)$} {#log >Shoplog.txt $date	$time	$2	$roomname	$3_000	$shop2		$ShopCity} {shop}
send #trigger {^\s+(a|an|some|the) (.*) for (\d*) platinum (Kronars|Lirums|Dokoras)$} {#log >Shoplog.txt $date	$time	$2	$roomname	$3_0000	$shop2		$ShopCity} {shop}
send #trigger {^\s+(a|an|some|the) (.*) for (\d*)k platinum (Kronars|Lirums|Dokoras)$} {#log >Shoplog.txt $date	$time	$2	$roomname	$3_000_0000	$shop2		$ShopCity} {shop}
send #trigger {^\s+(a|an|some|the) (.*) for (\d*\.\d*)k platinum (Kronars|Lirums|Dokoras)$} {#log >Shoplog.txt $date	$time	$2	$roomname	$3_000_000	$shop2		$ShopCity} {shop}
send #trigger {^It has been (\d*) years, (\d*) days since the Victory of Lanival the Redeemer\.$} {#var year $1;#var yearday $2}
send #trigger {^It is the (\d*)\w\w month of (\S+) the (.*) in the year of the (.*)\.$} {#var month $1;#var monthname $2;#var yearname $4}