use Tink

--Выведите ТОП 10 пилотов-капитанов (first_pilot_id), которые совершили наибольшее
--число грузовых перелетов в этом году.

select top(10) Пилоты.[name] from Пилоты
left join Рейсы on Пилоты.pilot_id = Рейсы.first_pilot_id
left join Самолёты on Рейсы.plane_id = Самолёты.plane_id and Самолёты.cargo_flg = 1
group by Пилоты.[name]
order by count(Самолёты.cargo_flg) desc