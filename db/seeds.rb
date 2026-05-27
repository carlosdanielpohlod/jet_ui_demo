Post.find_or_create_by!(title: "Getting started with jet_ui") do |p|
  p.body   = "jet_ui is a ViewComponent-based UI library for Rails. It ships with buttons, cards, badges, alerts, modals, and more — all styled with Tailwind CSS v4."
  p.status = "published"
end

Post.find_or_create_by!(title: "Why ViewComponent?") do |p|
  p.body   = "ViewComponent brings encapsulation and testability to Rails views. Each component is a Ruby object with its own template, making UI logic easy to unit test."
  p.status = "published"
end

Post.find_or_create_by!(title: "Tailwind CSS v4") do |p|
  p.body   = "Tailwind v4 drops the config file and moves everything to CSS. Zero-config setup, faster builds, and better ergonomics out of the box."
  p.status = "draft"
end
