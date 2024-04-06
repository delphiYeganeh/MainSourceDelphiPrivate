<%@ page language="C#" autoeventwireup="true" inherits="Cartable.UI.Recommites, App_Web_klpvb3dc" masterpagefile="Horizontal.master" title="اتوماسيون اداري يگانه - ارجاع نامه" %>

<asp:Content runat="server" ID="cntRecommite" ContentPlaceHolderID="plcContent">

<div class="Container-chngpass">
  <div class="title-all-let">
<div class="text-title-all-let">ارجاع</div>
</div>
	<div class="top-chng-bg-let">
	</div>
   <div class="form-chng-let">

        <table border="0" cellpadding="5" width="600" align="right" >
            <tr>
                <td class="erja-text" valign="top" >
                    ارجاع شونده یا شوندگان :
                </td>
                <td align="right">
                    <asp:Panel runat="server" ID="pnlTree" ScrollBars="Auto" Height="150">
                        <asp:TreeView CssClass="text-list-right" runat="server" ID="trvOrgChart" ShowCheckBoxes="All" ShowLines="True" ExpandDepth="2" LineImagesFolder="~/App_Themes/TreeLineImages">
                        </asp:TreeView>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td  class="erja-text">
                    مهلت اقدام :
                </td>
                <td align="right">
                    <asp:TextBox runat="server" ID="txtDeadline"></asp:TextBox>
                </td>
            </tr>
            <tr> <td align="right">
                <td colspan="2" class="erja-text2">
                    <asp:CheckBox runat="server" ID="chkArchived" Text="ارجاع قبلی بایگانی شود ؟" Checked="true" />
                    <asp:CheckBox runat="server" ID="chkReadOnly" Text="فقط خواندنی" />
                </td>
               </td>
            </tr>
            <tr>
                <td class="erja-text" valign="top">
                    متن ارجاع :</td>
                <td>
                    <asp:TextBox runat="server" ID="txtParaph" TextMode="MultiLine" Width="400" Height="100"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rfvParaph" ControlToValidate="txtParaph"
                        Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <td align="right" >
            <td class="erja-text2" colspan="2"><asp:Label runat="server" ID="lblMessage" CssClass="message"></asp:Label></td>
            </td> 
             </tr>
          <tr>
                <td colspan="2">
                    <asp:ImageButton runat="server" ID="btnOK" SkinID="btnOk" OnClick="btnOK_Click" />&nbsp;<asp:ImageButton
                        runat="server" ID="btnCancel" SkinID="btnCancel" OnClick="btnCancel_Click" CausesValidation="false" /></td>
            </tr>
        </table>
</div><div class="bot-chng-bg-let">
	</div>

</div>
</asp:Content>
