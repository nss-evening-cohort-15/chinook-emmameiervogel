-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

-- Track name, album name
--media type, genre

SELECT t.Name TrackName,
       a.Title AlbumTitle,
       mt.Name MediaTypeName,
       g.Name GenreName
FROM Track t
INNER JOIN Album a ON t.AlbumId = a.AlbumId
INNER JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
INNER JOIN Genre g ON t.GenreId = g.GenreId;