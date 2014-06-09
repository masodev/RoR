module EventsHelper
def format_total_gross(event)
   if event.free?
     content_tag(:strong, 'Free!')
   else
     number_to_currency(event.price)
   end
 end
end
