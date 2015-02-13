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

        private void Form1_Load(object sender, EventArgs e)
        {
            
            

            
        }

        private void TableFunction(object sender, EventArgs e)
        {
            int colorReference;
            Button tableButton = (Button)sender;
            if (tableButton.BackColor==Color.Green)
            {
                colorReference = 1;
            }
            else if (tableButton.BackColor==Color.Yellow)
            {
                colorReference = 2;
            }
            else
            {
                colorReference = 3;
            }

            switch (colorReference)
            {
                case 1:
                    tableButton.BackColor = Color.Yellow;
                    break;
                case 2:
                    tableButton.BackColor = Color.Red;
                    break;
                case 3:
                    tableButton.BackColor = Color.Green;
                    break;
                default:
                    break;
            }

        }
    }
}
