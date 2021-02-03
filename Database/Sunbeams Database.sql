CREATE DATABASE IF NOT EXISTS `Sunbeams Database`;
CREATE TABLE IF NOT EXISTS `I And E Exp` (
	`I-And-E-Exp-ID` INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`Std-Fee-SUM` INTEGER,
	`Grant-from-HO` INTEGER,
	`Total-Income` INTEGER,
	`Canteen` INTEGER,
	`Dues-not-Received` INTEGER,
	`Equity-Maintainance` INTEGER,
	`Empl-Sal-Sum` INTEGER,
	`Photo-Copy-And-Stationary` INTEGER,
	`Refreshment-Supply` INTEGER,
	`Rent-for-Building` INTEGER,
	`Stationary` INTEGER,
	`TextBooks` INTEGER,
	`Uniform` INTEGER,
	`Utilities` INTEGER,
	`Monthly-Exp` INTEGER,
	`Month` VARCHAR(15),
	`Year` INTEGER,
	`other-exp` INTEGER,
	`Total-Expenses` INTEGER,
	`Total-Dues` INTEGER
);
CREATE TABLE IF NOT EXISTS `Office Details` (
	`Off-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`Office-Name`	VARCHAR(30) NOT NULL,
	`Office-Type`	VARCHAR(30),
	`All-SCLDET-ID`	INTEGER,
	`OFF-Address`	VARCHAR(50),
	`OFF-Phone.No.1`	VARCHAR(15),
	`OFF-Phone.No.2`	VARCHAR(15),
	`OFF-Email1`	VARCHAR(30),
	`OFF-Email2`	VARCHAR(30),
	`OFF-Email3`	VARCHAR(30),
	`OFF-Email4`	VARCHAR(30),
	`OFF-Email5`	VARCHAR(30),
	`Website`	VARCHAR(30),
	`FB-Page`	VARCHAR(30),
	`Twitter`	VARCHAR(30),
	`Instagram`	VARCHAR(30),
	`LinkedIn`	VARCHAR(30),
	`Youtube`	VARCHAR(30),
	PRIMARY KEY(`Off-ID`)
);
CREATE TABLE IF NOT EXISTS `School Detail` (
	`Scl-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`Scl-Name`	VARCHAR(50) NOT NULL,
	`Scl-Add`	VARCHAR(50),
	`Scl-Village`	VARCHAR(30),
	`Province`	VARCHAR(15),
	`Pin-Location`	VARCHAR(30),
	`Date of Establishment`	VARCHAR(30),
	`Level`	VARCHAR(50),
	`No. of Students`	INTEGER,
	`No. of Teachers`	INTEGER,
	`Stk-ID`	INTEGER,
	`Scl-Inv-ID`	INTEGER,
	`I-And-E-Income/Exp-ID`	INTEGER,
	`Project-ID`	INTEGER,
	`Sc-Phone`	VARCHAR(15),
	`Class-Min`	INTEGER,
	`Class-Max`	INTEGER,
	PRIMARY KEY(`Scl-ID`)
);
CREATE TABLE IF NOT EXISTS `Salary Slips` (
	`SS-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`Tch-St-ID`	INTEGER,
	`Salary-Month`	VARCHAR(15),
	`Salary-Year`	INTEGER,
	`Basic-Salary`	INTEGER,
	`Leave-Bank`	INTEGER,
	`DaysInMonth`	INTEGER,
	`Present`	INTEGER,
	`Absent`	INTEGER,
	`Leave`	INTEGER,
	`Earned-Salary`	INTEGER,
	`Travel-Allowance`	INTEGER,
	`Plus`	INTEGER,
	`Minus`	INTEGER,
	`Pay`	INTEGER,
	`Comments`	VARCHAR(255),
	`Amount Paid`	VARCHAR(50),
	`Salary Slip Sent`	VARCHAR(50),
	PRIMARY KEY(`SS-ID`)
);
CREATE TABLE IF NOT EXISTS `Teacher or Staff` (
	`Tch-St-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`Scl-ID`	INTEGER NOT NULL,
	`Tch-St-Name`	VARCHAR(30),
	`Tch-St-Designation`	VARCHAR(30),
	`Tch-St-Gender`	VARCHAR(30),
	`Tch-Class-Assigned`	VARCHAR(30),
	`Tch-St-Mob No.`	VARCHAR(15),
	`Tch-St-Salary`	INTEGER,
	`Tch-St-Experience`	VARCHAR(50),
	`Tch-St-DOB`	VARCHAR(30),
	`Tch-St-Res Add`	VARCHAR(50),
	`Matriculation`	VARCHAR(30),
	`Intermediate`	VARCHAR(30),
	`Graduation`	VARCHAR(30),
	`Post-Graduation`	VARCHAR(30),
	`Time-table`	VARCHAR(30),
	`Tch-St-DOJ`	VARCHAR(30),
	`Tch-St-Father/Spouse Name`	VARCHAR(30),
	`Tch-St-Email`	VARCHAR(30),
	`SS-ID`	INTEGER,
	`Off-Id`	INTEGER,
	FOREIGN KEY(`Off-Id`) REFERENCES `Office Details`(`Off-Id`),
	FOREIGN KEY(`SS-ID`) REFERENCES `Salary Slips`(`SS-ID`),
	FOREIGN KEY(`Scl-ID`) REFERENCES `School Detail`(`Scl-Id`),
	PRIMARY KEY(`Tch-St-ID`)
);

