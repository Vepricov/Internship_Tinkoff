use Tink

--Напишите запрос, который выведет пилотов, которые в качестве второго пилота в
--августе этого года трижды ездили в аэропорт Шереметьево

select name  from Пилоты 
where (select count(*) from Рейсы 
where destination = 'Шереметьево' and flight_dt between '2021-08-01' and '2021-08-31'
and Пилоты.pilot_id = Рейсы.second_pilot_id) = 3