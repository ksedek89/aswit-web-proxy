create table user(
    id int auto_increment,
    name varchar(500),
    surname varchar(500),
    login varchar(500) unique,
    password varchar(500),
    email varchar(500) unique,
    create_date timestamp,
    primary key(id)
);

create table activation_link(
    id int auto_increment,
    uuid varchar(500),
    active int,
    user_id int,
    create_date timestamp,
    primary key(id),
    FOREIGN KEY (user_id) REFERENCES user (id)
);

create table newsletter_mail(
    id int auto_increment,
    email varchar(500) unique,
    active int,
    create_date timestamp,
    primary key (id)
);

create table newsletter(
    id int auto_increment,
    content text,
    create_date timestamp,
    primary key (id)
);

create table newsletter_newsletter_mail(
   id int auto_increment,
   newsletter_id int,
   newsletter_mail_id int,
   primary key (id),
   FOREIGN KEY (newsletter_mail_id) REFERENCES newsletter_mail(id),
   FOREIGN KEY (newsletter_id) REFERENCES newsletter(id)
);

drop table activation_link;
drop table user;
drop table newsletter_mail;
drop table newsletter;