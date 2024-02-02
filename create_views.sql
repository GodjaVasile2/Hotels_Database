
-- Outstanding Invoices View: 
-- This view shows all invoices that have not yet been paid (where payment_date is NULL).
-- In this way we are tracking which guests still owe money.


CREATE VIEW unpayed_invoices AS
    SELECT * FROM invoices 
    WHERE payment_date IS NULL; 


-- Guest Reviews View: 
-- This view shows all reviews left by guests, along with the guest and hotel information.


CREATE VIEW guest_reviews AS 
    SELECT 
        r.id,
        r.message, 
        r.review_date, 
        g.first_name || g.last_name AS guest_name,
        h.hotel_name 
    FROM REVIEWS r
    JOIN GUESTS g ON r.guest_id = g.id
    JOIN HOTELS h ON r.hotel_id = h.id;


-- Hotel Revenue View
-- This view shows the total revenue for each hotel, calculated from the invoice_amount of all paid invoices

CREATE VIEW hotel_revenue AS 
   SELECT DISTINCT
        h.id,
        h.hotel_name,
        SUM(i.invoice_amount) AS total_revenue,
        COUNT(i.id) AS number_of_reservations
    FROM INVOICES i 
    JOIN RESERVATIONS r ON i.guest_id = r.guest_id 
    JOIN ROOM_RESERVED rr on r.id = rr.reservation_id
    JOIN ROOMS ro ON rr.room_id = ro.id
    JOIN HOTELS h ON ro.hotel_id = h.id
    WHERE i.payment_date  IS NOT NULL
    GROUP BY h.id,h.hotel_name
    ORDER BY total_revenue DESC
    


