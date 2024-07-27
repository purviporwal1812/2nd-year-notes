select * from course;
select * from instructor;
select * from department;
select * from section;
select * from teaches;

select building , capacity from classroom;


select name from instructor
where salary < (select avg(salary) from instructor where dept_name = 'Comp. Sci.');

select count(*) from teaches
	where semester = 'Spring' and year = '2009';
select i.name from instructor as i 
	join teaches as t
	on i.id = t.id
	where t.semester = 'Spring' and t.year = '2009';


select c.title from course as c
	join section as s
	on c.course_id = s.course_id
	where s.building = 'Watson' and s.semester = 'Spring';

select id , name from instructor as i 

select c.course_id , c.title from course c
	join teaches as t
	on c.course_id = t.course_id
	join instructor as i
	on t.id = i.id
	where name = 'Srinivasan';
	
select c.title , c.dept_name from course as c
join department d
on c.dept_name = d.dept_name
	join instructor i 
	on d.dept_name = i.dept_name
where i.name = 'Katz' and d.building = 'Taylor';

