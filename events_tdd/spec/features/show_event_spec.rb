require 'rails_helper'


describe "Viewing an individual event" do
  
  it "shows the event's details" do
    event = Event.create(name: "BugSmash",
                          location: "Denver",
                          price: 10.00,
                          description: 'A fun evening of bug smashing!',
                          starts_at: 10.days.from_now)

    
    visit event_url(event)

    expect(page).to have_text(event.name)
    expect(page).to have_text(event.location)
    expect(page).to have_text(event.description[0..10])
    expect(page).to have_text(event.starts_at)
    expect(page).to have_text("$10.00")
  end
  
end