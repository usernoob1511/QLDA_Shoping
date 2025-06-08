-- AlterTable
ALTER TABLE `customer_order` ADD COLUMN `city` VARCHAR(191) NOT NULL,
    ADD COLUMN `country` VARCHAR(191) NOT NULL,
    ADD COLUMN `orderNotice` VARCHAR(191) NULL;
