/*
  Warnings:

  - Changed the type of `level` on the `Grade` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- DropIndex
DROP INDEX "Grade_level_key";

-- AlterTable
ALTER TABLE "Grade" DROP COLUMN "level",
ADD COLUMN     "level" INTEGER NOT NULL;
