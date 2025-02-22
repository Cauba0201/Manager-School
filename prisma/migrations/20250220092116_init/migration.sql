/*
  Warnings:

  - You are about to drop the column `endDate` on the `Exam` table. All the data in the column will be lost.
  - You are about to drop the column `startDate` on the `Exam` table. All the data in the column will be lost.
  - You are about to drop the column `userSex` on the `Student` table. All the data in the column will be lost.
  - Added the required column `endTime` to the `Exam` table without a default value. This is not possible if the table is not empty.
  - Added the required column `startTime` to the `Exam` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sex` to the `Student` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Exam" DROP COLUMN "endDate",
DROP COLUMN "startDate",
ADD COLUMN     "endTime" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "startTime" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Student" DROP COLUMN "userSex",
ADD COLUMN     "sex" "UserSex" NOT NULL;
