using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tabler.Models
{
    public enum Status
    {
        open,
        seated,
        dirty
    }
    public class Table
    {
        public int TableID { get; set; }
        public Status status { get; set; }
        public DateTime timeStamp { get; set; }
        public string section { get; set; }
    }
}