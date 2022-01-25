--create database Library_DB
--use Library_Db



--create table Genres(
--	genre_id int primary key identity,
--	genre_name nvarchar(30) not null unique
--)



--create table Authors(
--	author_id int primary key identity,
--	author_name nvarchar(60)
--)


--create table AuthorsGenres(
--	author_id int references Authors(author_id),
--	genre_id int references Genres(genre_id)
--)


--create table Books(
--	books_id int primary key identity,
--	book_name nvarchar(50) not null unique,
--	book_genre int references Genres(genre_id),
--	book_author int references Authors(author_id)
--)

--create table Customers(
--	customer_id int primary key identity,
--	customer_name nvarchar(50) not null ,
--	policy_number int not null ,
--	already_read int references Books(books_id)
--)

--drop table Customers

--insert into Genres(genre_name)
--values
--('Thriller'),
--('Horror'),
--('Mystery'),
--('Romance'),
--('Fantasy'),
--('Realism')

--insert into Authors(author_name)
--values
--('Charles Dickens'),
--('George Orwell'),
--('Francice Scott'),
--('Ernest Hemingway'),
--('Stephen King')

--insert into AuthorsGenres
--values
--(1, 4),
--(1, 5),
--(2, 3),
--(2, 5),
--(3, 1),
--(4, 4),
--(5, 2)

--select A.author_name, G.genre_name from AuthorsGenres AG
--join Authors A
--on A.author_id = AG.author_id
--join Genres G
--on G.genre_id = AG.genre_id
--order by A.author_name

--insert into Books(book_name, book_genre, book_author)
--values
--('1408', 2, 5),
--('The chimes', 2, 1),
--('George Orwell Essays', 6, 2),
--('Coming First', 4, 3),
--('Dateline: Toronto', 5, 4),
--('Doctor Sleep', 6, 5)

--insert into Customers(customer_name, policy_number, already_read)
--values
--('Akif', 111, 1),
--('Akif', 111, 2),
--('Murad', 222, 3),
--('Veli', 333, 4),
--('Tofiq', 444, 5);


-- 1. Hansi janra hansi kitablar aiddi

--select B.book_name, G.genre_name from Genres G
--join Books B
--on B.book_genre = G.genre_id

-- 2. Hansi Authorun hansi kitablari var

--select A.author_name, B.Book_name from Authors A
--join Books B
--on A.author_id = B.book_author
--order by B.Book_name

-- 3. Hansi Author hansi janrlarda yazir

--select A.author_name, G.genre_name from AuthorsGenres AG
--join Authors A
--on A.author_id = AG.author_id
--join Genres G
--on G.genre_id = AG.genre_id
--order by A.author_name

-- 4. Hansi Customer hansi kitablari oxuyub

--select C.customer_name, B.book_name from Customers C
--join Books B
--on C.already_read = B.books_id