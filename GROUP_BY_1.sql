SELECT HaveAirConditioner, COUNT(RoomID) AS CountRoom
FROM Rooms
GROUP BY HaveAirConditioner;