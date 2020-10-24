---
page_type: Sharing and Receiving Application (WPF)
languages:
- C#
- Xaml
products:
- Share-Receive-Application
- WPF
description: "This sample demonstrates a windows presentation foundation (wpf) using C# to share data and receiving data between different applications."
---

# Share-Receive-Application

## Interprocess Communications

The Windows operating system provides mechanisms for facilitating communications and data sharing between applications. Collectively, the activities enabled by these mechanisms are called interprocess communications (IPC).

## Using a File Mapping for IPC
File mapping enables a process to treat the contents of a file as if they were a block of memory in the process's address space. The process can use simple pointer operations to examine and modify the contents of the file. When two or more processes access the same file mapping, each process receives a pointer to memory in its own address space that it can use to read or modify the contents of the file. 

File mapping is quite efficient and also provides operating-system–supported security attributes that can help prevent unauthorized data corruption. File mapping can be used only between processes on a local computer; it cannot be used over a network.



### LINQ to XML
Several mapping factories store their mapping data in XML.

-  XML files are very handy for storing data without the overhead of a database. Using XML files to cache often-used, but seldom changed data such as US state codes, employee types and other validation tables can avoid network roundtrips and speed up your application. In addition, XML files are great for off-line applications where a user needs to add, edit and delete data when they can’t connect to a database.

- LINQ works just as effectively over XML, too. In this article, you will get an introduction to using LINQ to read, insert, update and delete data from an XML file.



# Required NuGet Packages
```
PM> Install-Package MaterialDesignColors
PM> Install-Package MaterialDesignThemes
PM> Install-Package Microsoft.Web.WebView2
PM> Install-Package Microsoft.UI.Xaml
```

# namespace
```
using System.Drawing;
using System.Xml.Linq;
using Microsoft.Win32;
using MaterialDesignThemes.Wpf;
```

### Features 

- The source app `WpfApp1.sln` can share the text, email link and image to the target app `Application2.sln`.
- The source app `WpfApp1.sln` can browse the website via the WebView2. The Microsoft Edge WebView2 control enables you to embed web technologies (HTML, CSS, and JavaScript) in your native applications. The WebView2 control uses Microsoft Edge (Chromium) as the rendering engine to display the web content in native applications. With WebView2, you may embed web code in different parts of your native application, or build the entire native application within a single WebView.
- The target app `Application2.sln` can receive the data, such as text, link and image which is sent from source app `WpfApp1.sln`.

### User Interface of the Application
#### 1. The main page of source application. 
![ShareHome](https://github.com/gn01735570/Share-Receive-Application/ShareHomePage.PNG)

#### 2. The page which is about sharing image of source application. 
![ShareImage](https://github.com/gn01735570/Share-Receive-Application/ShareImage.PNG)

#### 3. The page which is about sharing user data of source application. 
![ShareUserData](https://github.com/gn01735570/Share-Receive-Application/ShareUserData.PNG)

#### 4. The page which is about receiving image of target application. 
![ReceivingImage](https://github.com/gn01735570/Share-Receive-Application/ReceivingImage.PNG)

#### 5. The page which is about receiving user data of target application. 
![ReceivingUserData](https://github.com/gn01735570/Share-Receive-Application/ReceivingUserData.PNG)



### Reference

* Introduction to Microsoft Edge WebView2
   https://docs.microsoft.com/en-us/microsoft-edge/webview2/
   
* Getting started with WebView2 in WPF (Preview)
   https://docs.microsoft.com/en-us/microsoft-edge/webview2/gettingstarted/wpf
   
* Interprocess Communications
   https://docs.microsoft.com/en-us/windows/win32/ipc/interprocess-communications
   
* Desktop Guide for .NET, .NET Core, and .NET Framework
   https://docs.microsoft.com/en-us/dotnet/desktop/?view=netframeworkdesktop-4.8
   
* Create a UI by using XAML Designer
   https://docs.microsoft.com/en-us/visualstudio/xaml-tools/creating-a-ui-by-using-xaml-designer-in-visual-studio?view=vs-2019
   
* Material Design In XAML
   http://materialdesigninxaml.net/home

* LINQ to XML overview
  https://docs.microsoft.com/en-us/dotnet/standard/linq/linq-xml-overview
