using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TableExample
{
    public partial class FloorChart : Form
    {
        public FloorChart()
        {
            InitializeComponent();
        }

        public void Table_Analytics()
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
            

            
        }

        private void TableFunction(object sender, EventArgs e)
        {
            string colorReference;
            Button tableButton = (Button)sender;
            if (tableButton.BackColor==Color.Green)
            {
                colorReference = "Green";
            }
            else if (tableButton.BackColor==Color.Yellow)
            {
                colorReference = "Yellow";
            }
            else
            {
                colorReference = "Red";
            }

            switch (colorReference)
            {
                case "Green":
                    tableButton.BackColor = Color.Yellow;
                    break;
                case "Yellow":
                    tableButton.BackColor = Color.Red;
                    break;
                case "Red":
                    tableButton.BackColor = Color.Green;
                    break;
                default:
                    break;
            }
            TableTimeStamp(tableButton.Name, colorReference);

        }

        public void TableTimeStamp(string tableNumber, string tableStatus)
        {
            if (tableStatus=="Green")
            {
                
            }
            else if (tableStatus=="Yellow")
            {
                
            }
            else if(tableStatus=="Red")
            {

            }
        }

        private void PictureClick(object sender, EventArgs e)
        {
            
        }
    }
}
