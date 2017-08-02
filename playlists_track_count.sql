/* Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.*/

SELECT p.Name AS "Playlist", COUNT(t.trackid) AS "# of Tracks"
FROM playlist p, track t, playlisttrack pt
WHERE p.playlistid = pt.playlistid AND t.trackid = pt.trackid
GROUP BY p.playlistid