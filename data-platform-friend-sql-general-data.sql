CREATE TABLE `data_platform_friend_general_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `Friend`                          int(12) NOT NULL,
  `BPBusinessPartnerType`           varchar(2) NOT NULL,
  `FriendBusinessPartnerType`       varchar(2) NOT NULL,
  `FriendIsBlocked`                 tinyint(1) NOT NULL,
  `CreationDate`                    date NOT NULL,
  `CreationTime`                    time NOT NULL,
  `LastChangeDate`                  date NOT NULL,
  `LastChangeTime`                  time NOT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Friend`),

    CONSTRAINT `DPFMFriendGeneralDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMFriendGeneralDataFriend_fk` FOREIGN KEY (`Friend`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
