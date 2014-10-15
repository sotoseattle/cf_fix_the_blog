namespace :load do
  desc "loads a shit-ton of posts, comments, and replies into the blog"
  task :blog => :environment do
    100.times do
      p = Post.create(
        title: Faker::Company.catch_phrase,
        body: Faker::Lorem.paragraphs.join("\n")
      )

      100.times do
        c = p.comments.build(body: Faker::Lorem.paragraphs.join("\n"))
        r = c.replies.build(body: Faker::Lorem.paragraphs.join("\n"))
        p.save!
      end

      print "."
    end
  end
end
