

using Microsoft.SqlServer.Server;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class WorkerCount
{
    [Microsoft.SqlServer.Server.SqlFunction]
    public static SqlInt32 ReturnWorkerCount()
    {
        string query = $"SELECT COUNT(*) AS 'Worker Count' FROM Workers";
        using (SqlConnection connection = new SqlConnection("context connection=true"))
        {
            connection.Open();
            SqlCommand command = new SqlCommand(cmdText: query, connection: connection);
            return (int)command.ExecuteScalar();

        }
    }
}
