require 'spec_helper'


describe  'Viewing the list of events' do
	it 'shows the event' do
		visit 'http://example.com/events'

		expect(page).to have_text('3 Events')
	end
end