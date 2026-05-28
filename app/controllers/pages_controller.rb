class PagesController < ApplicationController
  Author = Struct.new(:full_name)

  def index
    @posts = [
      { title: "Getting started with jet_ui", status: "published", author: Author.new("Carlos Pohlod"), body: "jet_ui is a ViewComponent-based UI library for Rails. Buttons, cards, badges, alerts, modals — all styled with Tailwind CSS v4." },
      { title: "Why ViewComponent?", status: "published", author: Author.new("Marina Faria"), body: "ViewComponent brings encapsulation and testability to Rails views. Each component is a Ruby object with its own template, easy to unit test." },
      { title: "Tailwind CSS v4", status: "draft", author: Author.new("Lucas Mendes"), body: "Tailwind v4 drops the config file and moves everything to CSS. Zero-config setup, faster builds, and better ergonomics out of the box." }
    ]
  end
end
