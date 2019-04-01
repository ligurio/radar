FILES = atom.xml
FILES += css
FILES += foafroll.xml
FILES += images
FILES += index.html
FILES += opml.xml
FILES += rss10.xml
FILES += rss20.xml

DEST_DIR = /var/www/htdocs/www.bronevichok.ru/radar/

all: update

update:
	cp -R sqa venus/themes/
	cd venus/; python planet.py -v ../config.ini

copy:
	scp -r ${FILES} bronevichok.ru:${DEST_DIR}

publish:
	cp -R ${FILES} ${DEST_DIR}
