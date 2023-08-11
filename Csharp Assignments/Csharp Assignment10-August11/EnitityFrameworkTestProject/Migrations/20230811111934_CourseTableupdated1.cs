using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace EnFrameworkTestProject.Migrations
{
    /// <inheritdoc />
    public partial class CourseTableupdated1 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "CoursesId",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Student_CoursesId",
                table: "Student",
                column: "CoursesId");

            migrationBuilder.AddForeignKey(
                name: "FK_Student_Courses_CoursesId",
                table: "Student",
                column: "CoursesId",
                principalTable: "Courses",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        ///<inheritdoc/>
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Student_Courses_CoursesId",
                table: "Student");

            migrationBuilder.DropIndex(
                name: "IX_Student_CoursesId",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "CoursesId",
                table: "Student");
        }
    }
}
