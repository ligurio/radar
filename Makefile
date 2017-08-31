FILES = atom.xml
FILES += css
FILES += foafroll.xml
FILES += images
FILES += index.html
FILES += openbsd.png
FILES += opml.xml
FILES += rss10.xml
FILES += rss20.xml

all: update

update:
	cp -R sqa venus/themes/
	cd venus/; python planet.py -v ../config.ini

copy:
	scp -r ${FILES} gw.bronevichok.ru:/var/www/html/www.bronevichok.ru/sqa-planet/

publish:
	cp -R ${FILES} /var/www/html/www.bronevichok.ru/sqa-planet/
