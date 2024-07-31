-- Create Phishing_Type table
CREATE TABLE Phishing_Type (
    Phishing_type_id INT NOT NULL,
    Phishing_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (Phishing_type_id)
);

-- Create Date table
CREATE TABLE Date (
    Date_ID INT NOT NULL,
    Time TIME NOT NULL,
    Date DATE NOT NULL,
    PRIMARY KEY (Date_ID)
);

-- Create Target_Email table
CREATE TABLE Target_Email (
    Target_Email_ID INT NOT NULL,
    Target_Email_Type ENUM('Business', 'Personal') NULL,
    PRIMARY KEY (Target_Email_ID)
);

-- Create Platform table
CREATE TABLE Platform (
    Platform_ID INT NOT NULL,
    Platform_Name VARCHAR(100) NULL,
    PRIMARY KEY (Platform_ID)
);

-- Create Cybercriminal_Information table
CREATE TABLE Cybercriminal_Information (
    Criminal_ID INT NOT NULL,
    Email_address VARCHAR(300) NULL,
    Number CHAR(10) NULL,
    Website VARCHAR(300) NULL,
    PRIMARY KEY (Criminal_ID)
);

-- Create Content table
CREATE TABLE Content (
    Content_ID INT NOT NULL,
    Subject_Line TINYTEXT NULL,
    Image_used TEXT NULL,
    Attachment_Used TEXT NULL,
    Danger_Type TINYTEXT NULL,
    GRAMMAR_ERRORS INT NULL,
    Spelling_Errors INT NULL,
    Offer VARCHAR(300) NULL,
    PRIMARY KEY (Content_ID)
);

-- Create Reporting_User table
CREATE TABLE Reporting_User (
    Reporting_User_ID INT NOT NULL,
    Industry_Targeted ENUM('Banking', 'Healthcare', 'Technology', 'Other') NULL,
    Reason_for_Reporting ENUM('Suspicious', 'Confirmed Fraud', 'Other') NULL,
    Criminal_Posed_As VARCHAR(300) NULL,
    PRIMARY KEY (Reporting_User_ID)
);

-- Define primary keys and foreign keys (if any additional relationships are needed, specify them here)
-- Example of a foreign key relationship:
-- ALTER TABLE Reporting_User ADD CONSTRAINT FK_Criminal_ID FOREIGN KEY (Criminal_ID) REFERENCES Cybercriminal_Information(Criminal_ID);

-- Insert data into Phishing_Type table
INSERT INTO Phishing_Type (Phishing_type_id, Phishing_name)
VALUES (1, 'Email Phishing');

-- Insert data into Date table
INSERT INTO Date (Date_ID, Time, Date)
VALUES (1, '12:00:00', '2023-11-22');

-- Insert data into Target_Email table
INSERT INTO Target_Email (Target_Email_ID, Target_Email_Type)
VALUES (1000000001, 'Business');

-- Insert data into Platform table
INSERT INTO Platform (Platform_ID, Platform_Name)
VALUES (1, 'Email');

-- Insert data into Cybercriminal_Information table
INSERT INTO Cybercriminal_Information (Criminal_ID, Email_address, Number, Website)
VALUES (1, 'phish@gmail.com', '1234567890', 'phishingsite.com');

-- Insert data into Content table
INSERT INTO Content (Content_ID, Subject_Line, Image_used, Attachment_Used, Danger_Type, GRAMMAR_ERRORS, Spelling_Errors, Offer)
VALUES (1, 'ACTION NEEDED', 'image.png', 'attachment1.zip', 'Ransomware', 2, 1, 'Get a $1,000 if you download');

-- Insert data into Reporting_User table
INSERT INTO Reporting_User (Reporting_User_ID, Industry_Targeted, Reason_for_Reporting, Criminal_Posed_As)
VALUES (1, 'Banking', 'Suspicious', 'Bank Sponsor');



SELECT * FROM Content WHERE Image_used = 'image.png';