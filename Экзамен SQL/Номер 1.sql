use Tink

--�������� ������, ������� ������� �������, ������� � �������� ������� ������ �
--������� ����� ���� ������ ������ � �������� �����������

select name  from ������ 
where (select count(*) from ����� 
where destination = '�����������' and flight_dt between '2021-08-01' and '2021-08-31'
and ������.pilot_id = �����.second_pilot_id) = 3