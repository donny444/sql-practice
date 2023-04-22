SELECT RoomType, COUNT(RoomID)
FROM Rooms
GROUP BY RoomType;