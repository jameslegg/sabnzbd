# Timezone [![Build Status](https://secure.travis-ci.org/agh-cookbooks/timezone.png?branch=master)](http://travis-ci.org/agh-cookbooks/timezone)

## Description

Ensures that the 'tzdata' (or equivalent) package is installed, and then sets the timezone.

## Usage

### default recipe

If you just include recipe[timezone] within the run_list for a role, things should just work -

    {
      name "Base",
      description "All of your systems are belong to me",
      "run_list": [
        "recipe[timezone]"
      ]
    }

Whatever node['timezone'] looks like will be configured on the node. Make sure to use what 'dpkg' considers correct,
meaning you want 'Etc/UTC' rather than just 'UTC' otherwise chef-client will update it every time you converge.

### Removal

If for some reason you want to stop using the 'timezone' recipe, just remove it.
Any changes it made on your behalf will not be reversed, but it will stop managing system timezone.

## License and Author

Author:: Alex Howells (<alex@howells.me>)

Copyright 2012, Alex Howells

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
