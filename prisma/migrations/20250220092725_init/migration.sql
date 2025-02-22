/*
  Warnings:

  - Made the column `studentId` on table `Result` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "Result" DROP CONSTRAINT "Result_studentId_fkey";

-- AlterTable
ALTER TABLE "Result" ALTER COLUMN "studentId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Result" ADD CONSTRAINT "Result_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "Student"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
