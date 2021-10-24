CREATE TABLE Users (
    user_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255)
);

INSERT INTO Users (user_id, password, name, email)  
   VALUES ('ramu24', 'RamuK', 'Ramu Kothapalli', 'ram.k@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('sureshV', 'INsta123', 'Suresh Vellore', 'suresh.v@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('someshRocz', 'somuInsta', 'Somesh V', 'somu.v@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('sukesh', 'sukeshIMDB', 'Sukesh', 'sukesh@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('rameshM', 'ramDB', 'Ramesh M', 'ramesh.m@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('mahesh40', 'm40DB', 'Mahesh G V', 'mahesh@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('pavanK', 'pavanK', 'Pavan Kalyan', 'pavan@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('vijay', 'vijayD', 'Vijay D', 'vijay@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('nikhil', 'IMDB123', 'Nikhil V', 'nikhil@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('ajayD', 'pwd@IMDB', 'Ajay D', 'ajay@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('salman', 'salman123', 'Salman Khan', 'salman@relevel.com');
INSERT INTO Users (user_id, password, name, email)
   VALUES ('vikky', 'vikkyIMDB', 'Vikky K', 'vikky@relevel.com');

   
CREATE TABLE Admin (
    user_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255)
);

INSERT INTO Admin (user_id, password, name, email)
   VALUES ('tanmay', 'tanmayMS', 'Tanmay Bhat', 'tanmay@relevel.com');

   
CREATE TABLE Categories (
    categoty varchar(255) PRIMARY KEY
);

INSERT INTO Categories (categoty)  
   VALUES ('books');
INSERT INTO Categories (categoty) 
   VALUES ('movies');
INSERT INTO Categories (categoty) 
   VALUES ('websites');
INSERT INTO Categories (categoty) 
   VALUES ('restaurant');
INSERT INTO Categories (categoty) 
   VALUES ('web series');
INSERT INTO Categories (categoty) 
   VALUES ('computers');
   
CREATE TABLE Businesses (
    business_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    categoty varchar(255) references Categories(categoty),
    sub_category varchar(255),
    business_name varchar(255),
    address varchar(255),
    description varchar(255),
    status varchar(255)
);

INSERT INTO Businesses (categoty, sub_category, business_name, address, status)
   VALUES ('restaurant', 'cafe', 'The Local Madrasi','95/7, Gramani Street, 
Rajeswari Colony, Virugambakkam, Chennai, Tamil Nadu 600092','active');
INSERT INTO Businesses (categoty, sub_category, business_name, address,description, status)
      VALUES ('restaurant', 'pub', 'Hyper Local','LN Terminus, 3rd floor, 
Gachibowli - Miyapur Rd, Jayabheri Enclave, Gachibowli, Hyderabad, Telangana 500032','Chinese, Continental, 
North Indian. Cost for two ~RS. 1700','active');
INSERT INTO Businesses (categoty, sub_category, business_name, address,description, status)
        VALUES ('restaurant', 'pub', 'Pakka Local Bar','6, Town Centre, Andheri Kurla Road, Sakinaka, 
Mittal Industrial Estate, Marol, Andheri East, Mumbai, Maharashtra 400059', 'Chinese, Continental, 
North Indian. Cost for two ~RS. 1500','active');
INSERT INTO Businesses (categoty, sub_category, business_name, description, status)  
   VALUES ('books', 'Novels','I Too had a love story','A love story - Ravinder Singh','active');
INSERT INTO Businesses (categoty, sub_category, business_name, description, status)  
   VALUES ('books', 'Horrer','House of Leaves','A Horrer Novel by Mark Z. Danielewski','active');
INSERT INTO Businesses (categoty, sub_category, business_name, description, status)
   VALUES ('web series', 'Sitcom', 'How I met your mother', 'A sitcom about how Ted Mosbey meets Mother', 'pending');

   
CREATE TABLE Drafts (
    draft_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    business_id INTEGER references Businesses(business_id),
    rating DECIMAL,
    review_heading varchar(255),
    review varchar(2000)
);

INSERT INTO Drafts (user_id, business_id, rating, review_heading,review)  
   VALUES ('rameshM', 1, 4, 'Loved this Place', 'Good place to hangout 
with friends the ambunce and food are good.');
INSERT INTO Drafts (user_id, business_id, rating, review_heading,review)  
   VALUES ('rameshM', 2, 1.5, 'Worst Place', 'Food is not good');
INSERT INTO Drafts (user_id, business_id, rating, review_heading,review)  
   VALUES ('rameshM', 3, 4, 'Loved this Place', 'Good place to hangout with friends
 the ambunce and food are good.');
   
CREATE TABLE Reviews (
    review_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    business_id INTEGER references Businesses(business_id),
    rating DECIMAL,
    review_heading varchar(255),
    review varchar(2000)
);


INSERT INTO Drafts (user_id, business_id, rating, review_heading,review)  
   VALUES ('ramu24', 1, 3.2, 'Average Place', 'Food is okay');
INSERT INTO Drafts (user_id, business_id, rating, review_heading,review)  
   VALUES ('sureshV', 1, 3.2, 'Average Place', 'Food is okay');
INSERT INTO Drafts (user_id, business_id, rating, review_heading,review)  
   VALUES ('someshRocz', 2, 4, 'Loved this Place', 'Good place to hangout with friends
 the ambunce and food are good.');
INSERT INTO Drafts (user_id, business_id, rating, review_heading,review)  
   VALUES ('sukesh', 2, 4, 'Loved this Place', 'Good place to hangout 
with friends the ambunce and food are good.');
INSERT INTO Drafts (user_id, business_id, rating, review_heading,review)  
   VALUES ('mahesh40', 3, 3.6, 'Worst Place', 'Food is not good');
INSERT INTO Drafts (user_id, business_id, rating, review_heading,review)  
   VALUES ('rameshM', 3, 3.6, 'Average Place', 'Food is okay');