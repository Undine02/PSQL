select g.genre_name, count(p.performern_name)
from genres as g
left join performer_genres as pg on g.id = pg.genres_id
left join performer as p on pg.performer_id = p.id
group by g.genre_name
order by count(p.id) DESC


select t.track_name, a.release_year
from album as a
left join track as t on t.albumid = a.id
where (a.release_year >= 2019) and (a.release_year <= 2020)


select a.album_name, AVG(t.duration)
from album as a
left join track as t on t.albumid = a.id
group by a.album_name
order by AVG(t.duration)


select distinct p.performern_name
from performer as p
where p.performern_name not in (
    select distinct p.performern_name
    from performer as p
    left join performer_album as pa on p.id = pa.performer_id
    left join album as a on a.id = pa.album_id
    where a.release_year = 2020
)
order by p.performern_name


select distinct c.collection_name
from collection as c
left join collection_tracks as ct on c.id = ct.collection_id
left join track as t on t.id = ct.track_id
left join album as a on a.id = t.albumid
left join performer_album as pa on pa.album_id = a.id
left join performer as p on p.id = pa.performer_id
where p.performern_name like '%%Igor_Butman%%'
order by c.collection_name


select a.album_name
from album as a
left join performer_album as pa on a.id = pa.album_id
left join performer as p on p.id = pa.performer_id
left join performer_genres as pg on p.id = pg.performer_id
left join genres as g on g.id = pg.genres_id
group by a.album_name
having count(distinct g.genre_name) > 1
order by a.album_name


select t.track_name
from track as t
left join collection_tracks as ct on t.id = ct.track_id
where ct.track_id is null


select p.performern_name, t.duration
from track as t
left join album as a on a.id = t.albumid
left join performer_album as pa on pa.album_id = a.id
left join performer as p on p.id = pa.performer_id
group by p.performern_name, t.duration
having t.duration = (select min(duration) from track)
order by p.performern_name


select distinct a.album_name
from album as a
left join track as t on t.albumid = a.id
where t.albumid in (
    select albumid
    from track
    group by albumid
    having count(id) = (
        select count(id)
        from track
        group by albumid
        order by count
        limit 1
    )
)
order by a.album_name
