using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employee_Management_With_interface
{
    class Employee
    {
        public Employee(string id, string name, string address, string zipCode, string hireDate, string termDate)
        {
            Id = id;
            Name = name;
            Address = address;
            Zipcode = zipCode;
            HireDate = hireDate;
            TermDate = termDate;
        }

        public Employee()
        {
        }

        public string Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Zipcode { get; set; }
        public string HireDate { get; set; }
        public string TermDate { get; set; }

    }
}

