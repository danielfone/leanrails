Objectives
==========

  * Figure out the bare minimum project structure so that `rails console` and `rails server` work as expected.
  * Use standard rails paths and files.
  * __No expectation for use in the real world.__

Why?
====

Code is technical debt. Every line of code in your project is your responsibility.

A brand new rails (4.1.0) directory contains:

  * 54 files, 38 directories
  * 759 LOC (24,370 bytes) excluding Gemfile.lock


Steps
=====

  * `bundle init`
  * Add rails to gem file
  * rails command doesnt think we're in an app
  * railties/lib/app_rails_loader.rb suggests we need rails binstubs. OK!
  * Copy binstub from old project, copy required files
  * Remove bundler auto-require in boot.rb (why isn't this just called bundle_setup.rb?)
  * Trim application.rb to only what's needed
  * rails server needs config.ru, copy from another project

Result
======

  * 10 files, 4 directories
  * 74 LOC (1,739 bytes) excluding Gemfile.lock
