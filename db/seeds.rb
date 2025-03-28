# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user = User.find_by(email_address: "admin@test.com", role: :admin)
if !user
  User.create(
    email_address: "admin@test.com",
    password: "admin123",
    role: :admin
  )
end
post = Post.find_by(title: "⚡ Ruby on Rails + Hotwire + Action Text: Building Reactive Rich Text Apps")

if !post
  post = Post.create(
    title: "⚡ Ruby on Rails + Hotwire + Action Text: Building Reactive Rich Text Apps",
    body: "If you’re building a modern Rails app in 2024, you’ve probably heard of Hotwire — a game-changing combo of Turbo + Stimulus that gives you reactive frontend experiences *without* writing JavaScript-heavy code.

Pair that with Action Text, Rails’ built-in rich text editor (powered by Trix), and you’ve got everything you need to build dynamic content-driven apps with minimal friction.

🧠 What Is Hotwire?

Hotwire stands for HTML Over The Wire — a modern approach where your Rails server sends HTML fragments over the wire instead of JSON. That means lightning-fast UX without the need for React or Vue.

Hotwire includes:
- Turbo – handles navigation, form submissions, and partial updates.
- Stimulus – adds light JavaScript behavior when needed.
- Turbo Streams – push real-time updates to the browser via websockets or polling.

🛠️ Setting Up Hotwire in Rails

If you created your app like this:

  rails new myapp -j esbuild

Then Turbo and Stimulus are already wired up.

Otherwise, install it manually:

  bundle add hotwire-rails
  bin/rails hotwire:install

✍️ Adding Action Text

To enable rich text (like this!), install Action Text:

  bin/rails action_text:install
  bin/rails db:migrate

Now you can use Trix-based editors and attach images/files out of the box.

💬 Creating a Model with Caption + Body

Let’s build a Post model with a"
  )

  post.banner_image.attach(
    io: File.open(Rails.root.join("public/train.jpg")),
    filename: "train.jpg"
  )
end
