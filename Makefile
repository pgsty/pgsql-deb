#---------------------------------------------#
# build
#---------------------------------------------#
rust: pgml pg_graphql pg_jsonschema wrappers pg_parquet pgvectorscale plprql pg_idkit pgsmcrypto pg_tiktoken pg_vectorize pg_later pgdd
noext: scws libduckdb pgcopydb
batch1: pg_net pgjwt pgmq pg_timeseries pg_plan_filter gzip vault pgsodium supautils hydra pg_tle permuteseq postgres_shacrypt pg_hashids pg_sqlog md5hash pg_tde hunspell #plv8 zhparser duckdb_fdw
batch2: imgsmlr pg_bigm pg_ivm pg_uuidv7 sqlite_fdw wal2mongo pg_readonly pguint pg_permissions ddlx pg_safeupdate pg_stat_monitor passwordcheck_cracklib pg_profile system_stats pg_fkpart pgmeminfo pg_store_plan
batch3: pg_orphaned pgcozy decoder_raw pg_failover_slots log_fdw redis_fdw index_advisor pg_financial pg_savior aggs_for_vecs base36 base62 pg_envvar pg_html5_email_address lower_quantile pg_timeit quantile random session_variable smlar sslutils pg_mon chkpass pg_currency pg_emailaddr pg_uri cryptint floatvec pg_auditor noset
batch4: aggs_for_arrays pgqr pg_zstd url_encode pg_meta pg_redis_pubsub pg_arraymath pagevis pg_ecdsa pg_cheat_funcs acl pg_crash pg_math sequential_uuids kafka_fdw pgnodemx pg_hashlib pg_protobuf pg_country pg_fio aws_s3 pg_geohash #firebird_fdw

