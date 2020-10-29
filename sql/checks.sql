# verify that we can match players in drafts to players in playerseason
use nhldrafts;
create table _tempplayers as
select d.Player as dplayer, ps.Player as psplayer, ps.Season, ps.Team as psteam, d.Team as dteam
from drafts d
inner join
playerseason ps 
on 
d.Player = ps.Player;

select count(*) from (
	select DISTINCT psplayer from _tempplayers t
	inner join
	drafts d
	on d.Player = t.psplayer
) a;
select count(*) from drafts;
SELECT COUNT(*) from playerseason;
