-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT COUNT(t.TrackId),
       p.Name PlaylistName
FROM PlaylistTrack plt
INNER JOIN Track t ON plt.TrackId = t.TrackId
INNER JOIN Playlist p ON p.PlaylistId = plt.PlaylistId
GROUP BY p.PlaylistId;