ALTER TABLE `Salary Slips`
ADD FOREIGN KEY (`Tch-St-ID`) REFERENCES `Teacher-OR-Staff`(`Tch-St-ID`) ON DELETE RESTRICT;

CREATE TABLE IF NOT EXISTS `Donor` (
	`Donor-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`Off-ID`	INTEGER,
	`Salutation`	VARCHAR(30),
	`Donor-Name`	VARCHAR(30) NOT NULL,
	`Date-on-Letter`	VARCHAR(30) NOT NULL,
	`Letter-Sent`	VARCHAR(30) NOT NULL,
	`Ref-Person`	VARCHAR(30),
	`Date-of-Donation`	VARCHAR(30),
	`Donated-Amount-Figure`	INTEGER,
	`Donated-amount-word`	VARCHAR(30) NOT NULL,
	`Supporting-Doc`	VARCHAR(30),
	`SP-ReciptNo`	INTEGER,
	`Mode-of-Payment`	VARCHAR(30),
	`Drawn-on-Bank`	VARCHAR(30),
	`Donor-Mobile`	VARCHAR(15) NOT NULL,
	`Donor-Email`	VARCHAR(30),
	`Donor-Workcontact`	VARCHAR(15),
	`Donor-Homecontact`	VARCHAR(15) NOT NULL,
	`Donor-Fb`	VARCHAR(30),
	`Donor-Whatsapp`	VARCHAR(30),
	`Donor-Address`	VARCHAR(50),
	`Donor-City`	VARCHAR(15),
	`Donor-Zipcode`	INTEGER,
	`Donor-Country`	VARCHAR(30),
	`NewsLetter-Sent`	VARCHAR(30),
	`FollowUp1-Date`	VARCHAR(30),
	`FollowUp1-Comments`	VARCHAR(50),
	`FollowUp2-Date`	VARCHAR(30),
	`FollowUp2-Comments`	VARCHAR(50),
	`FollowUp3-Date`	VARCHAR(30),
	`FollowUp3-Comments`	VARCHAR(50),
	PRIMARY KEY(`Donor-ID`)
);
CREATE TABLE IF NOT EXISTS `School Property` (
	`Scl-Inven_ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`RT for Nur`	INTEGER,
	`XSC for Nursery`	INTEGER,
	`SC for Prep`	INTEGER,
	`S2D for Prep`	INTEGER,
	`M2D for Cl 1/2`	INTEGER,
	`MC for Cl 1/2`	INTEGER,
	`Principal Off Table`	INTEGER NOT NULL DEFAULT 1,
	`Principal Chair`	INTEGER NOT NULL DEFAULT 1,
	`Visitor Chairs`	INTEGER,
	`L1D for Cl 3/4/5`	INTEGER,
	`Single Sofa Rex`	INTEGER,
	`Bulbs`	INTEGER NOT NULL,
	`Shelf-low for lib/off`	INTEGER,
	`ST for Canteen`	INTEGER,
	`Lookable Cabinets`	INTEGER,
	`Fans`	INTEGER,
	`Soft Board Large Wooden`	INTEGER,
	`LC for Cl 3/4/5`	INTEGER,
	`Small Teacher Table`	INTEGER,
	`L3D for Cl 3/4/5`	INTEGER,
	`Teacher Chairs`	INTEGER,
	`Reception Chair`	INTEGER,
	`Reception Table`	INTEGER,
	`Carpets`	INTEGER,
	`Lib Books`	INTEGER,
	`Computer`	INTEGER,
	`Electric Water Cooler`	INTEGER,
	`Glasses`	INTEGER,
	`Swing Indoor Play equ`	INTEGER,
	`Green Canvas for Shade`	INTEGER,
	`Steel/Plas Benches`	INTEGER,
	`S1D for Prep`	INTEGER,
	`S3D for Prep`	INTEGER,
	`Mic`	INTEGER,
	`Speaker`	INTEGER,
	`S2Bnch for Prep`	INTEGER,
	`M1D for Cl 1/2`	INTEGER,
	`M3D for Cl 1/2`	INTEGER,
	`S3Bnch for Prep`	INTEGER,
	`M2Bnch for Cl 1/2`	INTEGER,
	`M3Bnch for Cl 1/2`	INTEGER,
	`L2D for Cl 3/4/5`	INTEGER,
	`L2Bnch for Cl 3/4/5`	INTEGER,
	`L3Bnch for Cl 3/4/5`	INTEGER,
	`XL1D for Cl 6-10`	INTEGER,
	`XL2D for Cl 6-10`	INTEGER,
	`XL3D for Cl 6-10`	INTEGER,
	`XL1Bnch for Cl 6-10`	INTEGER,
	`XL2Bnch for Cl 6-10`	INTEGER,
	`XL3Bnch for Cl 6-10`	INTEGER,
	`Toy/Game`	INTEGER,
	`M- ExmCh for Cl 1/2`	INTEGER,
	`L- ExmCh for Cl 3/4/5`	INTEGER,
	`XL- ExmCh for Cl 6-10`	INTEGER,
	`S- ExmCh for Cl N/P`	INTEGER,
	`Stove/Cylinder`	INTEGER,
	`Clock`	INTEGER,
	`Bell`	INTEGER,
	`Others`	INTEGER,
	`Tray`	INTEGER,
	`Cups`	INTEGER,
	`Plates`	INTEGER,
	`Scl-ID`	INTEGER,
	FOREIGN KEY(`Scl-ID`) REFERENCES `School Detail`(`Scl-ID`),
	PRIMARY KEY(`Scl-Inven_ID`)
);
CREATE TABLE IF NOT EXISTS `School Stock` (
	`Stk-ID`	INTEGER NOT NULL  AUTO_INCREMENT,
	`Scl-ID`	INTEGER NOT NULL,
	`Txtbook-ID`	INTEGER,
	`Stationary-ID`	INTEGER,
	`All-Type Of Uniforms-ID`	INTEGER,
	FOREIGN KEY(`Scl-ID`) REFERENCES `School Detail`(`Scl-ID`),
	PRIMARY KEY(`Stk-ID`)
);
CREATE TABLE IF NOT EXISTS `Stationary` (
	`Stationary-ID`	INTEGER NOT NULL  AUTO_INCREMENT,
	`Stk-ID`	INTEGER NOT NULL,
	`Pencil`	INTEGER,
	`Eraser`	INTEGER,
	`Sharpner`	INTEGER,
	`Marker-Black`	INTEGER,
	`Marker-Blue`	INTEGER,
	`Marker-Red`	INTEGER,
	`Marker-Green`	INTEGER,
	`Ball Point Pen`	INTEGER,
	`ColorPencil`	INTEGER,
	`RoughPages`	INTEGER,
	`Staplerpins`	INTEGER,
	`ScotchTapes`	INTEGER,
	`Notebooks NrowLines`	INTEGER,
	`Notebooks Brodlines`	INTEGER,
	`Notebooks 4 lins`	INTEGER,
	`Notebooks BigBox`	INTEGER,
	`Notebooks MdmBox`	INTEGER,
	`Notebooks smllbox`	INTEGER,
	`Notebooks Intrleaf 4 lin`	INTEGER,
	`Notebooks Intrleaf 1 lin`	INTEGER,
	FOREIGN KEY(`Stk-ID`) REFERENCES `School Stock`(`Stk-ID`),
	PRIMARY KEY(`Stationary-ID`)
);
CREATE TABLE IF NOT EXISTS `Textbooks` (
	`TxtBook-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`Stk-ID`	INTEGER NOT NULL,
	`Nsy-Sc`	INTEGER,
	`Nsy-M`	INTEGER,
	`Nsy-E`	INTEGER,
	`Nsy-U`	INTEGER,
	`Prp-U`	INTEGER,
	`Prp-E`	INTEGER,
	`Prp-M`	INTEGER,
	`Prp-Sc`	INTEGER,
	`1-E`	INTEGER,
	`1-Sst`	INTEGER,
	`1-M`	INTEGER,
	`1-U`	INTEGER,
	`1-Sc`	INTEGER,
	`2-M`	INTEGER,
	`2-U`	INTEGER,
	`2-Sst`	INTEGER,
	`2-E`	INTEGER,
	`2-Sc`	INTEGER,
	`3-Sst`	INTEGER,
	`3-M`	INTEGER,
	`3-U`	INTEGER,
	`3-E`	INTEGER,
	`3-Sc`	INTEGER,
	`3-Isl`	INTEGER,
	`4-Isl`	INTEGER,
	`4-U`	INTEGER,
	`4-E`	INTEGER,
	`4-M`	INTEGER,
	`4-Sc`	INTEGER,
	`4-Sst`	INTEGER,
	`5-Isl`	INTEGER,
	`5-M`	INTEGER,
	`5-E`	INTEGER,
	`5-U`	INTEGER,
	`5-Sc`	INTEGER,
	`5-Sst`	INTEGER,
	`6-E`	INTEGER,
	`6-M`	INTEGER,
	`6-U`	INTEGER,
	`6_Sc`	INTEGER,
	`6-Hist`	INTEGER,
	`6-Geo`	INTEGER,
	`6-Isl`	INTEGER,
	`7-Hist`	INTEGER,
	`7-Sc`	INTEGER,
	`7-Isl`	INTEGER,
	`7-E`	INTEGER,
	`7-M`	INTEGER,
	`7-U`	INTEGER,
	`8-U`	INTEGER,
	`8-M`	INTEGER,
	`8-Isl`	INTEGER,
	`8-E`	INTEGER,
	`8-Sst`	INTEGER,
	`8-Sc`	INTEGER,
	FOREIGN KEY(`Stk-ID`) REFERENCES `School Stock`(`Stk-ID`),
	PRIMARY KEY(`TxtBook-ID`)
);
CREATE TABLE IF NOT EXISTS `All types of Uniforms` (
	`All-Type of Uniforms-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`Stk-ID`	INTEGER NOT NULL,
	`Boys-Unifrm-ID`	INTEGER,
	`Jrsy-ID`	INTEGER,
	`Grl-Unfrm-ID`	INTEGER,
	`Uniform-ClothMtr-ID`	INTEGER,
	FOREIGN KEY(`Stk-ID`) REFERENCES `School Stock`(`Stk-ID`),
	PRIMARY KEY(`All-Type of Uniforms-ID`)
    
);

