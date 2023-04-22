SELECT HaveAirConditioner, COUNT(RoomID)
FROM Rooms
GROUP BY HaveAirConditioner;