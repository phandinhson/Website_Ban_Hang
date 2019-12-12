using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Website_BanDienThoai_Version1.Migrations
{
    public partial class addContactDate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "ContactDate",
                table: "Contact",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ContactDate",
                table: "Contact");
        }
    }
}
