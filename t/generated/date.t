#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use Test::More;
use lib 'lib';

BEGIN {
    eval { 
      require HTTP::StructuredFieldValues; 
      HTTP::StructuredFieldValues->import(qw(encode decode_dictionary decode_list decode_item));
       1; 
    } or do {
        plan skip_all => "HTTP::StructuredFieldValues module not available";
    };
}

use MIME::Base32;
use Tie::IxHash;

sub _h {
  tie my %hash, 'Tie::IxHash', @_;
  return \%hash;
}

# Generated from date.json
# Total tests: 17

plan tests => 17;

# Test 1: date - 1970-01-01 00:00:00
subtest "date - 1970-01-01 00:00:00" => sub {
    my $test_name = "date - 1970-01-01 00:00:00";
    my $input = "\@0";
    my $expected = { _type => 'date', value => '0' };
    my $canonical = $input;
    
    my $result = eval { decode_item($input); };
    
    if ($@) {
        fail($test_name);
        diag("Decode error: $@");
        diag("Input was: $input");
    } else {
        is_deeply($result, $expected, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($expected));
            diag("Input was: ", $input);
        };
    }
    $result = eval { encode($expected); };
    if ($@) {
        fail($test_name);
        diag("Encode error:", $@);
        diag("Input was: ", explain($expected));
    } else {
        is($result, $canonical, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($canonical));
            diag("Input was: ", explain($expected));
        };
    }
};

# Test 2: date - 2022-08-04 01:57:13
subtest "date - 2022-08-04 01:57:13" => sub {
    my $test_name = "date - 2022-08-04 01:57:13";
    my $input = "\@1659578233";
    my $expected = { _type => 'date', value => '1659578233' };
    my $canonical = $input;
    
    my $result = eval { decode_item($input); };
    
    if ($@) {
        fail($test_name);
        diag("Decode error: $@");
        diag("Input was: $input");
    } else {
        is_deeply($result, $expected, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($expected));
            diag("Input was: ", $input);
        };
    }
    $result = eval { encode($expected); };
    if ($@) {
        fail($test_name);
        diag("Encode error:", $@);
        diag("Input was: ", explain($expected));
    } else {
        is($result, $canonical, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($canonical));
            diag("Input was: ", explain($expected));
        };
    }
};

# Test 3: date - 1917-05-30 22:02:47
subtest "date - 1917-05-30 22:02:47" => sub {
    my $test_name = "date - 1917-05-30 22:02:47";
    my $input = "\@-1659578233";
    my $expected = { _type => 'date', value => '-1659578233' };
    my $canonical = $input;
    
    my $result = eval { decode_item($input); };
    
    if ($@) {
        fail($test_name);
        diag("Decode error: $@");
        diag("Input was: $input");
    } else {
        is_deeply($result, $expected, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($expected));
            diag("Input was: ", $input);
        };
    }
    $result = eval { encode($expected); };
    if ($@) {
        fail($test_name);
        diag("Encode error:", $@);
        diag("Input was: ", explain($expected));
    } else {
        is($result, $canonical, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($canonical));
            diag("Input was: ", explain($expected));
        };
    }
};

# Test 4: date - 2^31
subtest "date - 2^31" => sub {
    my $test_name = "date - 2^31";
    my $input = "\@2147483648";
    my $expected = { _type => 'date', value => '2147483648' };
    my $canonical = $input;
    
    my $result = eval { decode_item($input); };
    
    if ($@) {
        fail($test_name);
        diag("Decode error: $@");
        diag("Input was: $input");
    } else {
        is_deeply($result, $expected, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($expected));
            diag("Input was: ", $input);
        };
    }
    $result = eval { encode($expected); };
    if ($@) {
        fail($test_name);
        diag("Encode error:", $@);
        diag("Input was: ", explain($expected));
    } else {
        is($result, $canonical, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($canonical));
            diag("Input was: ", explain($expected));
        };
    }
};

# Test 5: date - 2^32
subtest "date - 2^32" => sub {
    my $test_name = "date - 2^32";
    my $input = "\@4294967296";
    my $expected = { _type => 'date', value => '4294967296' };
    my $canonical = $input;
    
    my $result = eval { decode_item($input); };
    
    if ($@) {
        fail($test_name);
        diag("Decode error: $@");
        diag("Input was: $input");
    } else {
        is_deeply($result, $expected, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($expected));
            diag("Input was: ", $input);
        };
    }
    $result = eval { encode($expected); };
    if ($@) {
        fail($test_name);
        diag("Encode error:", $@);
        diag("Input was: ", explain($expected));
    } else {
        is($result, $canonical, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($canonical));
            diag("Input was: ", explain($expected));
        };
    }
};

