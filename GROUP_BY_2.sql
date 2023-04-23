SELECT RoomType, COUNT(RoomID) AS CountRoom
FROM Rooms
GROUP BY RoomType;