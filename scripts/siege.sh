COUNT=50

SERVER_HOST=server-product-catalog-prod.apps.ocp4.pokitoach.com

siege -r $COUNT -c 50 -v http://${SERVER_HOST}/api/product &
siege -r $COUNT -c 50 -v http://${SERVER_HOST}/api/product/count &
siege -r $COUNT -c 50 -v http://${SERVER_HOST}/api/category &
