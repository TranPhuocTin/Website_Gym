using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Website_Gym
{
    public partial class bim_calculator : Page
    {
        private Connect connect;

        protected void Page_Load(object sender, EventArgs e)
        {
            connect = new Connect();
        }

        protected void toggleAdvice_Click(object sender, EventArgs e)
        {
            try
            {
                double height = Convert.ToDouble(Height.Text);
                double weight = Convert.ToDouble(Weight.Text);
                string gender = Gender.SelectedItem.Text;
                string desire = Want.SelectedItem.Text;
                int age = Convert.ToInt32(Age.Text);

                string sql = "INSERT INTO advice (height, weight, gender, desire, age) VALUES (@height, @weight, @gender, @desire, @age)";
                SqlParameter[] parameters = {
                    new SqlParameter("@height", height),
                    new SqlParameter("@weight", weight),
                    new SqlParameter("@gender", gender),
                    new SqlParameter("@desire", desire),
                    new SqlParameter("@age", age)
                };

                int result = connect.executeNonQuery(sql, parameters);

                if (result > 0)
                {
                    //ShowAlert("Data inserted successfully!");
                }
                else
                {
                    //ShowAlert("Failed to insert data.");
                }

                double bmi = BMICalculator.CalculateBMI(height, weight);
                string advice = BMICalculator.GetBMIAdvice(bmi, gender, desire, age);

                statusLabel.Text = "STATUS NOW";
                advice_des.Text = advice;
            }
            catch (Exception ex)
            {
                statusLabel.Text = "An error occurred: " + ex.Message;
            }
        }

        private void ShowAlert(string message)
        {
            string script = $"alert('{message}');";
            ScriptManager.RegisterStartupScript(this, GetType(), "ShowAlert", script, true);
        }
    }
}
