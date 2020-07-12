/* 
 * OEML - REST API
 *
 * Lorem2 Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ###Lifecycle Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. ###Lifecycle 2 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackhama. 
 *
 * The version of the OpenAPI document: v1
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using CoinAPI.OMS.API.SDK.Client;
using CoinAPI.OMS.API.SDK.Api;
using CoinAPI.OMS.API.SDK.Model;

namespace CoinAPI.OMS.API.SDK.Test
{
    /// <summary>
    ///  Class for testing OrdersApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class OrdersApiTests : IDisposable
    {
        private OrdersApi instance;

        public OrdersApiTests()
        {
            instance = new OrdersApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of OrdersApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' OrdersApi
            //Assert.IsType(typeof(OrdersApi), instance, "instance is a OrdersApi");
        }

        
        /// <summary>
        /// Test V1OrdersCancelAllPost
        /// </summary>
        [Fact]
        public void V1OrdersCancelAllPostTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //CancelAllOrder cancelAllOrder = null;
            //var response = instance.V1OrdersCancelAllPost(cancelAllOrder);
            //Assert.IsType<MessagesOk> (response, "response is MessagesOk");
        }
        
        /// <summary>
        /// Test V1OrdersCancelPost
        /// </summary>
        [Fact]
        public void V1OrdersCancelPostTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //CancelOrder cancelOrder = null;
            //var response = instance.V1OrdersCancelPost(cancelOrder);
            //Assert.IsType<OrderLive> (response, "response is OrderLive");
        }
        
        /// <summary>
        /// Test V1OrdersGet
        /// </summary>
        [Fact]
        public void V1OrdersGetTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string exchangeId = null;
            //var response = instance.V1OrdersGet(exchangeId);
            //Assert.IsType<List<Order>> (response, "response is List<Order>");
        }
        
        /// <summary>
        /// Test V1OrdersPost
        /// </summary>
        [Fact]
        public void V1OrdersPostTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //NewOrder newOrder = null;
            //var response = instance.V1OrdersPost(newOrder);
            //Assert.IsType<OrderLive> (response, "response is OrderLive");
        }
        
    }

}