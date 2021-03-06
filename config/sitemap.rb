require 'aws-sdk-s3'
SitemapGenerator::Sitemap.compress = false
# Your website's host name
SitemapGenerator::Sitemap.default_host = "https://www.Islam4kids.academy"
# The remote host where your sitemaps will be hosted
SitemapGenerator::Sitemap.sitemaps_host = "https://atayl16-course-app.s3.amazonaws.com/sitemap.xml"

SitemapGenerator::Sitemap.adapter = SitemapGenerator::AwsSdkAdapter.new(
  "atayl16-course-app",
  aws_access_key_id: Rails.application.credentials.dig(:aws, :access_key_id),
  aws_secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
  aws_region: "us-east-1"
)

SitemapGenerator::Sitemap.create do

  add new_user_registration_path, priority: 0.7, changefreq: 'monthly'
  add new_user_session_path, priority: 0.7, changefreq: 'monthly'
  add tags_path, priority: 0.3, changefreq: 'monthly'
  add courses_path, priority: 0.7, changefreq: 'daily'

  Course.where(approved: true, published: true).find_each do |course|
    add course_path(course), :lastmod => course.updated_at
  end
end
