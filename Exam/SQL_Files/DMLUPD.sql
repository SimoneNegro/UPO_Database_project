-- bannare un canale
UPDATE canale
SET ban = true
WHERE id = 1;

-- diventare affiliate
UPDATE utente
SET affiliate = true
WHERE (nickname, mintrasmessi, nummediaspect) IN (
    SELECT u.nickname, u.mintrasmessi, u.nummediaspect
    FROM canale c
    INNER JOIN segue s ON s.idcanale = c.id
    INNER JOIN utente u ON u.mail = c.mailstreamer
    WHERE u.affiliate = false
        AND u.mintrasmessi >= 500
        AND u.nummediaspect >= 3
    GROUP BY u.nickname, u.mintrasmessi, u.nummediaspect
    HAVING COUNT(s) >= 50
);

UPDATE utente
SET bit = 10.00
WHERE mail LIKE 'ernesto45@gmail.com';

