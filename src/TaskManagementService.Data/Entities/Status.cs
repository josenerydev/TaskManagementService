namespace TaskManagementService.Data.Entities
{
    public class Status
    {
        public long StatusId { get; set; }
        public string Name { get; set; }
        public int Ordinal { get; set; }
        public byte[] Version { get; set; }
    }
}
