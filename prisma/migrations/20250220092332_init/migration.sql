/*
  Warnings:

  - You are about to drop the column `endDate` on the `Assignment` table. All the data in the column will be lost.
  - You are about to drop the column `gradeID` on the `Student` table. All the data in the column will be lost.
  - Added the required column `dueDate` to the `Assignment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `gradeId` to the `Student` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Student" DROP CONSTRAINT "Student_gradeID_fkey";

-- AlterTable
ALTER TABLE "Assignment" DROP COLUMN "endDate",
ADD COLUMN     "dueDate" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Student" DROP COLUMN "gradeID",
ADD COLUMN     "gradeId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Student" ADD CONSTRAINT "Student_gradeId_fkey" FOREIGN KEY ("gradeId") REFERENCES "Grade"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
