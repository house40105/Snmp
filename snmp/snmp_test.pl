#!/usr/bin/perl

use strict;
use warnings;
use LWP::UserAgent;
use JSON;
use Mojolicious::Lite;



get '/snmp_test' => sub {
    my $c = shift;

    my $cpu_usage = `snmpwalk -v2c -c private 127.0.0.1 .1.3.6.1.4.1.2021.11.10.0 | awk -F' ' '{print \$4}' | tr -d '%'`;


    # 獲取記憶體使用率
    my $mem_usage = `snmpwalk -v2c -c private 127.0.0.1 memAvailReal | awk -F' ' '{print \$4}'`;
    my $total_mem = `snmpwalk -v2c -c private 127.0.0.1 memTotalReal | awk -F' ' '{print \$4}'`;
    my $mem_usage_percentage = sprintf("%.2f", (($total_mem - $mem_usage) / $total_mem) * 100);

    my $data = {
        cpu_usage => $cpu_usage,
        mem_usage => $mem_usage_percentage
    };


    my $json_data = encode_json($data);
    #print "$json_data"
    my $response = "[".$cpu_usage."]"."[".$mem_usage_percentage."]";

    $c->render(text => $response);
};


app->start('daemon', '-l', 'http://192.168.0.205:8080');