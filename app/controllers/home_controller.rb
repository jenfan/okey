class HomeController < ApplicationController
	def index
		@posts = Post.all
		@news = News.all
	end

	def masters
		@masters = Master.all
	end
	def master
		@master = Master.find(params[:id])
	end

	def contacts
		@contacts = Contacts.first.body
	end

	def news
		@news = News.last(5)
	end
end
