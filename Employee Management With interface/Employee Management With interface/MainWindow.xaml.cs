using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml;
using System.IO;

namespace Employee_Management_With_interface
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        List<Employee> myEmployees = new List<Employee>();
        public MainWindow()

        {
            InitializeComponent();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            Employee myEmployees2 = new Employee();
            myEmployees2.Id = textBox_EmployeeID.Text;
            myEmployees2.Name = textBox_EmployeeName.Text;
            myEmployees2.Address = textBox_Address.Text;
            myEmployees2.Zipcode = textBox_ZipCode.Text;
            myEmployees2.HireDate = textBox_HireDate.Text;
            myEmployees2.TermDate = textBox_TerminationDate.Text;

            myEmployees.Add(myEmployees2);

            textBox_EmployeeID.Clear();
            textBox_EmployeeName.Clear();
            textBox_Address.Clear();
            textBox_ZipCode.Clear();
            textBox_HireDate.Clear();
            textBox_TerminationDate.Clear();

            mylistView.ItemsSource = null;
            mylistView.ItemsSource = myEmployees;
        }
        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            using (XmlWriter writer = XmlWriter.Create("C:\\Users\\iykef\\OneDrive\\Documents\\Lambogini.xml"))
            {
                writer.WriteStartDocument();
                writer.WriteStartElement("Company");
                foreach (Employee theWorkers in myEmployees)
                {
                    writer.WriteStartElement("Employee");
                    writer.WriteElementString("ID", theWorkers.Id.ToString());
                    writer.WriteElementString("Name", theWorkers.Name.ToString());
                    writer.WriteElementString("Address", theWorkers.Address.ToString());
                    writer.WriteElementString("ZipCode", theWorkers.Zipcode.ToString());
                    writer.WriteElementString("HireDate", theWorkers.HireDate.ToString());
                    writer.WriteElementString("TerminationDate", theWorkers.TermDate.ToString());
                    writer.WriteEndElement();
                }
                writer.WriteEndElement();

                writer.WriteEndDocument();

            }
        }

        private void Window_Initialized(object sender, EventArgs e)
        {
            string fileName = ("C:\\Users\\iykef\\OneDrive\\Documents\\Lambogini.xml");
            if (File.Exists(fileName))
            {
                XmlDocument doc = new XmlDocument();
                doc.Load(fileName);
                XmlNode employeeCat = doc.DocumentElement.SelectSingleNode("/Company");

                foreach (XmlNode child in employeeCat.ChildNodes)
                {
                    string Id = "";
                    string Name = "";
                    string Address = "";
                    string ZipCode = "";
                    string HireDate = "";
                    string TermDate = "";


                    foreach (XmlNode grandChild in child.ChildNodes)
                    {
                        switch (grandChild.Name)
                        {
                            case "ID":
                                {
                                    Id = grandChild.InnerText;
                                    Console.WriteLine(Id);
                                    break;
                                }
                            case "Name":
                                {
                                    Name = grandChild.InnerText;
                                    Console.WriteLine(Name);
                                    break;
                                }

                            case "Address":
                                {
                                    Address = Convert.ToString(grandChild.InnerText);
                                    Console.WriteLine(Address);
                                    break;
                                }
                            case "ZipCode":
                                {
                                    ZipCode = Convert.ToString(grandChild.InnerText);
                                    Console.WriteLine(ZipCode);
                                    break;
                                }
                            case "HireDate":
                                {
                                    HireDate = Convert.ToString(grandChild.InnerText);
                                    Console.WriteLine(HireDate);
                                    break;
                                }
                            case "TerminationDate":
                                {
                                    TermDate = Convert.ToString(grandChild.InnerText);
                                    Console.WriteLine(TermDate);
                                    break;
                                }
                            default:
                                {
                                    break;
                                }
                        }
                    }
                    Employee emp = new Employee(Id, Name, Address, ZipCode, HireDate, TermDate);
                    myEmployees.Add(emp);
                    mylistView.ItemsSource = null;
                    mylistView.ItemsSource = fileName;
                    mylistView.ItemsSource = myEmployees;
                }
            }
            else
            {
                XmlWriter.Create("C:\\Users\\iykef\\OneDrive\\Documents\\Lambogini.xml");
            }
                    }
                }
}