collect:
	mkdir -p /tmp/deb
	rm -rf /tmp/deb/*
	cp -r ~/*.deb /tmp/deb/

#---------------------------------------------#
# rust & pgrx extensions
#---------------------------------------------#
#pg_search:
#	cd pg-search && make
#pg_lakehouse:
#	cd pg-lakehouse && make
pgml:
	cd pgml && make
pg_graphql:
	cd pg-graphql && make
pg_jsonschema:
	cd pg-jsonschema && make
wrappers:
	cd wrappers && make
pgvectorscale:
	cd pgvectorscale && make
plprql:
	cd plprql && make
pg_idkit:
	cd pg-idkit && make
pgsmcrypto:
	cd pgsmcrypto && make
pg_tiktoken:
	cd pg-tiktoken && make
pg_tier:
	cd pg-tier && make
pg_vectorize:
	cd pg-vectorize && make
pg_later:
	cd pg-later && make
pgdd:
	cd pgdd && make

pg_parquet:
	cd pg-parquet && make
pg_explain_ui:
	cd pg-explain-ui && make
pg_polyline:
	cd pg-polyline && make
pg_cardano:
	cd pg-cardano && make
pg_base58:
	cd pg-base58 && make
pg_summarize:
	cd pg-summarize && make

rust-clean:
	rm -rf ~/*.ddeb ~/*.deb ~/*.buildinfo ~/*.changes
	rm -rf ~/paradedb/*.deb ~/paradedb/*.ddeb ~/paradedb/*.buildinfo ~/paradedb/*.changes
	rm -rf ~/pg_vectorize/*.deb ~/pg_vectorize/*.ddeb ~/pg_vectorize/*.buildinfo ~/pg_vectorize/*.changes
	rm -rf ~/postgresml/*.deb ~/postgresml/*.ddeb ~/postgresml/*.buildinfo ~/postgresml/*.changes
	rm -rf ~/pgsql-gzip/*.deb ~/pgsql-gzip/*.ddeb ~/pgsql-gzip/*.buildinfo ~/pgsql-gzip/*.changes
	rm -rf ~/pg-net/*.deb ~/pg-net/*.ddeb ~/pg-net/*.buildinfo ~/pg-net/*.changes
	rm -rf ~/pgjwt/*.deb ~/pgjwt/*.ddeb ~/pgjwt/*.buildinfo ~/pgjwt/*.changes
	rm -rf ~/pgvectorscale/*.deb ~/pgvectorscale/*.ddeb ~/pgvectorscale/*.buildinfo ~/pgvectorscale/*.changes

#---------------------------------------------#
# common c/c++ extensions
#---------------------------------------------#
pg_net:
	cd pg-net && make
pgjwt:
	cd pgjwt && make
pgmq:
	cd pgmq && make
pg_timeseries:
	cd pg-timeseries && make
pg_plan_filter:
	cd pg-plan-filter && make
pg_relusage:
	cd pg-relusage && make
pg_uint128:
	cd pg-uint128 && make
gzip:
	cd pgsql-gzip && make
vault:
	cd vault && make
pgsodium:
	cd pgsodium && make
supautils:
	cd supautils && make
hydra:
	cd hydra && make
pg_tle:
	cd pg-tle && make
plv8:
	cd plv8 && make
permuteseq:
	cd permuteseq && make
postgres_shacrypt:
	cd postgres-shacrypt && make
pg_hashids:
	cd pg-hashids && make
pg_sqlog:
	cd pg-sqlog && make
md5hash:
	cd md5hash && make
pg_tde:
	cd pg-tde && make
hunspell:
	cd hunspell && make
zhparser:
	cd zhparser && make

duckdb_fdw:
	cd duckdb-fdw && make
pg_duckdb:
	cd pg-duckdb && make

imgsmlr:
	cd imgsmlr && make
pg_bigm:
	cd pg-bigm && make
pg_ivm:
	cd pg-ivm && make
pg_uuidv7:
	cd pg-uuidv7 && make
sqlite_fdw:
	cd sqlite-fdw && make
wal2mongo:
	cd wal2mongo && make
pg_readonly:
	cd pg-readonly && make
pguint:
	cd pguint && make
pg_permissions:
	cd pg-permissions && make
ddlx:
	cd ddlx && make
pg_safeupdate:
	cd pg-safeupdate && make
pg_stat_monitor:
	cd pg-stat-monitor && make
passwordcheck_cracklib:
	cd passwordcheck-cracklib && make
pg_profile:
	cd pg-profile && make
pg_store_plan:
	cd pg-store-plan && make
system_stats:
	cd system-stats && make
pg_fkpart:
	cd pg-fkpart && make
pgmeminfo:
	cd pgmeminfo && make
postgresql_anonymizer:
	cd postgresql-anonymizer && make
pgcryptokey:
	cd pgcryptokey && make
pg_background:
	cd pg-background && make
count_distinct:
	cd count-distinct && make
pg_extra_time:
	cd pg-extra-time && make
pgsql_tweaks:
	cd pgsql-tweaks && make
pgtt:
	cd pgtt && make
temporal_tables:
	cd temporal-tables && make
emaj:
	cd emaj && make
tableversion:
	cd tableversion && make
pg_statement_rollback:
	cd pg-statement-rollback && make
pg_auth_mon:
	cd pg-auth-mon && make
login_hook:
	cd login-hook && make
logerrors:
	cd logerrors && make
pg_jobmon:
	cd pg-jobmon && make
geoip:
	cd geoip && make

scws:
	cd scws && make
libduckdb:
	cd libduckdb && make
pgcopydb:
	cd pgcopydb && make
pg_bulkload:
	cd pg-bulkload && make
libfq:
	cd libfq && make

pg_orphaned:
	cd pg-orphaned && make
pgcozy:
	cd pgcozy && make
decoder_raw:
	cd decoder-raw && make
pg_failover_slots:
	cd pg-failover-slots && make
log_fdw:
	cd log-fdw && make
redis_fdw:
	cd redis-fdw17 && make
	cd redis-fdw16 && make
	cd redis-fdw15 && make
	cd redis-fdw14 && make
	cd redis-fdw13 && make
	cd redis-fdw12 && make
index_advisor:
	cd index-advisor && make
pg_financial:
	cd pg-financial && make
pg_savior:
	cd pg-savior && make
aggs_for_vecs:
	cd aggs-for-vecs && make
base36:
	cd base36 && make
base62:
	cd base62 && make
pg_envvar:
	cd pg-envvar && make
pg_html5_email_address:
	cd pg-html5-email-address && make
lower_quantile:
	cd lower-quantile && make
pg_timeit:
	cd pg-timeit && make
quantile:
	cd quantile && make
random:
	cd random && make
session_variable:
	cd session-variable && make
smlar:
	cd smlar && make
sslutils:
	cd sslutils && make
pg_mon:
	cd pg-mon && make
chkpass:
	cd chkpass && make
pg_currency:
	cd pg-currency && make
pg_emailaddr:
	cd pg-emailaddr && make
pg_uri:
	cd pg-uri && make
cryptint:
	cd cryptint && make
floatvec:
	cd floatvec && make
pg_auditor:
	cd pg-auditor && make
noset:
	cd noset && make


aggs_for_arrays:
	cd aggs-for-arrays && make
pgqr:
	cd pgqr && make
pg_zstd:
	cd pg-zstd && make
url_encode:
	cd url-encode && make
pg_geohash:
	cd pg-geohash && make
pg_meta:
	cd pg-meta && make
pg_redis_pubsub:
	cd pg-redis-pubsub && make
pg_arraymath:
	cd pg-arraymath && make
pagevis:
	cd pagevis && make
pg_ecdsa:
	cd pg-ecdsa && make
pg_cheat_funcs:
	cd pg-cheat-funcs && make
acl:
	cd acl && make
pg_crash:
	cd pg-crash && make
pg_math:
	cd pg-math && make
firebird_fdw:
	cd firebird-fdw && make
sequential_uuids:
	cd sequential-uuids && make
kafka_fdw:
	cd kafka-fdw && make
pgnodemx:
	cd pgnodemx && make
pg_hashlib:
	cd pg-hashlib && make
pg_protobuf:
	cd pg-protobuf && make
pg_country:
	cd pg-country && make
pg_fio:
	cd pg-fio && make
aws_s3:
	cd aws-s3 && make



#---------------------------------------------#
# sync to/from building server
#---------------------------------------------#
push-sv:
	rsync -avc --exclude deb ./ sv:/data/pigsty-deb/
pushd-sv:
	rsync -avc --exclude deb --delete ./ sv:/data/pigsty-deb/
pull-sv:
	rsync -avc sv:/data/pigsty-deb/deb/ ./deb/
pulld-sv:
	rsync --delete -avc sv:/data/pigsty-deb/deb/ ./deb/

ps: pushss
pd: pushsd
pushsd: pushd-sv
	ssh sv 'cd /data/pigsty-deb && make pushd'
pushss: push-sv
	ssh sv 'cd /data/pigsty-deb && make push'

pl: pull-ss
pull-ss:
	ssh -t sv "cd /data/pigsty-deb && make pull"
	rsync -avc --exclude deb ./ sv:/data/pigsty-deb/

#---------------------------------------------#
# push to building machines
#---------------------------------------------#
push:
	rsync -avc --exclude deb ./ u22:~/pigsty-deb/
	rsync -avc --exclude deb ./ d12:~/pigsty-deb/
pushd:
	rsync -avc --exclude deb --delete ./ u22:~/pigsty-deb/
	rsync -avc --exclude deb --delete ./ d12:~/pigsty-deb/

#---------------------------------------------#
# pull rpm from building machines
#---------------------------------------------#
pull: dirs pull22 pull12
purge:
	rm -rf deb/*
dirs:
	mkdir -p deb/jammy.amd64 deb/bookworm.amd64
pull22:
	rsync -avz u22:/tmp/deb/ deb/jammy.amd64/
pull12:
	rsync -avz d12:/tmp/deb/ deb/bookworm.amd64/

#---------------------------------------------#
# publish
#---------------------------------------------#
sync: release
pub: release
release: clean
	coscmd upload --recursive -s -f -y --delete --ignore .idea . yum

.PHONY: rust deps batch1 batch2 deb-collect \
 	pg_search pg_lakehouse pgml pg_graphql pg_jsonschema wrappers pg_parquet pgvectorscale plprql pg_idkit pgsmcrypto pgdd pg_tiktoken pg_tier pg_vectorize pg_later \
 	pg_net pgjwt gzip vault pgsodium supautils hydra pg_tle plv8 permuteseq postgres_shacrypt pg_hashids pg_sqlog md5hash pg_tde hunspell  zhparser duckdb_fdw pg-duckdb \
 	pg_timeseries pgmq pg_plan_filter pg_relusage pg_uint128 \
 	imgsmlr pg_bigm pg_ivm pg_uuidv7 sqlite_fdw wal2mongo pg_readonly pguint pg_permissions ddlx pg_safeupdate pg_stat_monitor passwordcheck_cracklib pg_profile pg_store_plan system_stats \
 	pg_fkpart pgmeminfo postgresql_anonymizer pgcryptokey pg_background count_distinct pg_extra_time pgsql_tweaks pgtt temporal_tables emaj tableversion pg_statement_rollback \
 	pg_auth_mon login_hook logerrors pg_jobmon geoip \
 	pg_orphaned pgcozy decoder_raw pg_failover_slot log_fdw redis_fdw index_advisor pg_financial pg_savior aggs_for_vecs base36 base62 pg_envvar pg_html5_email_address lower_quantile pg_timeit quantile random \
 	smlar sslutils pg_mon chkpass pg_currency pg_emailaddr pg_uri cryptint floatvec pg_auditor noset \
 	aggs_for_arrays pgqr pg_zstd url_encode pg_geohash pg_meta pg_redis_pubsub pg_arraymath pagevis pg_ecdsa pg_cheat_funcs acl pg_crash pg_math firebird_fdw sequential_uuids kafka_fdw pgnodemx pg_hashlib pg_protobuf pg_country pg_fio aws_s3 \
 	scws libduckdb pgcopydb pg_bulkload libfq \
 	push-sv pushd-sv pull-sv pulld-sv ps pd pushsd pushss push pull purge dirs pull22 pull12 sync pub release