# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## Master
### Added
  - Support for Ubuntu 18.04

## [2.2.3] - 2018-13-31
### Changed
  - pinned sous-chef/postgresql to 6.1.1 - while they are making major changes to 
    the cookbook as they move it from recipies to library
  - updated Gems
  - works on Ruby 2.5.1


## [2.2.0] - 2017-04-24
### Changed
  - posgresql 5.1.0 => 5.2.0

## [2.1.0] - 2016-13-20
### Added
  - Rakefile added

### Changed
  - chef_solo => chef_zero
  - metadata version had been set to 2.0.4 when it should have been 2.0.0

## [2.0.0] - 2016-12-20
### Breaking Changes
  - Ubuntu 12.04 no longer supported
  - Chef 11 no longer supported

### Added
  - Ubuntu 16.04 is now supported

### Changed
  - Wrapped cookbook has been renamed from heavy-water to sous-chef 
  - Test Kitchen works on Mac

## [1.1.0] - 2015-08-18
### Changed
  - Update dependency on philper/postgresql from 0.15.0 to 0.16.0

### Added
  - Changelog
