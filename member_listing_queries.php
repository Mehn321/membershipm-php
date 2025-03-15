// Replace queries like this:
$sql = "SELECT m.*, t.type as membership_type_name FROM members m 
        LEFT JOIN membership_types t ON m.membership_type = t.membership_typeID";

// With queries that join the addresses table:
$sql = "SELECT m.*, a.city, a.country, a.postcode, t.type as membership_type_name 
        FROM members m 
        LEFT JOIN addresses a ON m.address_id = a.address_id
        LEFT JOIN membership_types t ON m.membership_type = t.membership_typeID";
