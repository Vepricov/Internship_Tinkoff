use Tink

--Выведите пилотов старше 45 лет, совершали полеты на самолетах с количеством
--пассажиров больше 30.

select Пилоты.[name] from Пилоты 
join Рейсы on (Пилоты.pilot_id = Рейсы.first_pilot_id or Пилоты.pilot_id = Рейсы.second_pilot_id)
join Самолёты on Рейсы.plane_id = Самолёты.plane_id 
where (Самолёты.cargo_flg = 0 and Рейсы.quantity > 30) and (Пилоты.age > 45)
group by Пилоты.[name]