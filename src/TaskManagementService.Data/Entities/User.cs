namespace TaskManagementService.Data.Entities
{
    public class User
    {
        public long UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Username { get; set; }
        public byte[] Version { get; set; }
    }
}
