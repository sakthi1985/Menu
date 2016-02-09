<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SampleProject._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Cookie</title>
    
    <script  type="text/javascript">    
    
    function SetCookie(cookieName,cookieValue,nDays) {
    
     alert(cookieName);
     alert(cookieValue);
      alert(nDays); 
        
 var today = new Date();
 var expire = new Date();
 if (nDays==null || nDays==0) nDays=1;
 expire.setTime(today.getTime() + 3600000*24*nDays);
 document.cookie = cookieName+"="+escape(cookieValue)
                 + ";expires="+expire.toGMTString();
}
    </script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
        <asp:Label ID="lblsetcookie" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" OnClick="CheckCookieName" runat="server" Text="Button" />
    
    </div>
   <div>
        <asp:Label ID="lblsetcookie" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" OnClick="CheckCookieName" runat="server" Text="Button" />
    
    </div>
<div>
        <asp:Label ID="lblsetcookie" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" OnClick="CheckCookieName" runat="server" Text="Button" />
    
    </div>
    </form>
</body>
</html>
