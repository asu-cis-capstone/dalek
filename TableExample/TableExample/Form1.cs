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
        //Flag to change a table on click to Blue for reserved
        bool reserveTableFlag = false;

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
        private void ReserveTable(object sender, EventArgs e)
        {
            reserveTableFlag = true;
        }

        /// <summary>
        /// Method looks at the current color of the button
        /// and changes it progressively Green - Yellow - Red
        /// and calls the method to add a timestamp to the database
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TableFunction(object sender, EventArgs e)
        {

            string colorReference;
            Button tableButton = (Button)sender;
            if (reserveTableFlag==false)
            {
                if (tableButton.BackColor == Color.Green)
                {
                    colorReference = "Green";
                }
                else if (tableButton.BackColor == Color.Yellow)
                {
                    colorReference = "Yellow";
                }
                else if (tableButton.BackColor == Color.Blue)
                {
                    colorReference = "Blue";
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
                    case "Blue":
                        tableButton.BackColor = Color.Yellow;
                        tableButton.ForeColor = Color.Black;
                        break;
                    default:
                        break;
                }

                TableTimeStamp(Convert.ToInt16(tableButton.Text), colorReference);
            }
            else
            {
                tableButton.BackColor = Color.Blue;
                tableButton.ForeColor = Color.White;
                reserveTableFlag = false;
            }
            

           

        }

        public void TableTimeStamp(int tableNumber, string tableStatus)
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
            else if(tableStatus=="Blue")
            {

            }
        }

        private void PictureClick(object sender, EventArgs e)
        {
            
        }
    }
}
