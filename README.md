# BulutfonXM Json Builder

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bfon_builder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bfon_builder


###Usage

You can chain methods.

```ruby

bfxm = BfonBuilder.new;

bfxm.play('http://bfxmdemo.bulutfon.com/demosesler/demo-hosgeldiniz.mp3')
	.dial(10)
	.build;
```
By default build() will return below code if you want to set json header and output below code just use build(true).

```json
{
    "bfxm": {
        "version": 1
    },
    "seq": [
        {
            "action": "play",
            "args": {
                "url": "http://bfxmdemo.bulutfon.com/demosesler/demo-hosgeldiniz.mp3"
            }
        },
        {
            "action": "dial",
            "args": {
                "destination": 10
            }
        }
    ]
}

```


###Methods

 * play($url)

 * gather

 * hangup

 * reject

 * set_caller

 * say

 * dial