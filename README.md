# This project will be discontinued. See helper_methods gem.

https://github.com/franciscomxs/helper_methods

# Messages

Simple 'error_messages' and 'flash_messages' manager

## Installation

Add this line to your application's Gemfile:

    gem "messages", "~> 0.0.2" 

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install messages

## Usage

In any form, instead of that ugly default block of code, simple use:

    <%= error_messages_for @resource %>

And it will return:

    <ul class="alert alert-error">
      <li>Error description</li>
    </ul>

Optionaly, you can pass a css class for ul element:

    <%= error_messages_for @resource, 'my_css_class' %>

And it will return:

    <ul class="my_css_class">
      <li>Error description</li>
    </ul>

For using flash messages, in your layout file, do:

    <%= flash_messages %>

And in your controller, use:

    flash[:success] = "Your success message"
    flash[:notice] = "Your alert message"
    flash[:error] = "Your error message"
    flash[:info] = "Your info message"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
