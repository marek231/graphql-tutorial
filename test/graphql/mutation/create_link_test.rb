require 'test_helper'

class Mutations::CreateLinkTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateLink.new(object: nil, context: {}).resolve(args)
  end

  test 'create a new link' do
    link = perform(
      url: 'http://cucu.org',
      description: 'Best website!'
    )

    assert link.persisted?
    assert_equal link.description, 'Best website!'
    assert_equal link.url, 'http://cucu.org'
  end
end
