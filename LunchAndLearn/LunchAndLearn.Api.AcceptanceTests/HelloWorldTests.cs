using NUnit.Framework;
using System;
using System.Net.Http;
using Newtonsoft.Json;

namespace LunchAndLearn.Api.AcceptanceTests
{
    [TestFixture]
    public class HelloWorldTests
    {
        const string PORT = "8080";
        const string SERVER = "dt-lunchandlearn-at.cloudapp.net";
        [Test]
        public void ShouldRespondWithHelloWorld() {
            var endpoint = String.Format("http://{0}:{1}", SERVER, PORT);
            using (var client = new HttpClient() { BaseAddress = new Uri(endpoint) }) {
                var res = client.GetAsync("api/helloworld").Result;
                var payload = res.Content.ReadAsStringAsync().Result;
                var obj = JsonConvert.DeserializeObject<string>(payload);
                Assert.AreEqual("Hello, World!", obj);
            }
        }
    }
}
