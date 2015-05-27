using NUnit.Framework;
using System;
using System.Net.Http;

namespace LunchAndLearn.Api.AcceptanceTests
{
    [TestFixture]
    public class HelloWorldTests
    {
        const string PORT = "8080";
        const string SERVER = "localhost";
        [Test]
        public void ShouldRespondWithHelloWorld() {
            var endpoint = String.Format("http://{0}:{1}", SERVER, PORT);
            using (var client = new HttpClient() { BaseAddress = new Uri(endpoint) }) {
                var res = client.GetAsync("api/helloworld").Result;
                var payload = res.Content.ReadAsStringAsync();
                Assert.AreEqual("Hello, World!", payload);
            }
        }
    }
}
