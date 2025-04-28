const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const port = 3000;

app.use(cors());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

const dbConfig = {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'turath-project'
};
const pool = mysql.createPool(dbConfig);

// POST Contact Form
app.post('/submit-contact-form', (req, res) => {
    if (!req.body || Object.keys(req.body).length === 0) {
        return res.status(400).json({ success: false, message: 'No data received in the request body.' });
    }

    const { contactFirstName, contactLastName, contactGender, contactMobile, contactDob, contactEmail, contactLanguage, contactMessage } = req.body;

    if (!/^[A-Za-z\s]{2,30}$/.test(contactFirstName) || 
        !/^[A-Za-z\s]{2,30}$/.test(contactLastName) || 
        !/^\+9665\d{8}$/.test(contactMobile) || 
        !/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(contactEmail) || 
        contactMessage.length < 2 || 
        contactMessage.length > 300) {
        return res.status(400).json({ success: false, message: 'Invalid contact form data.' });
    }

    const query = 'INSERT INTO contacts (first_name, last_name, gender, mobile_number, date_of_birth, email, preferred_language, message) VALUES (?, ?, ?, ?, ?, ?, ?, ?)';
    const values = [contactFirstName, contactLastName, contactGender, contactMobile, contactDob, contactEmail, contactLanguage, contactMessage];

    pool.execute(query, values, (err, results) => {
        if (err) {
            console.error('Error inserting contact:', err);
            return res.status(500).json({ success: false, message: 'Server error.' });
        }
        return res.status(200).json({ success: true, message: 'Thank you for contacting us! Your message has been sent successfully 🌟' });
    });
});

// POST Reservation Form
app.post('/submit-reservation', (req, res) => {
    if (!req.body || Object.keys(req.body).length === 0) {
        return res.status(400).json({ success: false, message: 'No data received in the request body.' });
    }

    const { trip, name, email, phone, transaction, notes } = req.body;

    if (!trip || 
        name.trim().length < 2 || 
        !/^\+9665\d{8}$/.test(phone) || 
        !/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(email) || 
        !/^\d{4}$/.test(transaction)) {
        return res.status(400).json({ success: false, message: 'Invalid reservation data.' });
    }

    const query = 'INSERT INTO new_reservations (trip, full_name, email, phone, transaction, notes, reservation_date) VALUES (?, ?, ?, ?, ?, ?, NOW())';
    const values = [trip, name, email, phone, transaction, notes];

    pool.execute(query, values, (err, results) => {
        if (err) {
            console.error('Error inserting reservation:', err);
            return res.status(500).json({ success: false, message: 'Server error.' });
        }
        return res.status(200).json({ success: true, message: 'Thank you for your reservation! 🌟 Your trip is confirmed.' });
    });
});

app.listen(port, () => {
    console.log(`Server listening at http://localhost:${port}`);
});


// GET Reservations by Phone Number
app.get('/get-reservations-by-phone', (req, res) => {
    const phoneNumber = req.query.phone;
    
   
    if (!phoneNumber || !/^\+9665\d{8}$/.test(phoneNumber)) {
        return res.status(400).json({ 
            success: false, 
            message: 'Please provide a valid Saudi mobile number (+9665XXXXXXXX).' 
        });
    }

    const query = `
        SELECT 
            id,
            trip,
            full_name AS name,
            email,
            transaction,
            notes,
            DATE_FORMAT(reservation_date, '%Y-%m-%d %H:%i:%s') AS reservation_date
        FROM new_reservations 
        WHERE phone = ? 
        ORDER BY reservation_date DESC
    `;

    pool.execute(query, [phoneNumber], (err, results) => {
        if (err) {
            console.error('Database Error:', err);
            return res.status(500).json({ 
                success: false, 
                message: 'Database error occurred.'
            });
        }
        
        if (results.length === 0) {
            return res.status(200).json({ 
                success: true, 
                message: 'No reservations found for this phone number.',
                reservations: []
            });
        }
        
        return res.status(200).json({ 
            success: true, 
            message: 'Reservations retrieved successfully.',
            reservations: results
        });
    });
});

app.listen(port, () => {
    console.log(`Server listening at http://localhost:${port}`);
});
