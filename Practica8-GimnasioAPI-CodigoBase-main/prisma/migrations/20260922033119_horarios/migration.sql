-- CreateTable
CREATE TABLE `Horarios` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `claseId` INTEGER NOT NULL,
    `dia` VARCHAR(20) NOT NULL,
    `horarioInicio` VARCHAR(5) NOT NULL,
    `cupoMaximo` INTEGER NOT NULL,
    `entrenador` VARCHAR(80) NOT NULL,

    INDEX `Horarios_claseId_idx`(`claseId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Horarios` ADD CONSTRAINT `Horarios_claseId_fkey` FOREIGN KEY (`claseId`) REFERENCES `clases`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
