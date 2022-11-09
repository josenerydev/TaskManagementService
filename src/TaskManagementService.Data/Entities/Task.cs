namespace TaskManagementService.Data.Entities
{
    public class Task
    {
        private readonly IList<User> _users = new List<User>();

        public long TaskId { get; set; }
        public string Subject { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? DueDate { get; set; }
        public DateTime? CompletedDate { get; set; }
        public Status Status { get; set; }
        public DateTime CreatedDate { get; set; }
        public User CreatedBy { get; set; }

        public IList<User> Users
        {
            get { return _users; }
        }

        public byte[] Version { get; set; }
    }
}
