#9.13
#9.13.1
select users.id, users.first_name, users.last_name from users
JOIN users_roles ON users_roles.user_id = users.id
JOIN roles ON roles.id = users_roles.role_id
where roles.id = 3
order by users.last_name
  
#9.13.2
select roles.name as role,  count(users.id) as members from roles
join users_roles on users_roles.role_id = roles.id
join users on users.id  = users_roles.user_id
group by roles.name
order by roles.name;

#9.13.3
select users.id, users.first_name, users.last_name from users
join users_roles on users_roles.user_id = users.id
join roles on users_roles.role_id = roles.id
group by users.id
having count(roles.name) > 1
order by users.id;

#9.13.4
select users.id, users.first_name, users.last_name from users
left join users_roles on users_roles.user_id = users.id
left join roles on users_roles.role_id = roles.id
group by users.id
having count(roles.name) = 0
order by users.id;

#9.13.5

#9.13.6
#9.13.7
#9.13.8
#9.13.9
#9.13.10
#9.13.11
#9.13.12
#9.13.13
#9.13.14
