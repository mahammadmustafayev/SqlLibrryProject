using Microsoft.SqlServer.Server;
using System.Data.SqlClient;


//namespace FunctionLibrary;


public static class Test
{
    [Microsoft.SqlServer.Server.SqlFunction(DataAccess = DataAccessKind.Read)]
    public static int ReturnsPersonCount()
    {
        string query = $"SELECT COUNT(*) AS 'Person Count' FROM Persons";
        using (SqlConnection connection = new SqlConnection("Server=localhost;Database=PhoneBook;Trusted_Connection=true;TrustServerCertificate=yes;"))
        {
            connection.Open();
            SqlCommand command = new SqlCommand(cmdText: query, connection: connection);
            return (int)command.ExecuteScalar();

        }

    }
}
