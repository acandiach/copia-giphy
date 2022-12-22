require "test_helper"

class PublicationTest < ActiveSupport::TestCase
  test 'No se puede guardar la publicacion sin texto' do
    products(:publication_one, :publication_two).each do |publication|
      res = publication.valid?
      assert_equal false, res, "No estan validando el dato #{publication.title}"
    end
  end
end
