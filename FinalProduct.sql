select title, publisherName,author.authorSurname
from book
join publisher on publisher.publisherID = book.publisherID
join country on country.countryId = publisher.countryId
join author on author.countryId = country.countryId
where author.authorSurname = "Tolkein";

select title, count(saleLine.quantity),saleTotal
from saleLine
join sale on sale.saleID = saleLine.saleID
join book on book.bookID = saleLine.bookID
GROUP BY book.title;

select title
from book
where bookId not in (select distinct bookId from saleLine);

select countryName,count(authorFirst)
from country 
left JOIN author ON country.countryId = author.countryId
GROUP BY country.countryName;

# Our own created queries
select title, authorFirst
from bookauthor
join author on author.authorID = bookauthor.authorID
join book on book.bookID = bookauthor.bookID
where authorFirst  Like "A%";

select title,price
from book 
where price >= 10;

select publisherName, count(bookID)
from publisher
join book on book.publisherID = publisher.publisherID
group by publisherName;

select title, sum(saleLine.quantity)
from book
left join saleLine on book.bookID = saleLine.bookID
group by title;

select countryName,count(publisher.publisherID)
from country 
left join publisher on publisher.countryId = country.countryId
group by countryName;


