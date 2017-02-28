# ActiveModel::Validations::ModelValidator

## Usage

```rb
class Registration
  include ActiveModel::Model

  attr_accessor :name, :bio

  validates :user, :profile, model: true

  def user
    @user ||= User.new(name: name)
  end

  def profile
    @profile ||= user.build_profile(bio: bio)
  end
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'active_model-validations-model_validator'
```

And then execute:
```bash
$ bundle
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
