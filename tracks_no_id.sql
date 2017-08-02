/*Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.*/

SELECT t.name AS "Track", a.title AS "Album Name", m.name AS "Media Type", g.name AS "Genre"
FROM track t, album a, mediatype m, genre g
WHERE t.albumid = a.albumid AND t.mediatypeid = m.mediatypeid AND t.genreid = g.genreid