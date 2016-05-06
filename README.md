## CQE - Code Quality Engine

Project scope is to automate code quality testing using codeclimate-cli and triggered when code is changed in a GitHub repository or any of the engines used in the code analysis.

Codeclimate CLI is a command line interface based on the Code Climate analysis platform.
It allows you to run Code Climate engines on your local machine or CI using Docker containers.

The engines used for code quality testing are based on the type of project:

Example:
project:
 - Ruby on Rails with Ember App with CoffeeScript as Front End App
engines:
- brakeman: Static analysis tool which checks Ruby on Rails applications for security vulnerabilities.
- bundler-audit: Patch-level verification for Bundler.
- coffeelint: A style checker for CoffeeScript.
- duplication: Structural duplication detection for Ruby, JavaScript.
- fixme: Finds FIXME, TODO, HACK, etc. comments.
- rubocop: A Ruby static code analyzer, based on the community Ruby style guide.
- scss-lint: Configurable tool for writing clean and consistent SCSS.
- watson: A young Ember Doctor to help you fix your code.

The project relates to Quality Testing Tools section of Circle of Code.
