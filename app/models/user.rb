class User < ActiveRecord::Base
validates :email, :password, presence: true
acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::Sha512
end
end
