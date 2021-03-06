[![Build Status](https://travis-ci.org/EagleGenomics-cookbooks/sickle.svg?branch=master)](https://travis-ci.org/EagleGenomics-cookbooks/sickle)

# sickle

#Description
This cookbook installs sickle, a windowed adaptive trimming tool for FASTQ files using quality

https://github.com/najoshi/sickle

Requirements
============

## Platform:

* Ubuntu 14.04

Usage
=====
Simply include the recipe wherever you would like it installed, such as a run list (recipe[sickle]) or a cookbook (include_recipe 'sickle')


## Testing
To test the recipe we use chef test kitchen:

kitchen converge

kitchen login

kitchen verify

kitchen destroy

kitchen test

Attributes
==========
See attributes/default.rb for default values.


License and Authors
===================

* Authors:: Javier Garrayo Ventas (<chef@eaglegenomics.com>)

Copyright:: 2017, Eagle Genomics Ltd

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
