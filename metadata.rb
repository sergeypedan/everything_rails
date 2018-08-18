# frozen_string_literal: true

version      '0.1.225'
chef_version '>= 12.1' if respond_to? :chef_version

depends 'chruby', '~> 0.2.2'
depends 'locale', '~> 2.0.1'
depends 'nodejs', '~> 5.0.0'
# depends 'redisio'
depends 'system', '~> 0.11.3'

name             'everything_rails'
maintainer       'Sergey Pedan'
maintainer_email 'sergey.pedan@gmail.com'
license          'All Rights Reserved'
description      'Installs & configures everything necessary for Ruby on Rails web application'
long_description 'Installs & configures everything necessary for Ruby on Rails web application'
