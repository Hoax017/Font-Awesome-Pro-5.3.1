FILES=(fa-brands-400 fa-light-300 fa-regular-400 fa-solid-900);
EXTS=(eot ttf woff woff2);
URL="https://pro-next.fontawesome.com/releases/v5.3.1";
DESTPATH="/mnt/c/Users/Dieu/Desktop/Font Awesome Pro 5.3.1/webfonts/";
for FILE in "${FILES[@]}"; do;
	for EXT in "${EXTS[@]}"; do;
		curl "${URL}/webfonts/${FILE}.${EXT}" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0" -H "Accept: application/font-woff2;q=1.0,application/font-woff;q=0.9,*/*;q=0.8" -H "Accept-Language: fr,fr-FR;q=0.8,en-US;q=0.5,en;q=0.3" --compressed -H "Referer: ${URL}/css/all.css" -H "Origin: https://fontawesome.com" -H "DNT: 1" -H "Connection: keep-alive" -H "Pragma: no-cache" -H "Cache-Control: no-cache" -H "TE: Trailers" > "${DESTPATH}/${FILE}.${EXT}";
	done;
done;