CREATE DATABASE IF NOT EXISTS _IMPALA_DNS_STAGING_TABLE_DB_;
use _IMPALA_DNS_STAGING_TABLE_DB_;

create external table if not exists _IMPALA_DNS_STAGING_TABLE_TAB_ (
 id INT,
 unixtime BIGINT,
 time BIGINT,
 qname STRING,
 domainname STRING,
 len INT,
 frag INT,
 ttl INT,
 ipv INT,
 prot INT,
 src STRING,
 srcp INT,
 dst STRING,
 dstp INT,
 udp_sum INT,
 dns_len INT,
 aa BOOLEAN,
 tc BOOLEAN,
 rd BOOLEAN,
 ra BOOLEAN,
 z BOOLEAN,
 ad BOOLEAN,
 cd BOOLEAN,
 ancount INT,
 arcount INT,
 nscount INT,
 qdcount INT,
 opcode INT,
 rcode INT,
 qtype INT,
 qclass INT,
 country STRING,
 asn STRING,
 edns_udp INT,
 edns_version SMALLINT,
 edns_do BOOLEAN,
 edns_ping BOOLEAN,
 edns_nsid STRING, 
 edns_dnssec_dau STRING,
 edns_dnssec_dhu STRING,
 edns_dnssec_n3u STRING,
 edns_client_subnet STRING,
 edns_other STRING,
 edns_client_subnet_asn STRING,
 edns_client_subnet_country STRING,
 labels INT,
 res_len INT,
 svr string,
 time_micro bigint,
 resp_frag INT,
 proc_time INT,
 is_google boolean,
 is_opendns boolean,
 dns_res_len INT,
 server_location string,
 edns_padding INT,
 pcap_file STRING,
 edns_keytag_count INT,
 edns_keytag_list STRING) 
 partitioned by (year INT, month INT, day INT, server string)
  STORED AS PARQUETFILE
  LOCATION '_HDFS_DNS_STAGING_';

