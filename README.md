# note-taking-app
This is a note taking app:
Technologies used:<br>
1.Java<br>
2.Servlet<br>
3.JSP<br>
4.JDBC<br>

<h2>Functionality</h2>
This is web application, which provieds the functionality.<br>
1.Login to the application,If you have not registerd , you need to sign up.<br>
2.After signup it will take to your dash board,where you can see all your notes.<br>
3.You can add new notes,You can delete or edit existing notes.<br>
<h2>Installation Process</h2>
1.Clone this repository<br>
2.imort to your eclipse IDE.<br>
3.Add Appache tomcat runtime<br>
4.Add JSTL jar to your appache tomcat lib directory<br>

Scripts need to run:
CREATE SCHEMA `taskmanagement` ;

CREATE TABLE `taskmanagement`.`user` (
  `userName` VARCHAR(50) NOT NULL,
  `fullname` VARCHAR(50) NULL,
  `email` VARCHAR(50) NULL,
  `password` VARCHAR(50) NULL,
  `presentaddress` VARCHAR(300) NULL,
  `permanentaddress` VARCHAR(300) NULL,
  `adharnumber` VARCHAR(50) NULL,
  PRIMARY KEY (`userName`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `adharnumber_UNIQUE` (`adharnumber` ASC) VISIBLE);



CREATE TABLE `taskmanagement`.`task` (
  `taskdescription` LONGTEXT NULL,
  `creationdate` DATETIME NULL,
  `updatedate` DATETIME NULL,
  `userid` VARCHAR(50) NULL,
  INDEX `userid_idx` (`userid` ASC) VISIBLE,
  CONSTRAINT `useridfk`
    FOREIGN KEY (`userid`)
    REFERENCES `taskmanagement`.`user` (`userName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

<h2>Sample Screens</h2>
![](index.png)
