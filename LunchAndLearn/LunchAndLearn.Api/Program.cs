using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Owin.Hosting;

namespace LunchAndLearn.Api
{
    class Program
    {
        static void Main(string[] args)
        {
            var port = Environment.GetEnvironmentVariable("LUNCH_AND_LEARN_PORT") ?? "8080";
            var endpoint = String.Format("http://*:{0}", port);
            using (WebApp.Start<Startup>(endpoint))
            {
                Console.WriteLine("Press [enter] to exit...");
                Console.ReadLine();
            }
        }
    }
}
