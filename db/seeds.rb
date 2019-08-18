require "faker"

10.times {
  name = Faker::Name.name
  email = Faker::Internet.email
  password_digest = Faker::String.random(length: 8)

  user = User.create(name: name, email: email, password_digest: password_digest)

  5.times {
    title = Faker::Company.name
    recipient = user.email
    Website.create(title: title, recipient: recipient, user: user)
  }
}
