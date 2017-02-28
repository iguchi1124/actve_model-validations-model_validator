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