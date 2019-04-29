use assignment;
SELECT b.date as Date, b.`Close Price` as Bajaj, 
t.`Close Price` as TCS, v.`Close Price` as TVS,
i.`Close Price` as Infosys, e.`Close Price` as Eicher,
h.`Close Price` as Hero
FROM bajajauto b
    INNER JOIN eichermotors e ON b.Date = e.Date
    INNER JOIN heromotocorp h ON b.Date  = h.Date
    INNER JOIN infosys i ON b.Date = i.Date
    INNER JOIN tcs t ON b.Date = t.Date
    INNER JOIN tvsmotors v ON b.Date = v.Date;