# Test 6: interoperability max date - 9999-12-31 00:00:00
subtest "interoperability max date - 9999-12-31 00:00:00" => sub {
    my $test_name = "interoperability max date - 9999-12-31 00:00:00";
    my $input = "\@253402214400";
    my $expected = { _type => 'date', value => '253402214400' };
    my $canonical = $input;
    
    my $result = eval { decode_item($input); };
    
    if ($@) {
        fail($test_name);
        diag("Decode error: $@");
        diag("Input was: $input");
    } else {
        is_deeply($result, $expected, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($expected));
            diag("Input was: ", $input);
        };
    }
    $result = eval { encode($expected); };
    if ($@) {
        fail($test_name);
        diag("Encode error:", $@);
        diag("Input was: ", explain($expected));
    } else {
        is($result, $canonical, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($canonical));
            diag("Input was: ", explain($expected));
        };
    }
};

# Test 7: interoperability min date - 0001-01-01 00:00:00
subtest "interoperability min date - 0001-01-01 00:00:00" => sub {
    my $test_name = "interoperability min date - 0001-01-01 00:00:00";
    my $input = "\@-62135596800";
    my $expected = { _type => 'date', value => '-62135596800' };
    my $canonical = $input;
    
    my $result = eval { decode_item($input); };
    
    if ($@) {
        fail($test_name);
        diag("Decode error: $@");
        diag("Input was: $input");
    } else {
        is_deeply($result, $expected, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($expected));
            diag("Input was: ", $input);
        };
    }
    $result = eval { encode($expected); };
    if ($@) {
        fail($test_name);
        diag("Encode error:", $@);
        diag("Input was: ", explain($expected));
    } else {
        is($result, $canonical, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($canonical));
            diag("Input was: ", explain($expected));
        };
    }
};

# Test 8: date - decimal
{
    my $test_name = 'date - decimal - must fail';
    my $input = "\@1659578233.12";
    
    eval { decode_item($input); };
    ok($@, $test_name) or diag("Expected failure but got success");
}

# Test 9: syntactic max date - 999,999,999,999,999
{
    my $test_name = 'syntactic max date - 999,999,999,999,999 - can fail';
    my $input = "\@999999999999999";
    
    eval { decode_item($input); };
    pass($test_name); # Can fail tests always pass
}

# Test 10: syntactic min date - -999,999,999,999,999
{
    my $test_name = 'syntactic min date - -999,999,999,999,999 - can fail';
    my $input = "\@-999999999999999";
    
    eval { decode_item($input); };
    pass($test_name); # Can fail tests always pass
}

# Test 11: too large syntactic date - 1,000,000,000,000,000
{
    my $test_name = 'too large syntactic date - 1,000,000,000,000,000 - must fail';
    my $input = "\@1000000000000000";
    
    eval { decode_item($input); };
    ok($@, $test_name) or diag("Expected failure but got success");
}

# Test 12: too small syntactic date - -1,000,000,000,000,000
{
    my $test_name = 'too small syntactic date - -1,000,000,000,000,000 - must fail';
    my $input = "\@-1000000000000000";
    
    eval { decode_item($input); };
    ok($@, $test_name) or diag("Expected failure but got success");
}

# Test 13: date with negative zero
subtest "date with negative zero" => sub {
    my $test_name = "date with negative zero";
    my $input = "\@-0";
    my $expected = { _type => 'date', value => '0' };
    my $canonical = "\@0";
    
    my $result = eval { decode_item($input); };
    
    if ($@) {
        fail($test_name);
        diag("Decode error: $@");
        diag("Input was: $input");
    } else {
        is_deeply($result, $expected, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($expected));
            diag("Input was: ", $input);
        };
    }
    $result = eval { encode($expected); };
    if ($@) {
        fail($test_name);
        diag("Encode error:", $@);
        diag("Input was: ", explain($expected));
    } else {
        is($result, $canonical, $test_name) or do {
            diag("Got: ", explain($result));
            diag("Expected: ", explain($canonical));
            diag("Input was: ", explain($expected));
        };
    }
};

# Test 14: date - empty
{
    my $test_name = 'date - empty - must fail';
    my $input = "\@";
    
    eval { decode_item($input); };
    ok($@, $test_name) or diag("Expected failure but got success");
}

# Test 15: date - sign only
{
    my $test_name = 'date - sign only - must fail';
    my $input = "\@-";
    
    eval { decode_item($input); };
    ok($@, $test_name) or diag("Expected failure but got success");
}

# Test 16: date - space
{
    my $test_name = 'date - space - must fail';
    my $input = "\@ 12345678";
    
    eval { decode_item($input); };
    ok($@, $test_name) or diag("Expected failure but got success");
}

# Test 17: date - non-digit
{
    my $test_name = 'date - non-digit - must fail';
    my $input = "\@abc";
    
    eval { decode_item($input); };
    ok($@, $test_name) or diag("Expected failure but got success");
}

