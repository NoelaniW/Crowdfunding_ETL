create table Category (
    category_ids varchar(100) PRIMARY KEY,
    category varchar(100)
);

select * from Category

create table Subcategory (
    subcategory_ids varchar(100) PRIMARY KEY,
    subcategory varchar(100)
);

select * from Subcategory

create table Campaign (
    cf_id INTEGER,
    contact_id INTEGER PRIMARY KEY,
    company_name VARCHAR(100),
    description_ VARCHAR(100),
    goal DECIMAL(8,2),
    pledged DECIMAL(8,2),
    outcome VARCHAR(100),
    backers_count INTEGER,
    country VARCHAR(100),
    currency VARCHAR(100),
    launched_date DATE,
    end_date DATE,
    category_ids VARCHAR(100),
    subcategory_ids VARCHAR(100),
	foreign key (category_ids) references Category(category_ids),
	foreign key (subcategory_ids) references Subcategory(subcategory_ids)
);

select * from Campaign

create table Contacts (
    contact_id INTEGER,
    first_name varchar(100),
    last_name varchar(100),
    email varchar(100),
    foreign key (contact_id) references Campaign(contact_id)
);

select * from Contacts












