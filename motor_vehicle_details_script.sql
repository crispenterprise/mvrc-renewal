CREATE TABLE `motor_vehicle_details` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `plate_reg_no` varchar(15) DEFAULT NULL,
  `make` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `engine_no` varchar(25) DEFAULT NULL,
  `chassis_no` varchar(25) DEFAULT NULL,
  `fitness_issue_date` datetime DEFAULT NULL,
  `fitness_expiry_date` datetime DEFAULT NULL,
  `exam_depot` varchar(45) DEFAULT NULL,
  `reg_issue_date` datetime DEFAULT NULL,
  `reg_expiry_date` datetime DEFAULT NULL,
  `insurance_company` varchar(45) DEFAULT NULL,
  `owner_name` varchar(65) DEFAULT NULL,
  `insurance_issue_date` datetime DEFAULT NULL,
  `insurance_expiry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
);

INSERT INTO `genaudit`.`motor_vehicle_details` (`plate_reg_no`, `make`, `model`, `year`, `engine_no`, `chassis_no`, `fitness_issue_date`, `fitness_expiry_date`, `exam_depot`, `reg_issue_date`, `reg_expiry_date`, `insurance_company`, `owner_name`, `insurance_issue_date`, `insurance_expiry_date`) VALUES ('5040GA', 'Honda', 'City', '2012', '7137283212', '7631yue73', '2014-03-01', '2015-03-01', 'Swallowfield Depot - St. Andrew', '2013-04-02', '2014-04-01', 'ICWI', 'DOE, JOHN RICHARD', '2014-02-01', '2015-02-01');
INSERT INTO `genaudit`.`motor_vehicle_details` (`plate_reg_no`, `make`, `model`, `year`, `engine_no`, `chassis_no`, `fitness_issue_date`, `fitness_expiry_date`, `exam_depot`, `reg_issue_date`, `reg_expiry_date`, `insurance_company`, `owner_name`, `insurance_issue_date`, `insurance_expiry_date`) VALUES ('6585FT', 'Toyota', 'Corolla', '2000', '8937428721', '76fvt67632', '2013-12-13', '2014-12-13', 'Swallowfield Depot - St. Andrew', '2013--03-01', '2014-03-01', 'JIIC', 'REID, STACY', '2013-11-02', '2014-11-02');
INSERT INTO `genaudit`.`motor_vehicle_details` (`plate_reg_no`, `make`, `model`, `year`, `engine_no`, `chassis_no`, `fitness_issue_date`, `fitness_expiry_date`, `exam_depot`, `reg_issue_date`, `reg_expiry_date`, `insurance_company`, `owner_name`, `insurance_issue_date`, `insurance_expiry_date`) VALUES ('4130EG', 'Honda', 'Civic', '2001', '1009190212', '487342874', '2013-01-20', '2014-02-20', 'Spanish Town', '2013-05-17', '2014-05-17', 'JIIC', 'WILLIAMS, ASHLEY', '2013-08-01', '2014-08-01');
INSERT INTO `genaudit`.`motor_vehicle_details` (`plate_reg_no`, `make`, `model`, `year`, `engine_no`, `chassis_no`, `fitness_issue_date`, `fitness_expiry_date`, `exam_depot`, `reg_issue_date`, `reg_expiry_date`, `insurance_company`, `owner_name`, `insurance_issue_date`, `insurance_expiry_date`) VALUES ('2198DT', 'Suzuki', 'Swift', '2005', '7832875443', '8943h8924', '2013-09-12', '2014-10-12', 'May Pen', '2013-02-10', '2014-02-10', 'ICWI', 'JONES, JILL', '2013-01-11', '2014-01-11');

