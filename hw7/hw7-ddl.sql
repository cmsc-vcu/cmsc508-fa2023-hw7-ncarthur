# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS peopleroles;
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    skills_id int not null,
    skills_name varchar(255) not null,
    skills_description varchar(255) not null,
    skills_tag varchar(255) not null,
    skills_url varchar(255),
    skills_time_commitment int,
    PRIMARY KEY (skills_id)
);

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

-- Populate the skills table with eight skills
INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES
    (1, 'Coding', 'Programming in various languages', 'Skill 1', 'https://example.com/skill1', 20),
    (2, 'Graphic Design', 'Creating visually appealing graphics', 'Skill 2', 'https://example.com/skill2', 15),
    (3, 'Data Analysis', 'Analyzing data sets for insights', 'Skill 3', 'https://example.com/skill3', 25),
    (4, 'Digital Marketing', 'Promoting products online', 'Skill 4', 'https://example.com/skill4', 10),
    (5, 'Creative Writing', 'Writing imaginative content', 'Skill 5', 'https://example.com/skill5', 12),
    (6, 'Video Editing', 'Editing and producing videos', 'Skill 6', 'https://example.com/skill6', 18),
    (7, 'Project Management', 'Managing projects effectively', 'Skill 7', 'https://example.com/skill7', 30),
    (8, 'Public Speaking', 'Effective communication to an audience', 'Skill 8', 'https://example.com/skill8', 8);


# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int NOT NULL,
    people_first_name varchar(255),
    people_last_name varchar(255) NOT NULL,
    people_email varchar(255),
    people_linkedin_url varchar(255),
    people_headshot_url varchar(255),
    people_discord_handle varchar(255),
    people_brief_bio varchar(4096),
    people_date_joined date NOT NULL,
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with ten people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES (1, 'John', 'Person 1', 'john.smith@email.com', 'https://www.linkedin.com/in/johnsmith', 'https://example.com/johnsmith_headshot.jpg', 'JohnSmith#1234', 'Software Engineer with 5 years of experience in web development.', '2023-01-15');

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES (2, 'Sarah', 'Person 2', 'sarah.johnson@email.com', 'https://www.linkedin.com/in/sarahjohnson', 'https://example.com/sarahjohnson_headshot.jpg', 'SarahJ#5678', 'Marketing specialist passionate about digital advertising.', '2022-11-30');

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES (3, 'Michael', 'Person 3', 'michael.brown@email.com', 'https://www.linkedin.com/in/michaelbrown', 'https://example.com/michaelbrown_headshot.jpg', 'MBrown#9876', 'Data scientist with expertise in machine learning and data analysis.', '2023-02-10');

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES (4, 'Emily', 'Person 4', 'emily.davis@email.com', 'https://www.linkedin.com/in/emilydavis', 'https://example.com/emilydavis_headshot.jpg', 'EmilyD#6543', 'Graphic designer with a passion for visual storytelling.', '2023-04-18');

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES (5, 'David', 'Person 5', 'david.wilson@email.com', 'https://www.linkedin.com/in/davidwilson', 'https://example.com/davidwilson_headshot.jpg', 'DavidW#3210', 'Environmental scientist dedicated to sustainability initiatives.', '2022-09-07');

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES (6, 'Olivia', 'Person 6', 'olivia.anderson@email.com', 'https://www.linkedin.com/in/oliviaanderson', 'https://example.com/oliviaanderson_headshot.jpg', 'OliviaA#7890', 'Journalist covering international affairs and politics.', '2022-12-05');

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES (7, 'James', 'Person 7', 'james.miller@email.com', 'https://www.linkedin.com/in/jamesmiller', 'https://example.com/jamesmiller_headshot.jpg', 'JamesM#4567', 'Financial analyst specializing in stock market trends.', '2023-03-20');

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES (8, 'Sophia', 'Person 8', 'sophia.robinson@email.com', 'https://www.linkedin.com/in/sophiarobinson', 'https://example.com/sophiarobinson_headshot.jpg', 'SophiaR#9876', 'Educator passionate about innovative teaching methods.', '2022-08-12');

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES (9, 'Benjamin', 'Person 9', 'benjamin.harris@email.com', 'https://www.linkedin.com/in/benjaminharris', 'https://example.com/benjaminharris_headshot.jpg', 'BenH#3333', 'Architect with a focus on sustainable and eco-friendly design.', '2022-10-25');

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined)
VALUES (10, 'Chloe', 'Person 10', 'chloe.wright@email.com', 'https://www.linkedin.com/in/chloewright', 'https://example.com/chloewright_headshot.jpg', 'ChloeW#2222', 'Entrepreneur and small business owner in the fashion industry.', '2023-05-15');


# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    peopleskills_id int auto_increment primary key,
    skills_id int not null,
    people_id int not null,
    date_acquired date not null,
    FOREIGN KEY (skills_id) REFERENCES skills(skills_id),
    FOREIGN KEY (people_id) REFERENCES people(people_id)
);

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.

INSERT INTO peopleskills (skills_id, people_id, date_acquired)
VALUES
    (1, 1, '2023-01-15'),
    (3, 1, '2023-01-15'),
    (6, 1, '2023-01-15'),
    (3, 2, '2023-02-10'),
    (4, 2, '2023-02-10'),
    (5, 2, '2023-02-10'),
    (1, 3, '2023-03-05'),
    (5, 3, '2023-03-05'),
    (3, 5, '2023-03-20'),
    (6, 5, '2023-03-20'),
    (2, 6, '2023-04-02'),
    (3, 6, '2023-04-02'),
    (4, 6, '2023-04-02'),
    (3, 7, '2023-04-15'),
    (5, 7, '2023-04-15'),
    (6, 7, '2023-04-15'),
    (1, 8, '2023-05-01'),
    (3, 8, '2023-05-01'),
    (5, 8, '2023-05-01'),
    (6, 8, '2023-05-01'),
    (2, 9, '2023-05-15'),
    (5, 9, '2023-05-15'),
    (6, 9, '2023-05-15'),
    (1, 10, '2023-06-10'),
    (4, 10, '2023-06-10'),
    (5, 10, '2023-06-10');

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles (
    roles_id int,
    roles_name varchar(255),
    roles_sort_priority int,
    PRIMARY KEY(roles_id)
);


# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles(roles_id, roles_name, roles_sort_priority) values
    (1, 'Designer', 10),
    (2, 'Developer', 20),
    (3, 'Recruit', 30),
    (4, 'Team Lead', 40),
    (5, 'Boss', 50),
    (6, 'Mentor', 60);


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles (
    peopleroles_id INT AUTO_INCREMENT PRIMARY KEY,
    people_id INT NOT NULL,
    roles_id INT NOT NULL,
    FOREIGN KEY (people_id) REFERENCES people(people_id),
    FOREIGN KEY (roles_id) REFERENCES roles(roles_id)
);



# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

-- Populate peopleroles
INSERT INTO peopleroles (people_id, roles_id)
VALUES
    (1, 2), -- Person 1 is a Developer
    (2, 5), -- Person 2 is a Boss
    (2, 6), -- Person 2 is also a Mentor
    (3, 2), -- Person 3 is a Developer
    (3, 4), -- Person 3 is also a Team Lead
    (4, 3), -- Person 4 is a Recruit
    (5, 3), -- Person 5 is a Recruit
    (6, 2), -- Person 6 is a Developer
    (6, 1), -- Person 6 is also a Designer
    (7, 1), -- Person 7 is a Designer
    (8, 4), -- Person 8 is a Team Lead
    (8, 1), -- Person 8 is also a Designer
    (9, 2), -- Person 9 is a Developer
    (10, 2), -- Person 10 is a Developer
    (10, 1); -- Person 10 is also a Designer

