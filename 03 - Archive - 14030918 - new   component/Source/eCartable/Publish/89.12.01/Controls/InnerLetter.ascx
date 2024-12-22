<%@ control language="C#" autoeventwireup="true" inherits="Cartable.UI.Controls.InnerLetter, App_Web_5g5rf4sd" %>
<%@ Register assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI" tagprefix="asp" %>
<style type="text/css">
 
    </style>
<div class="Container-chngpass">
    <div class="title-all-let">
        <div class="text-title-all-let">
            ثبت نامه داخلی</div>
    </div>
    <div class="top-chng-bg-let">
    </div>
    <div class="form-chng-let">
        
        <br />
        <table border="0" cellpadding="5" cellspacing="5" width="98%">
            <tr>
                <td class="font-inner-t" align="right">
                    شماره اندیکاتور :
                </td>
                <td align="right" class="font-inner-t2">
                    <asp:Label runat="server" ID="lblIndicator"></asp:Label>
                </td>
                <td align="right" class="font-inner-t">
                    تاريخ ثبت :
                </td>
                <td align="right" class="font-inner-t2">
                    <asp:Label runat="server" ID="lblRegistrationDate"></asp:Label>
                </td>
                <td align="right" class="font-inner-t">
                    ثبت کننده :
                </td>
                <td align="right" class="font-inner-t2">
                    <asp:Label runat="server" ID="lblUserName"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="6" align="center">
                    <asp:Panel CssClass="font-inner-bold" runat="server" GroupingText="متعلقات" ID="pnlDetails"
                        HorizontalAlign="Center">
                        <table width="100%" border="0">
                            <tr>
                                <td align="right">
                                    ایجاد کننده :
                                </td>
                                <td align="right">
                                    <asp:DropDownList runat="server" ID="cmbFromOrg" Width="350px" Enabled="false">
                                    </asp:DropDownList>
                                    <asp:TextBox runat="server" ID="txtFromStaffer" ReadOnly="true"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    
                    <asp:Panel CssClass="font-inner-bold" runat="server" ID="pnlMemo" 
                        GroupingText="مضمون نامه" Height="226px">
                        <asp:TextBox runat="server" ID="txtMemo" TextMode="MultiLine" Width="99%" 
                            Height="207px"></asp:TextBox>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Panel CssClass="font-inner-bold" runat="server" ID="pnlDescp" GroupingText="ملاحظات کاربری"
                        Width="100%">
                        <asp:TextBox runat="server" ID="txtUserMemo" Width="98%"></asp:TextBox>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Label runat="server" ID="lblMessage" CssClass="message"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:ImageButton runat="server" ID="btnOK" AlternateText="پذيرش" SkinID="btnOk" OnClick="btnOK_Click"
                        OnClientClick="confirmation()" style="height: 16px" />&nbsp;
                    <asp:ImageButton runat="server" ID="btnCancel" AlternateText="انصراف" SkinID="btnCancel"
                        OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    <div class="bot-chng-bg-let">
    </div>
</div>
