REGGAE_PATH = /usr/local/share/reggae
SERVICES = letsencrypt https://github.com/mekanix/jail-letsencrypt \
	   postgresql https://github.com/mekanix/jail-postgresql \
	   opigno https://github.com/mekanix/jail-opigno \
	   nginx https://github.com/mekanix/jail-nginx

post_setup:
	@echo "/usr/cbsd/jails-data/letsencrypt-data/usr/local/etc/dehydrated/certs /etc/certs nullfs ro 0 0" >services/nginx/templates/fstab
	@echo "/usr/cbsd/jails-data/opigno-data/usr/local/www/opigno /usr/local/www/opigno nullfs ro 0 0" >>services/nginx/templates/fstab

.include <${REGGAE_PATH}/mk/project.mk>