ALTER TABLE `School Stock`
ADD FOREIGN KEY (`All-Type Of Uniforms-ID`) REFERENCES `All types of Unifroms`(`All-Type Of Uniforms-ID`) ON DELETE RESTRICT;

CREATE TABLE IF NOT EXISTS `Boys Uniforms` (
	`Boys-Unifrm-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`All-Type of Uniforms-ID`	INTEGER NOT NULL,
	`Ufrm-Boy-Shrt-18`	INTEGER,
	`Ufrm-Boy-Shrt-20`	INTEGER,
	`Ufrm-Boy-Shrt-22`	INTEGER,
	`Ufrm-Boy-Shrt-24`	INTEGER,
	`Ufrm-Boy-Shrt-26`	INTEGER,
	`Ufrm-Boy-Shrt-28`	INTEGER,
	`Ufrm-Boy-Shrt-30`	INTEGER,
	`Ufrm-Boy-Shrt-32`	INTEGER,
	`Ufrm-Boy-Shrt-34`	INTEGER,
	`Ufrm-Boy-Shrt-36`	INTEGER,
	`Ufrm-Boy-Pnt-18`	INTEGER,
	`Ufrm-Boy-Pnt-20`	INTEGER,
	`Ufrm-Boy-Pnt-22`	INTEGER,
	`Ufrm-Boy-Pnt-24`	INTEGER,
	`Ufrm-Boy-Pnt-26`	INTEGER,
	`Ufrm-Boy-Pnt-28`	INTEGER,
	`Ufrm-Boy-Pnt-30`	INTEGER,
	`Ufrm-Boy-Pnt-32`	INTEGER,
	`Ufrm-Boy-Pnt-34`	INTEGER,
	`Ufrm-Boy-Pnt-36`	INTEGER,
	FOREIGN KEY(`All-Type of Uniforms-ID`) REFERENCES `All types of Uniforms`(`All-Type of Uniforms-ID`),
	PRIMARY KEY(`Boys-Unifrm-ID`)
);
CREATE TABLE IF NOT EXISTS `Girls Uniforms` (
	`Grl-Unfrm-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`All-Type of Uniforms-ID`	INTEGER NOT NULL,
	`Unfrm-Grl 18`	INTEGER,
	`Unfrm-Grl 20`	INTEGER,
	`Unfrm-Grl 22`	INTEGER,
	`Unfrm-Grl 24`	INTEGER,
	`Unfrm-Grl 26`	INTEGER,
	`Unfrm-Grl 28`	INTEGER,
	`Unfrm-Grl 30`	INTEGER,
	`Unfrm-Grl 32`	INTEGER,
	`Unfrm-Grl 34`	INTEGER,
	`Unfrm-Grl 36`	INTEGER,
	`Unfrm-Grl 38`	INTEGER,
	FOREIGN KEY(`All-Type of Uniforms-ID`) REFERENCES `All types of Uniforms`(`All-Type of Uniforms-ID`),
	PRIMARY KEY(`Grl-Unfrm-ID`)
);
CREATE TABLE IF NOT EXISTS `Other Uniforms` (
	`othr-Unifm-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`All-Type of Uniforms-ID`	INTEGER NOT NULL,
	`White`	INTEGER,
	`Check`	INTEGER,
	`Blue`	INTEGER,
	`Logo Pocket`	INTEGER,
	`Belt`	INTEGER,
	`Woolen Hat`	INTEGER,
	`Peak-Cap`	INTEGER,
	`Patti/Sash`	INTEGER,
	FOREIGN KEY(`All-Type of Uniforms-ID`) REFERENCES `All types of Uniforms`(`All-Type of Uniforms-ID`),
	PRIMARY KEY(`othr-Unifm-ID`)
);
CREATE TABLE IF NOT EXISTS `Sweaters` (
	`Swtr-ID`	INTEGER NOT NULL AUTO_INCREMENT,
	`All-Type of Uniforms-ID`	INTEGER NOT NULL,
	`S-Jrsy-22`	INTEGER,
	`S-Jrsy-24`	INTEGER,
	`S-Jrsy-26`	INTEGER,
	`S-Jrsy-28`	INTEGER,
	`S-Jrsy-30`	INTEGER,
	`S-Jrsy-32`	INTEGER,
	`S-Jrsy-34`	INTEGER,
	`S-Button22`	INTEGER,
	`S-Button24`	INTEGER,
	`S-Button26`	INTEGER,
	`S-Button28`	INTEGER,
	`S-Button30`	INTEGER,
	`S-Button32`	INTEGER,
	`S-Button34`	INTEGER,
	FOREIGN KEY(`All-Type of Uniforms-ID`) REFERENCES `All types of Uniforms`(`All-Type of Uniforms-ID`),
	PRIMARY KEY(`Swtr-ID`)
);
CREATE TABLE IF NOT EXISTS `Student Financial Profile` (
	`Std-FinPro-ID`	INTEGER AUTO_INCREMENT,
	`Cat-ID`	INTEGER,
	`Monthly-Fee`	INTEGER,
	`Sibling-Discount`	INTEGER,
	`Free-Uniform`	INTEGER,
	`Free-Books`	INTEGER,
	`First-50`	INTEGER,
	`OOS`	INTEGER,
	`Disabled`	VARCHAR(15),
	`Orphan`	INTEGER,
	`Zakat`	INTEGER,
	PRIMARY KEY(`Std-FinPro-ID`)
);
CREATE TABLE IF NOT EXISTS `Fee Category` (
	`Cat-ID`	INTEGER AUTO_INCREMENT,
	`Cat-Amount-Min`	INTEGER,
	`Cat-Amount-Max`	INTEGER,
	PRIMARY KEY(`Cat-ID`)
);
CREATE TABLE IF NOT EXISTS `Student Monthly Fee` (
	`Fee-ID`	INTEGER AUTO_INCREMENT,
	`Cat-ID`	INTEGER,
	`Monthly-Fee`	INTEGER,
	`Fee-Month`	VARCHAR(15),
	`Fee-Year`	INTEGER,
	`Arrears`	INTEGER,
	`Total-Dues`	INTEGER,
	`Amount-Received`	INTEGER,
	`Balance`	INTEGER,
	`Comments`	VARCHAR(30),
	PRIMARY KEY(`Fee-ID`)
);
CREATE TABLE IF NOT EXISTS `Exam` (
	`Exam-ID`	INTEGER AUTO_INCREMENT,
	`Exam-Year`	INTEGER,
	`Exam-Term`	VARCHAR(30),
	`Exam-Month`	VARCHAR(30),
	PRIMARY KEY(`Exam-ID`)
);
CREATE TABLE IF NOT EXISTS `Examination Result` (
	`ExRes-ID`	INTEGER AUTO_INCREMENT,
	`Exam-ID`	INTEGER,
	`Std-ID`	INTEGER,
	`Class`	INTEGER,
	`English`	INTEGER,
	`Urdu`	INTEGER,
	`Math`	INTEGER,
	`Science`	INTEGER,
	`Social-Studies`	INTEGER,
	`Islamiyat`	INTEGER,
	`Computer-Science`	INTEGER,
	`History`	INTEGER,
	`Geography`	INTEGER,
	`Total-Marks`	INTEGER,
	PRIMARY KEY(`ExRes-ID`),
	FOREIGN KEY(`Exam-ID`) REFERENCES `Exam`(`Exam-ID`) ON DELETE RESTRICT
);
CREATE TABLE IF NOT EXISTS `Student` (
	`Std-id`	INTEGER AUTO_INCREMENT,
	`Scl-ID`	INTEGER,
	`Month`	VARCHAR(15),
	`Std-DOA`	VARCHAR(30),
	`Std-rollno`	INTEGER,
	`Std-name`	VARCHAR(63),
	`Std-class`	VARCHAR(30),
	`Std-Dob`	VARCHAR(30),
	`Gender`	VARCHAR(30),
	`Std-DOW`	VARCHAR(30),
	`Std-WReason`	VARCHAR(255),
	`Std-FatherName`	VARCHAR(30),
	`Std-Father-CNIC`	VARCHAR(30),
	`Fee-ID`	INTEGER,
	`Std-Father-Occupation`	VARCHAR(30),
	`Std-Financial-Pro-ID`	INTEGER,
	`Std-Family-Income`	INTEGER,
	`Std-Father-Phone`	VARCHAR(15),
	`Std-Father-Education`	VARCHAR(30),
	`Std-House-Add`	VARCHAR(255),
	`ExRes-ID`	INTEGER,
	`Std-Mother-Name`	VARCHAR(30),
	`Std-Mother-CNIC`	VARCHAR(30),
	`Std-Mother-PhoneNo`	VARCHAR(15),
	`Std-Mother-Education`	VARCHAR(30),
	`Std-Mother-Occupation`	VARCHAR(30),
	PRIMARY KEY(`Std-id`),
	FOREIGN KEY(`Std-Financial-Pro-ID`) REFERENCES `Student Financial Profile`(`Std-FinPro-ID`) ON DELETE RESTRICT,
	FOREIGN KEY(`Fee-ID`) REFERENCES `Fee Category`(`Cat-ID`) ON DELETE RESTRICT,
	FOREIGN KEY(`ExRes-ID`) REFERENCES `Examination Result`(`ExRes-ID`) ON DELETE RESTRICT
);
CREATE TABLE IF NOT EXISTS `Project Type` (
	`Project-ID`	INTEGER AUTO_INCREMENT,
	`Project-Name`	VARCHAR(30),
	`Partner-1`	VARCHAR(30),
	`Partner-2`	VARCHAR(30),
	`Partner-3`	VARCHAR(30),
	PRIMARY KEY(`Project-ID`)
);
CREATE TABLE IF NOT EXISTS `All School Details` (
	`All-SclDet-ID`	INTEGER AUTO_INCREMENT,
	`Scl-ID`	INTEGER,
	FOREIGN KEY(`Scl-ID`) REFERENCES `School Detail`(`Scl-ID`) ON DELETE RESTRICT,
	PRIMARY KEY(`All-SclDet-ID`)
);
CREATE TABLE IF NOT EXISTS `Activity` (
	`Activity-ID`	INTEGER AUTO_INCREMENT,
	`Activity-Name`	VARCHAR(30),
	PRIMARY KEY(`Activity-ID`)
);
CREATE TABLE IF NOT EXISTS `All Pictures` (
	`All-Pictures-ID`	INTEGER AUTO_INCREMENT,
	`Activity-ID`	INTEGER,
	`Scl-ID`	INTEGER,
	`Picture`	INTEGER,
	`Tag-1`	INTEGER,
	`Tag-2`	INTEGER,
	`Tag-3`	INTEGER,
	`Tag-4`	INTEGER,
	`Tag-5`	INTEGER,
	FOREIGN KEY(`Activity-ID`) REFERENCES `Activity`(`Activity-ID`) ON DELETE RESTRICT,
	FOREIGN KEY(`Scl-ID`) REFERENCES `School Detail`(`Scl-ID`) ON DELETE RESTRICT,
	PRIMARY KEY(`All-Pictures-ID`)
);

