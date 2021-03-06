require 'spec_helper'

describe Flatrack::Response do
  include Flatrack::SiteHelper

  describe '#render' do
    it 'should render a page with a layout' do
      site do
        status, _, _ = get_page_response('index')
        expect(status).to eq 200
      end
    end

    it 'should render a page without a layout' do
      site do
        rm_rf 'layouts/layout.html.erb'
        status, _, _ = get_page_response('index')
        expect(status).to eq 200
      end
    end
  end
end
