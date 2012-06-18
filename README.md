# CjClient

CjClient is a Ruby wrapper for the Commission Junction API

## Requirements

* Ruby 1.9

## Installation

Add to your gemfile:

  gem 'cj_client', :git => 'git://github.com/cjsanders/cj_client.git'

Configure CjClient to use your develoer key. You can get your key at https://api.cj.com/sign_up.cj

  CjClient.configure do |config|
    config.developer_key = YOUR_DEVELOPER_KEY
  end