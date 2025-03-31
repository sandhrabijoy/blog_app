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

post1 = Post.find_by(title: "⚡ Ruby on Rails + Hotwire + Action Text: Building Reactive Rich Text Apps")

if !post1
  post1 = Post.create(
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
  post1.banner_image.attach(
    io: File.open(Rails.root.join("public/train1.jpg")),
    filename: "train1.jpg"
  )
end

post2 = Post.find_by(title: "🌟 Why Ruby on Rails is Better Than Other Programming Languages")

if !post2
  post2 = Post.create(
    title: "🌟 Why Ruby on Rails is Better Than Other Programming Languages",
    body: "Ruby on Rails has long been praised for its simplicity, productivity, and robustness, and for good reason. When compared to other programming frameworks or languages, Rails stands out for its strong conventions, rich ecosystem, and developer-friendly features. Here's why Rails remains the go-to choice for modern web development in 2024:

⚡ Developer Productivity

One of the strongest points in favor of Ruby on Rails is its focus on developer productivity. Rails follows the principle of Convention over Configuration, meaning developers don't need to spend time on repetitive configuration tasks. This leads to faster development, reduced boilerplate, and more time spent on building the actual features of your application.

📦 Rich Ecosystem and Libraries

Rails comes with a vast collection of libraries (gems) that make it easy to add functionality to your app. Whether you're looking for authentication, payment gateways, background job processing, or file uploads, Rails has a gem for it. This rich ecosystem saves you from reinventing the wheel and allows you to focus on building unique business logic.

🧑‍💻 Rails Is Full-Stack, No Need for Additional Complexity

Unlike many modern JavaScript frameworks that require a frontend framework (like React or Vue.js) to build dynamic web applications, Rails offers an integrated full-stack solution. With Rails' built-in tools like Turbo (for faster navigation) and Hotwire (for real-time updates), you can build interactive web apps without needing to manage a separate JavaScript codebase.

🔥 Active Record: An Elegant ORM

Rails' Active Record ORM (Object-Relational Mapping) simplifies working with databases. You don't need to write raw SQL queries to interact with your database — Active Record lets you work with objects and relationships directly, making database interactions more intuitive and less error-prone.

💡 Built-In Security

Security is a top priority in modern web development, and Rails has built-in protections against common web vulnerabilities like SQL injection, XSS (Cross-Site Scripting), and CSRF (Cross-Site Request Forgery). Rails also encourages best practices, helping developers build secure applications from the start.

🔧 Easy to Scale

Although Ruby on Rails is often associated with rapid prototyping, it can scale to meet the demands of large production applications. With proper architecture and the use of background jobs, caching, and database optimization, Rails can handle high traffic with ease.

🚀 Get Started Quickly

Rails is perfect for both beginner and experienced developers. Thanks to its intuitive conventions and excellent documentation, you can quickly get started building your first app. And for more experienced developers, Rails’ flexibility and extensibility allow you to build sophisticated applications with complex requirements.

🛠️ Rails Makes it Easy to Add New Features

Whether you need to add authentication, background jobs, or RESTful APIs, Rails makes it easy with minimal effort. Libraries like Devise (for authentication) and Sidekiq (for background jobs) integrate seamlessly into your app, allowing you to build feature-rich applications quickly.

💬 Conclusion: Why Choose Ruby on Rails?

Ruby on Rails offers a developer experience that's hard to match. It's powerful, flexible, and easy to use, making it an excellent choice for developers building modern web applications. Whether you're starting a startup, working on a personal project, or maintaining a large-scale enterprise application, Rails offers the tools and productivity to help you succeed.

📦 Setup Rails in a Flash

To start a new Rails app, simply run:

  rails new myapp

And you're off to the races. With its built-in tooling, Rails provides everything you need to start developing immediately.

👨‍💻 If you’re a web developer looking for an elegant and powerful framework, Ruby on Rails is the clear choice in 2024. Its rich features, strong community, and focus on developer productivity make it a framework that keeps delivering value. Don’t just take our word for it — try it for yourself!

📸 Attach a banner image showing Rails' simplicity and power in action."

  )

  post2.banner_image.attach(
    io: File.open(Rails.root.join("public/rails.jpg")),
    filename: "rails.jpg"
  )
end
post3 = Post.find_by(title: "🔥 How Hotwire Can Be Used to Build Native Apps in Ruby on Rails")

if !post3
  post3 = Post.create(
    title: "🔥 How Hotwire Can Be Used to Build Native Apps in Ruby on Rails",
    body: "Hotwire is a modern approach to building fast, real-time applications in Ruby on Rails without the need for heavy JavaScript frameworks. By leveraging Hotwire's Turbo and Stimulus, you can create dynamic native-like applications with much less overhead. Here’s how you can take advantage of Hotwire for native-like app experiences:

📱 Native-Like User Experience with Turbo

Turbo is the heart of Hotwire, enabling native-like interactions in web applications. Turbo works by replacing entire pages or fragments of a page dynamically, providing instant updates without the need for full-page reloads. When combined with Rails, Turbo can give your web app a native app feel, providing smooth transitions, fast navigation, and minimal latency.

💻 Real-Time Features with Stimulus

While Turbo handles page navigation, Stimulus provides the interactivity that you need. Stimulus allows you to write small, targeted JavaScript controllers that handle client-side actions without overwhelming your codebase. This enables real-time updates, notifications, and even complex UI features, all without requiring a dedicated frontend framework.

⚡ Hotwire: A Full-Stack Solution

Hotwire brings together Turbo and Stimulus to create a powerful full-stack solution in Rails. With Hotwire, you can build sophisticated, interactive web apps without relying on frameworks like React, Angular, or Vue.js. The simplicity of using Rails as the backend and Hotwire for front-end interactivity makes it easy to manage and maintain the application without the need to juggle multiple languages or codebases.

🌐 Push Notifications and Real-Time Updates

With Hotwire, it's easy to add real-time notifications and updates to your application. You can use Turbo Streams to automatically update parts of your page, providing a seamless, real-time user experience. This is perfect for apps where you need to deliver live data, such as chat apps, dashboards, and social media feeds.

🛠️ Building a Native-Like App in Rails

To build a native-like app using Rails and Hotwire, you can integrate Turbo and Stimulus directly into your application. Rails 7 makes it easy to get started with Hotwire, offering built-in support for both Turbo and Stimulus.

To get started with Hotwire, run the following command:

  rails hotwire:install

This command sets up Turbo and Stimulus in your Rails app, allowing you to start building your interactive native-like app right away.

🔧 Integration with Native App Wrappers

While Hotwire provides native-like experiences in the browser, you can also wrap your Rails app in a native app shell using frameworks like [React Native](https://reactnative.dev/) or [Ionic](https://ionicframework.com/). This allows you to deliver a truly native app experience on iOS and Android, while still leveraging Rails on the backend for business logic, data storage, and more.

🌍 Progressive Web Apps (PWA)

By combining Hotwire with PWA technologies, you can take your web app even further. With PWA features, your app can work offline, be installed on a user's device, and behave even more like a native app, giving users a seamless experience whether they're online or offline.

🚀 Get Started with Hotwire Today

Hotwire is a game-changer for building fast, interactive web apps that feel like native apps. Whether you're building a real-time chat app, a dashboard, or a native app, Hotwire provides the tools you need to make your app snappy, responsive, and developer-friendly.

🧑‍💻 Conclusion: Why Use Hotwire for Native-Like Apps in Rails?

Hotwire allows Rails developers to create high-performance, real-time applications with ease. Its tight integration with Turbo and Stimulus makes it an excellent choice for building native-like web apps without the need for heavy JavaScript frameworks. For developers already familiar with Ruby on Rails, Hotwire provides a streamlined, efficient approach to building modern applications that run smoothly and deliver great user experiences.

📸 Attach a banner image showing a native-like app experience built with Hotwire in Rails."
  )

  post3.banner_image.attach(
    io: File.open(Rails.root.join("public/hotwire-native.jpg")),
    filename: "hotwire-native.jpg"
  )
end
