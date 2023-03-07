use got; 

-- 1)  Quais os 5 episódios mais comentados pela internet?
select season, episode, users_reviews from got_episodes_v4 order by users_reviews desc;

-- 2) Quais temporadas e episódios foram dirigidos por Alan Taylor?
select season, episode from got_episodes_v4 where director = 'Alan Taylor';

-- 3) Quais casas estão localizadas no Norte (North)?
select house_name from houses_v1 where region = 'north';

-- 4) Quantas familias tem a série e quantas são das Ilhas de Ferro (Iron Islands)?
SELECT count(house_name) FROM houses_v1;
select count(region) from houses_v1 where region like 'iron islands%';

-- 5) Qual temporada (season) tem mais episódios com nota acima de 9? 
select season, episode, rating from got_episodes_v4 where rating>9;
