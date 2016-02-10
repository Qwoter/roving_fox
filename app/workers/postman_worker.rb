class PostmanWorker
  include Sidekiq::Worker

  def perform(h, count)
    h = JSON.load(h)
    ProductMailer.contact_email(h).deliver
  end
end
